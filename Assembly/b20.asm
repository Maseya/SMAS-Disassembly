;Super Mario Bros. 3

CODE_208000:        JMP CODE_20A116           ; Entry point of SMB3's game start routine (includes piracy check)

CODE_208003:        JMP CODE_20F000           ;Entry point of SMB3's NMI

CODE_208006:        JMP CODE_20F304           ;Entry point of SMB3's IRQ

DATA_208009:        db $20,$20,$21,$21,$22,$22,$23,$23
                    db $24,$24,$25,$25,$26,$26,$27,$27
                    db $28,$28,$29,$29,$2A,$2A                   

CODE_20801F:        LDA $28                   
CODE_208021:        STA $36                   
CODE_208023:        ASL A                     
CODE_208024:        CLC                       
CODE_208025:        ADC $36                   
CODE_208027:        TAY                       
CODE_208028:        PHB                       
CODE_208029:        LDA #$22                  
CODE_20802B:        PHA                       
CODE_20802C:        PLB                       
CODE_20802D:        LDA.w PNTR_228B5C,y               
CODE_208030:        STA $36                   
CODE_208032:        LDA.w PNTR_228B5C+1,y               
CODE_208035:        STA $37                   
CODE_208037:        LDA.w PNTR_228B5C+2,y               
CODE_20803A:        STA $38                   
CODE_20803C:        PLB                       
CODE_20803D:        LDA #$01                  
CODE_20803F:        STA $1C                   
CODE_208041:        STZ $0154                 
CODE_208044:        LDA $0154                 
CODE_208047:        BPL CODE_208044           
CODE_208049:        STZ $1C                   
CODE_20804B:        CLI                       
CODE_20804C:        RTS                       

CODE_20804D:        JSR CODE_20801F           
CODE_208050:        RTL                       

CODE_208051:        LDA #$1F                  
CODE_208053:        STA $7E3968               
CODE_208057:        LDA #$40                  
CODE_208059:        STA $7E3969               
CODE_20805D:        LDA #$01                  
CODE_20805F:        STA $1503                 
CODE_208062:        STZ $0103                 
CODE_208065:        LDA #$00                  
CODE_208067:        STA $7FFF03               
CODE_20806B:        LDA #$FF                  
CODE_20806D:        STA $001602               
CODE_208071:        STA $001603               
CODE_208075:        LDA #$02                  
CODE_208077:        STA $36                   
CODE_208079:        LDA #$16                  
CODE_20807B:        STA $37                   
CODE_20807D:        INC $0154                 
CODE_208080:        LDA #$81                  
CODE_208082:        STA $4200                 
CODE_208085:        STA $2100                 
CODE_208088:        STA $16                   
CODE_20808A:        JSL CODE_22E0A9           
CODE_20808E:        JSR CODE_20F9EB           
CODE_208091:        LDA #$5C                  
CODE_208093:        STA $00                   
CODE_208095:        STZ $01                   
CODE_208097:        JSR CODE_20FA0A           
CODE_20809A:        LDA #$20                  
CODE_20809C:        STA $0100                 
CODE_20809F:        STA $0101                 
CODE_2080A2:        LDA #$01                  
CODE_2080A4:        STA $02D7                 
CODE_2080A7:        LDA #$15                  ;\
CODE_2080A9:        STA $1202                 ;/Title screen music
CODE_2080AC:        JSR CODE_20B0FE           
CODE_2080AF:        LDA $072B                 
CODE_2080B2:        CMP #$03                  
CODE_2080B4:        BNE CODE_2080B9           
CODE_2080B6:        JMP CODE_20A2D0           

CODE_2080B9:        JSL CODE_29A700           
CODE_2080BD:        STZ $0729                 
CODE_2080C0:        STZ $07E3                 
CODE_2080C3:        STZ $1F2F                 
CODE_2080C6:        LDA #$00                  
CODE_2080C8:        STA $7E396E               
CODE_2080CC:        STA $7E396F               
CODE_2080D0:        LDA #$F8                  
CODE_2080D2:        STA $95                   
CODE_2080D4:        LDA $7E3955               
CODE_2080D8:        INC A                     
CODE_2080D9:        STA $7E3955               
CODE_2080DD:        LDX #$7F                  
CODE_2080DF:        STZ $1D00,x               
CODE_2080E2:        DEX                       
CODE_2080E3:        BPL CODE_2080DF           
CODE_2080E5:        STZ $4200                 
CODE_2080E8:        LDA $1503                 
CODE_2080EB:        BEQ CODE_2080F1           
CODE_2080ED:        JSL CODE_008B63           
CODE_2080F1:        STZ $1503                 
CODE_2080F4:        JSL CODE_22E0A9           
CODE_2080F8:        JSR CODE_20F9EB           
CODE_2080FB:        LDA #$FF                  
CODE_2080FD:        STA $00                   
CODE_2080FF:        STZ $01                   
CODE_208101:        JSR CODE_20FA0A           
CODE_208104:        LDA #$0B                  
CODE_208106:        STA $070B                 
CODE_208109:        LDA #$35                  
CODE_20810B:        STA $070C                 
CODE_20810E:        STZ $070A                 
CODE_208111:        STZ $072C                 
CODE_208114:        STZ $053C                 
CODE_208117:        STZ $0101                 
CODE_20811A:        STZ $0351                 
CODE_20811D:        STZ $02CC                 
CODE_208120:        STZ $02CD                 
CODE_208123:        STZ $02CE                 
CODE_208126:        STZ $02CF                 
CODE_208129:        STZ $0243                 
CODE_20812C:        STZ $02D9                 
CODE_20812F:        STZ $02E0                 
CODE_208132:        STZ $02E1                 
CODE_208135:        LDA #$00                  
CODE_208137:        STA $7E3955               
CODE_20813B:        STA $7FC522               
CODE_20813F:        STA $7FC523               
CODE_208143:        STZ $1CF2                 
CODE_208146:        LDA #$FF                  
CODE_208148:        STA $07BF                 
CODE_20814B:        LDA #$04                  
CODE_20814D:        STA $070E                 
CODE_208150:        STA $069A                 
CODE_208153:        LDA #$28                  
CODE_208155:        STA $05F1                 
CODE_208158:        LDA #$03                  
CODE_20815A:        STA $0699                 
CODE_20815D:        LDA #$C0                  
CODE_20815F:        STA $0100                 
CODE_208162:        LDA #$1F                  
CODE_208164:        LDX $0726                 
CODE_208167:        BEQ CODE_20816C           
CODE_208169:        CLC                       
CODE_20816A:        ADC #$23                  
CODE_20816C:        TAY                       
CODE_20816D:        LDX #$00                  
CODE_20816F:        LDA $1D80,y               
CODE_208172:        STA $0715,x               
CODE_208175:        INY                       
CODE_208176:        INX                       
CODE_208177:        CPX #$03                  
CODE_208179:        BNE CODE_20816F           
CODE_20817B:        LDX $072B                 
CODE_20817E:        DEX                       
CODE_20817F:        LDA $7E3975,x             
CODE_208183:        STA $43,x                 
CODE_208185:        LDA $7E3977,x             
CODE_208189:        STA $45,x                 
CODE_20818B:        LDA $7E3979,x             
CODE_20818F:        STA $47,x                 
CODE_208191:        LDA $7E397B,x             
CODE_208195:        STA $52,x                 
CODE_208197:        LDA #$20                  
CODE_208199:        STA $4D,x                 
CODE_20819B:        DEX                       
CODE_20819C:        BPL CODE_20817F           
CODE_20819E:        STZ $070A                 
CODE_2081A1:        STZ $0728                 
CODE_2081A4:        STZ $20                   
CODE_2081A6:        STZ $9A                   
CODE_2081A8:        STZ $59                   
CODE_2081AA:        STZ $0711                 
CODE_2081AD:        LDA $0103                 
CODE_2081B0:        BEQ CODE_2081B5           
CODE_2081B2:        JMP CODE_208251           

CODE_2081B5:        REP #$20                  
CODE_2081B7:        LDA $7FFB02               
CODE_2081BB:        STA $0736                 
CODE_2081BE:        LDX #$1A                  
CODE_2081C0:        LDA $7FFBBC,x             
CODE_2081C4:        STA $1D80,x               
CODE_2081C7:        DEX                       
CODE_2081C8:        DEX                       
CODE_2081C9:        BPL CODE_2081C0           
CODE_2081CB:        LDX #$3D                  
CODE_2081CD:        LDA $7FFBBC,x             
CODE_2081D1:        STA $1D80,x               
CODE_2081D4:        DEX                       
CODE_2081D5:        DEX                       
CODE_2081D6:        CPX #$21                  
CODE_2081D8:        BNE CODE_2081CD           
CODE_2081DA:        SEP #$20                  
CODE_2081DC:        LDA $7FFB00               
CODE_2081E0:        CMP $7FFF02               
CODE_2081E4:        BEQ CODE_2081E9           
CODE_2081E6:        JMP CODE_20824E           
CODE_2081E9:        LDA $7FFC02               
CODE_2081ED:        STA $7E3971               
CODE_2081F1:        REP #$30                  
CODE_2081F3:        LDX #$0036                
CODE_2081F6:        LDA $7FFB04,x             
CODE_2081FA:        STA $1EED,x               
CODE_2081FD:        DEX                       
CODE_2081FE:        DEX                       
CODE_2081FF:        BPL CODE_2081F6           
CODE_208201:        LDX #$007E                
CODE_208204:        LDA $7FFB3C,x             
CODE_208208:        STA $1D00,x               
CODE_20820B:        DEX                       
CODE_20820C:        DEX                       
CODE_20820D:        BPL CODE_208204           
CODE_20820F:        LDX #$003E                
CODE_208212:        LDA $0727                 
CODE_208215:        AND #$00FF                
CODE_208218:        INC A                     
CODE_208219:        ASL A                     
CODE_20821A:        ASL A                     
CODE_20821B:        ASL A                     
CODE_20821C:        ASL A                     
CODE_20821D:        ASL A                     
CODE_20821E:        ASL A                     
CODE_20821F:        DEC A                     
CODE_208220:        DEC A                     
CODE_208221:        TAY                       
CODE_208222:        LDA $1D00,x               
CODE_208225:        AND $8000,y               
CODE_208228:        STA $1D00,x               
CODE_20822B:        STA $1D40,x               
CODE_20822E:        DEY                       
CODE_20822F:        DEY                       
CODE_208230:        DEX                       
CODE_208231:        DEX                       
CODE_208232:        BPL CODE_208222           
CODE_208234:        SEP #$30                  
CODE_208236:        LDA $0727                 
CODE_208239:        CMP #$02                  
CODE_20823B:        BNE CODE_20824E           
CODE_20823D:        LDY #$04                  
CODE_20823F:        LDA #$80                  
CODE_208241:        STA $1EED,y               
CODE_208244:        LDA #$50                  
CODE_208246:        STA $1EFB,y               
CODE_208249:        LDA #$01                  
CODE_20824B:        STA $1F09,y               
CODE_20824E:        INC $0103                 
CODE_208251:        JSL CODE_22E0A9           
CODE_208255:        JSR CODE_20F9EB           
CODE_208258:        LDA #$FF                  
CODE_20825A:        STA $00                   
CODE_20825C:        STZ $01                   
CODE_20825E:        JSR CODE_20FA0A           
CODE_208261:        LDX $0726                 
CODE_208264:        LDA $0747,x               
CODE_208267:        STA $0429                 
CODE_20826A:        LDY #$00                  
CODE_20826C:        LDA $0727                 ; World 8 submap 3 spotlight enabler
CODE_20826F:        CMP #$07                  ; Check for world 8
CODE_208271:        BNE CODE_20827A           ;
CODE_208273:        LDA $45,x                 ; Check for submap #3, indexed by the current player
CODE_208275:        CMP #$02                  ;
CODE_208277:        BNE CODE_20827A           ;
CODE_208279:        INY                       ;
CODE_20827A:        STY $0598                 ;
CODE_20827D:        STZ $070F                 
CODE_208280:        LDA #$10                  
CODE_208282:        STA $0349                 
CODE_208285:        JSL CODE_29BE21           
CODE_208289:        JSR CODE_209683           
CODE_20828C:        LDA $05F2                 
CODE_20828F:        BNE CODE_20829A           
CODE_208291:        LDX $0726                 
CODE_208294:        LDA $7E3992,x             
CODE_208298:        STA $4B,x                 
CODE_20829A:        LDY $0726                 
CODE_20829D:        LDA $0722,y               
CODE_2082A0:        STA $B7                   
CODE_2082A2:        LDA $0724,y               
CODE_2082A5:        JSL CODE_2097F5           
CODE_2082A9:        STZ $25                   
CODE_2082AB:        LDA $24                   
CODE_2082AD:        STA $23                   
CODE_2082AF:        STZ $1EBF                 
CODE_2082B2:        LDA #$20                  
CODE_2082B4:        STA $0612                 
CODE_2082B7:        LDA #$02                  
CODE_2082B9:        JSR CODE_209610           
CODE_2082BC:        JSL CODE_20F58C           
CODE_2082C0:        JSL CODE_29EAA5           
CODE_2082C4:        JSL CODE_29E766           
CODE_2082C8:        JSL CODE_29E730           
CODE_2082CC:        LDA #$00                  
CODE_2082CE:        JSR CODE_209610           
CODE_2082D1:        JSR CODE_209CC0           
CODE_2082D4:        JSR CODE_2095B9           
CODE_2082D7:        JSL CODE_2A8B4B           
CODE_2082DB:        LDY #$0D                  
CODE_2082DD:        LDA #$00                  
CODE_2082DF:        STA $0500,y               
CODE_2082E2:        DEY                       
CODE_2082E3:        BPL CODE_2082DF           
CODE_2082E5:        LDA $0727                 ;\
CODE_2082E8:        CMP #$08                  ; |
CODE_2082EA:        BNE CODE_2082F1           ; | If you're in world 9 (warp zone)
CODE_2082EC:        LDA #$2D                  ; | Display the "WELCOME TO WARP ZONE" layer 3
CODE_2082EE:        JSR CODE_209610           ;/
CODE_2082F1:        LDY $0726                 
CODE_2082F4:        LDA $0722,y               
CODE_2082F7:        STA $0210                 
CODE_2082FA:        STA $B7                   
CODE_2082FC:        LDA $0724,y               
CODE_2082FF:        STA $0211                 
CODE_208302:        STA $12                   
CODE_208304:        LDA $0729                 
CODE_208307:        BNE CODE_208346           
CODE_208309:        LDA $05F2                 
CODE_20830C:        BNE CODE_208346           
CODE_20830E:        JSL CODE_238000           
CODE_208312:        LDX #$0E                  
CODE_208314:        LDA $0726                 
CODE_208317:        BEQ CODE_20831A           
CODE_208319:        INX                       
CODE_20831A:        TXA                       
CODE_20831B:        JSR CODE_209610           
CODE_20831E:        JSL CODE_238036           
CODE_208322:        LDA #$00                  
CODE_208324:        JSR CODE_209610           
CODE_208327:        LDX $0727                 ;\ data bank: $21
CODE_20832A:        LDY $CA0B,x               ; | Load overworld music
CODE_20832D:        CPX #$04                  ; |
CODE_20832F:        BNE CODE_20833C           ; | If world isn't world 5, branch
CODE_208331:        LDX $0726                 ; |
CODE_208334:        LDA $45,x                 ; | Check current player's submap
CODE_208336:        BEQ CODE_20833C           ; | If in World 5's cloud map
CODE_208338:        LDY #$10                  ; | Load music cloud map music (#$10)
CODE_20833A:        BRA CODE_208343           ; |

CODE_20833C:        LDA $1F55                 ; | If Music box is playing,
CODE_20833F:        BEQ CODE_208343           ; | play music box music (#$0E).
CODE_208341:        LDY #$0E                  ; | 
CODE_208343:        STY $1202                 ;/  Otherwise play regular overworld music.
CODE_208346:        STZ $05F2                 
CODE_208349:        LDA #$EF                  
CODE_20834B:        STA $0216                 
CODE_20834E:        STZ $021A                 
CODE_208351:        STZ $021B                 
CODE_208354:        LDA #$C0                  
CODE_208356:        STA $0100                 
CODE_208359:        JSL CODE_29BD35           
CODE_20835D:        LDA #$00                  
CODE_20835F:        STA $7E3955               
CODE_208363:        JSL CODE_29C794           
CODE_208367:        PHB                       
CODE_208368:        REP #$30                  
CODE_20836A:        LDY #$14A0                
CODE_20836D:        LDX #$8B80                
CODE_208370:        LDA #$001F                
CODE_208373:        MVN $3C00                 
CODE_208376:        SEP #$30                  
CODE_208378:        PLB                       
CODE_208379:        STZ $4200                 
CODE_20837C:        PHD                       
CODE_20837D:        REP #$20                  
CODE_20837F:        LDA #$4300                
CODE_208382:        TCD                       
CODE_208383:        LDA #$2000                
CODE_208386:        STA $2116                 
CODE_208389:        LDX #$80                  
CODE_20838B:        STX $2115                 
CODE_20838E:        LDA #$1801                
CODE_208391:        STA $30                   
CODE_208393:        STA $40                   
CODE_208395:        STA $50                   
CODE_208397:        LDY #$08                  
CODE_208399:        LDX $0727                 
CODE_20839C:        CPX #$04                  
CODE_20839E:        BNE CODE_2083CA           
CODE_2083A0:        LDA #$C000                
CODE_2083A3:        STA $32                   
CODE_2083A5:        LDX #$39                  
CODE_2083A7:        STX $34                   
CODE_2083A9:        LDA #$1000                
CODE_2083AC:        STA $35                   
CODE_2083AE:        STY $420B                 
CODE_2083B1:        LDA #$2800                
CODE_2083B4:        STA $2116                 
CODE_2083B7:        LDA #$B000                
CODE_2083BA:        STA $32                   
CODE_2083BC:        LDX #$31                  
CODE_2083BE:        STX $34                   
CODE_2083C0:        LDA #$3000                
CODE_2083C3:        STA $35                   
CODE_2083C5:        STY $420B                 
CODE_2083C8:        BRA CODE_2083DB           

CODE_2083CA:        LDA #$A000                
CODE_2083CD:        STA $32                   
CODE_2083CF:        LDX #$31                  
CODE_2083D1:        STX $34                   
CODE_2083D3:        LDA #$4000                
CODE_2083D6:        STA $35                   
CODE_2083D8:        STY $420B                 
CODE_2083DB:        LDA #$5800                
CODE_2083DE:        STA $2116                 
CODE_2083E1:        LDA #$8000                
CODE_2083E4:        STA $42                   
CODE_2083E6:        LDX #$38                  
CODE_2083E8:        STX $44                   
CODE_2083EA:        STX $54                   
CODE_2083EC:        LDA #$1000                
CODE_2083EF:        STA $45                   
CODE_2083F1:        LDA #$C000                
CODE_2083F4:        STA $52                   
CODE_2083F6:        LDA #$4000                
CODE_2083F9:        STA $55                   
CODE_2083FB:        LDX #$30                  
CODE_2083FD:        STX $420B                 
CODE_208400:        SEP #$20                  
CODE_208402:        PLD                       
CODE_208403:        LDA #$01                  
CODE_208405:        STA $020E                 
CODE_208408:        LDA #$11                  
CODE_20840A:        STA $020F                 
CODE_20840D:        LDA #$09                  
CODE_20840F:        STA $020C                 
CODE_208412:        STA $2105                 
CODE_208415:        LDA #$17                  
CODE_208417:        STA $0208                 
CODE_20841A:        LDA #$03                  
CODE_20841C:        STA $021E                 
CODE_20841F:        LDA #$80                  
CODE_208421:        STA $4200                 
CODE_208424:        LDA $0598                 
CODE_208427:        BEQ CODE_208452           
CODE_208429:        LDA #$03                  
CODE_20842B:        STA $0291                 
CODE_20842E:        LDA $0729                 
CODE_208431:        BEQ CODE_208452           
CODE_208433:        JSL CODE_2AF9A9           
CODE_208437:        JSL CODE_2AFCAA           
CODE_20843B:        LDA #$0F                  
CODE_20843D:        STA $16                   
CODE_20843F:        LDA $0598                 
CODE_208442:        BEQ CODE_208452           
CODE_208444:        LDA $0729                 
CODE_208447:        BEQ CODE_208452           
CODE_208449:        LDA $028C                 
CODE_20844C:        BNE CODE_208452           
CODE_20844E:        JSL CODE_2AFCAA           
CODE_208452:        JSR CODE_20801F           
CODE_208455:        JSL CODE_22E0A9           
CODE_208459:        JSL CODE_29BD35           
CODE_20845D:        LDA $041C                 
CODE_208460:        BNE CODE_208467           
CODE_208462:        LDA $05F2                 
CODE_208465:        BEQ CODE_208475           
CODE_208467:        JSL CODE_29D8E0           
CODE_20846B:        JSL CODE_2382A3           
CODE_20846F:        JSL CODE_238C1B           
CODE_208473:        BRA CODE_20843B           

CODE_208475:        JSL CODE_2380AB           
CODE_208479:        LDA $0729                 
CODE_20847C:        CMP #$02                  
CODE_20847E:        BCC CODE_208484           
CODE_208480:        JSL CODE_29EAA5           
CODE_208484:        LDY $0729                 
CODE_208487:        CPY #$0D                  
CODE_208489:        BNE CODE_208491           
CODE_20848B:        LDA $59                   
CODE_20848D:        CMP #$03                  
CODE_20848F:        BEQ CODE_2084A1           
CODE_208491:        CPY #$04                  
CODE_208493:        BEQ CODE_2084A1           
CODE_208495:        CPY #$0F                  
CODE_208497:        BCC CODE_20843B           
CODE_208499:        LDX $0726                 
CODE_20849C:        LDA $073F,x               
CODE_20849F:        BEQ CODE_208516           
CODE_2084A1:        JSL CODE_29E2B6           
CODE_2084A5:        JSR CODE_20801F           
CODE_2084A8:        LDA #$80                  
CODE_2084AA:        STA $16                   
CODE_2084AC:        STZ $0293                 
CODE_2084AF:        STZ $020A                 
CODE_2084B2:        STZ $420C                 
CODE_2084B5:        STZ $4200                 
CODE_2084B8:        LDA $7E3955               
CODE_2084BC:        INC A                     
CODE_2084BD:        STA $7E3955               
CODE_2084C1:        LDA $59                   
CODE_2084C3:        BNE CODE_2084CC           
CODE_2084C5:        LDA $0729                 
CODE_2084C8:        CMP #$04                  
CODE_2084CA:        BNE CODE_2084CF           
CODE_2084CC:        JMP CODE_208251           

CODE_2084CF:        LDX $0726                 
CODE_2084D2:        LDA $0210                 
CODE_2084D5:        STA $0722,x               
CODE_2084D8:        LDA $12                   
CODE_2084DA:        STA $0724,x               
CODE_2084DD:        LDA $43,x                 
CODE_2084DF:        STA $7E3975,x             
CODE_2084E3:        LDA $45,x                 
CODE_2084E5:        STA $7E3977,x             
CODE_2084E9:        LDA $47,x                 
CODE_2084EB:        STA $7E3979,x             
CODE_2084EF:        LDA $52,x                 
CODE_2084F1:        STA $7E397B,x             
CODE_2084F5:        STZ $073F,x               
CODE_2084F8:        INX                       
CODE_2084F9:        STX $0726                 
CODE_2084FC:        CPX $072B                 
CODE_2084FF:        BNE CODE_208504           
CODE_208501:        STZ $0726                 
CODE_208504:        LDA $0726                 
CODE_208507:        TAX                       
CODE_208508:        LDA $0736,x               
CODE_20850B:        BMI CODE_2084F8           
CODE_20850D:        STZ $0729                 
CODE_208510:        STZ $078C                 
CODE_208513:        JMP CODE_2080E5           
CODE_208516:        JSR CODE_20801F           
CODE_208519:        LDX $0726                 
CODE_20851C:        LDA $0210                 
CODE_20851F:        STA $0722,x               
CODE_208522:        LDA $12                   
CODE_208524:        STA $0724,x               
CODE_208527:        LDA $43,x                 
CODE_208529:        STA $7E3975,x             
CODE_20852D:        LDA $45,x                 
CODE_20852F:        STA $7E3977,x             
CODE_208533:        LDA $47,x                 
CODE_208535:        STA $7E3979,x             
CODE_208539:        LDA $52,x                 
CODE_20853B:        STA $7E397B,x             
CODE_20853F:        STZ $20                   
CODE_208541:        STZ $104F                 
CODE_208544:        STZ $0100                 
CODE_208547:        STZ $0728                 
CODE_20854A:        JSR CODE_2096AA           
CODE_20854D:        LDA #$03                  
CODE_20854F:        STA $1047                 
CODE_208552:        STA $1049                 
CODE_208555:        STA $104A                 
CODE_208558:        LDA #$0A                  
CODE_20855A:        STA $1048                 
CODE_20855D:        LDA #$C0                  
CODE_20855F:        STA $104B                 
CODE_208562:        LDA #$E0                  
CODE_208564:        STA $104E                 
CODE_208567:        LDA #$FF                  
CODE_208569:        STA $104D                 
CODE_20856C:        LDA #$1F                  
CODE_20856E:        STA $1045                 
CODE_208571:        LDA #$E0                  
CODE_208573:        STA $104C                 
CODE_208576:        LDA #$17                  
CODE_208578:        STA $1046                 
CODE_20857B:        LDX #$03                  
CODE_20857D:        LDA $24                   
CODE_20857F:        AND #$0F                  
CODE_208581:        ASL A                     
CODE_208582:        CLC                       
CODE_208583:        ADC $104B,x               
CODE_208586:        STA $104B,x               
CODE_208589:        LDA $24                   
CODE_20858B:        AND #$10                  
CODE_20858D:        LSR A                     
CODE_20858E:        LSR A                     
CODE_20858F:        ORA $1047,x               
CODE_208592:        STA $1047,x               
CODE_208595:        DEX                       
CODE_208596:        BPL CODE_20857D           
CODE_208598:        LDX #$03                  
CODE_20859A:        LDA $24                   
CODE_20859C:        TAY                       
CODE_20859D:        CLC                       
CODE_20859E:        ADC #$08                  
CODE_2085A0:        STA $00                   
CODE_2085A2:        AND #$10                  
CODE_2085A4:        BEQ CODE_2085A8           
CODE_2085A6:        LDX #$07                  
CODE_2085A8:        STX $1049                 
CODE_2085AB:        TYA                       
CODE_2085AC:        AND #$08                  
CODE_2085AE:        BEQ CODE_2085BA           
CODE_2085B0:        LDA $104D                 
CODE_2085B3:        AND #$1F                  
CODE_2085B5:        ORA #$E0                  
CODE_2085B7:        STA $104D                 
CODE_2085BA:        LDA #$30                  
CODE_2085BC:        STA $1050                 
CODE_2085BF:        LDA #$43                  
CODE_2085C1:        STA $1203                 
CODE_2085C4:        LDA #$80                  ;\
CODE_2085C6:        STA $1202                 ;/Fade out music
CODE_2085C9:        LDY #$01                  
CODE_2085CB:        LDA $0598                 
CODE_2085CE:        BEQ CODE_2085D2           
CODE_2085D0:        LDY #$04                  
CODE_2085D2:        STY $0291                 
CODE_2085D5:        JSL CODE_2AF9A9           
CODE_2085D9:        LDA #$01                  
CODE_2085DB:        STA $20                   
CODE_2085DD:        JSL CODE_2AFA63           
CODE_2085E1:        JSR CODE_20801F           
CODE_2085E4:        LDA $1050                 
CODE_2085E7:        BPL CODE_2085D9           
CODE_2085E9:        JSR CODE_20801F           
CODE_2085EC:        LDA $16                   
CODE_2085EE:        SEC                       
CODE_2085EF:        SBC #$02                  
CODE_2085F1:        STA $16                   
CODE_2085F3:        BPL CODE_2085E9           
CODE_2085F5:        STZ $0285                 
CODE_2085F8:        STZ $0291                 
CODE_2085FB:        STZ $0293                 
CODE_2085FE:        STZ $0200                 
CODE_208601:        STZ $0201                 
CODE_208604:        STZ $0202                 
CODE_208607:        LDA #$10                  
CODE_208609:        STA $0208                 
CODE_20860C:        STA $020F                 
CODE_20860F:        STZ $020A                 
CODE_208612:        LDA #$20                  
CODE_208614:        STA $0205                 
CODE_208617:        LDA #$40                  
CODE_208619:        STA $0206                 
CODE_20861C:        LDA #$80                  
CODE_20861E:        STA $0207                 
CODE_208621:        LDA #$80                  
CODE_208623:        STA $2100                 
CODE_208626:        STA $16                   
CODE_208628:        JSR CODE_20801F           
CODE_20862B:        LDA $001E                 
CODE_20862E:        CMP #$03                  
CODE_208630:        BEQ CODE_20866D           
CODE_208632:        CMP #$09                  
CODE_208634:        BEQ CODE_208680           
CODE_208636:        CMP #$0A                  
CODE_208638:        BEQ CODE_208680           
CODE_20863A:        LDA $00B3                 
CODE_20863D:        CMP #$BC                  ;Check for pipe tile
CODE_20863F:        BNE CODE_208651           ;If it's not, check for other tiles
CODE_208641:        LDA $0727                 ;\
CODE_208644:        CMP #$04                  ; |If we're on a pipe tile, and
CODE_208646:        BNE CODE_208680           ; |If we're in world 5's submap, show "Player Start!"
CODE_208648:        LDX $0726                 ; |
CODE_20864B:        LDA $45,x                 ; |
CODE_20864D:        BNE CODE_208660           ;/
CODE_20864F:        BRA CODE_208680           ;Otherwise just skip Player Start

CODE_208651:        LDA $00B3                 
CODE_208654:        CMP #$50                  ;Check for yellow mushroom house tile
CODE_208656:        BEQ CODE_208680           
CODE_208658:        CMP #$E0                  ;Check for red mushroom house tile
CODE_20865A:        BEQ CODE_208680           
CODE_20865C:        CMP #$E8                  ;Check for spade tile
CODE_20865E:        BEQ CODE_208680           
CODE_208660:        LDA $0598                 
CODE_208663:        BEQ CODE_20866D           
CODE_208665:        LDX #$2C                  
CODE_208667:        JSR CODE_20801F           
CODE_20866A:        DEX                       
CODE_20866B:        BNE CODE_208667           
CODE_20866D:        JSL CODE_2A82EA           
CODE_208671:        JSR CODE_20801F           
CODE_208674:        STZ $4200                 
CODE_208677:        JSL CODE_008B47           
CODE_20867B:        INC $1503                 
CODE_20867E:        BRA CODE_208683           

CODE_208680:        STZ $4200                 
CODE_208683:        LDA #$11                  
CODE_208685:        STA $020F                 
CODE_208688:        LDA $7E3955               
CODE_20868C:        INC A                     
CODE_20868D:        STA $7E3955               
CODE_208691:        STZ $12                   
CODE_208693:        STZ $0210                 
CODE_208696:        STZ $0211                 
CODE_208699:        STZ $13                   
CODE_20869B:        STZ $0216                 
CODE_20869E:        STZ $0217                 
CODE_2086A1:        STZ $23                   
CODE_2086A3:        STZ $24                   
CODE_2086A5:        STZ $25                   
CODE_2086A7:        LDA #$00                  
CODE_2086A9:        STA $7E3966               
CODE_2086AD:        STA $7E3965               
CODE_2086B1:        STA $7E3964               
CODE_2086B5:        STZ $00                   
CODE_2086B7:        LDX #$05                  
CODE_2086B9:        STX $01                   
CODE_2086BB:        LDY #$9D                  
CODE_2086BD:        STA ($00),y               
CODE_2086BF:        DEY                       
CODE_2086C0:        BNE CODE_2086BD           
CODE_2086C2:        STA ($00),y               
CODE_2086C4:        LDA $1D                   
CODE_2086C6:        BEQ CODE_2086F7           
CODE_2086C8:        LDA $B3                   
CODE_2086CA:        CMP #$BC                  
CODE_2086CC:        BEQ CODE_2086F7           
CODE_2086CE:        LDA #$12                  
CODE_2086D0:        STA $070A                 
CODE_2086D3:        JSR CODE_20960F           
CODE_2086D6:        INC $1F26                 
CODE_2086D9:        LDA $1F26                 
CODE_2086DC:        CMP #$0C                  
CODE_2086DE:        BNE CODE_2086E5           
CODE_2086E0:        LDA #$00                  
CODE_2086E2:        STA $1F26                 
CODE_2086E5:        ASL A                     
CODE_2086E6:        TAX                       
CODE_2086E7:        LDA $A381,x               
CODE_2086EA:        STA $2B                   
CODE_2086EC:        LDA $A382,x               
CODE_2086EF:        STA $2C                   
CODE_2086F1:        LDA #$21                  
CODE_2086F3:        STA $2D                   
CODE_2086F5:        BRA CODE_2086FB           

CODE_2086F7:        JSL CODE_29BF84           
CODE_2086FB:        LDA $0727                 
CODE_2086FE:        CMP #$08                  
CODE_208700:        BNE CODE_208710           
CODE_208702:        LDA #$80                  ;\
CODE_208704:        STA $1202                 ;/Fade out music
CODE_208707:        LDA $042A                 
CODE_20870A:        STA $0727                 
CODE_20870D:        JMP CODE_2080B9           

CODE_208710:        LDY $070A                 
CODE_208713:        LDA $C975,y               
CODE_208716:        STA $0739                 
CODE_208719:        CPY #$07                  
CODE_20871B:        BNE CODE_20873C           
CODE_20871D:        LDA $31                   
CODE_20871F:        STA $0420                 
CODE_208722:        LDA $32                   
CODE_208724:        STA $0421                 
CODE_208727:        LDA #$E3                  ;
CODE_208729:        STA $31                   ;Store pointer $27:E5E3 to $31 and $023A
CODE_20872B:        STA $023A                 ;
CODE_20872E:        LDA #$E5                  ;
CODE_208730:        STA $32                   ;
CODE_208732:        STA $023B                 ;
CODE_208735:        LDA #$27                  ;
CODE_208737:        STA $33                   ;
CODE_208739:        STA $023C                 ;
CODE_20873C:        LDY #$7F                  
CODE_20873E:        LDA #$00                  
CODE_208740:        STA $1E04,y               
CODE_208743:        DEY                       
CODE_208744:        BPL CODE_208740           
CODE_208746:        LDY #$80                  
CODE_208748:        LDA #$00                  
CODE_20874A:        STA $1EB8                 
CODE_20874D:        STA $0043,y               
CODE_208750:        DEY                       
CODE_208751:        BNE CODE_20874D           
CODE_208753:        STZ $1CF2                 
CODE_208756:        LDA $070A                 
CODE_208759:        CMP #$10                  
CODE_20875B:        BEQ CODE_208777           
CODE_20875D:        CMP #$11                  
CODE_20875F:        BEQ CODE_208777           
CODE_208761:        JSL CODE_209C00           
CODE_208765:        JSL CODE_22E0A9           
CODE_208769:        JSR CODE_209683           
CODE_20876C:        LDA #$26                  
CODE_20876E:        STA $0612                 
CODE_208771:        STZ $01                   
CODE_208773:        LDA #$FF                  
CODE_208775:        STA $00                   
CODE_208777:        JSR CODE_20FA17           
CODE_20877A:        JSL CODE_22E0A9           
CODE_20877E:        JSL CODE_20AC81           
CODE_208782:        LDA $070A                 
CODE_208785:        CMP #$10                  
CODE_208787:        BEQ CODE_20878C           
CODE_208789:        JMP CODE_2087F0           

CODE_20878C:        LDA #$AE                  
CODE_20878E:        STA $00                   
CODE_208790:        LDA #$02                  
CODE_208792:        STA $01                   
CODE_208794:        JSR CODE_20FA1A           
CODE_208797:        JSL CODE_20AF85           
CODE_20879B:        JSL CODE_239D00           
CODE_20879F:        JSL CODE_239871           
CODE_2087A3:        LDA #$07                  
CODE_2087A5:        JSR CODE_209610           
CODE_2087A8:        LDA #$02                  
CODE_2087AA:        JSR CODE_209610           
CODE_2087AD:        JSL CODE_20F58C           
CODE_2087B1:        JSL CODE_29EAA5           
CODE_2087B5:        JSL CODE_29E766           
CODE_2087B9:        JSL CODE_29E730           
CODE_2087BD:        LDA #$00                  
CODE_2087BF:        JSR CODE_209610           
CODE_2087C2:        LDA #$C0                  
CODE_2087C4:        STA $0100                 
CODE_2087C7:        JSR CODE_20F9EB           
CODE_2087CA:        LDA #$01                  
CODE_2087CC:        STA $021B                 
CODE_2087CF:        LDA #$00                  
CODE_2087D1:        STA $7E3955               
CODE_2087D5:        STA $100B                 
CODE_2087D8:        JSL CODE_29C794           
CODE_2087DC:        JSL CODE_29E29D           
CODE_2087E0:        LDA #$02                  
CODE_2087E2:        STA $0427                 
CODE_2087E5:        JSR CODE_20801F           
CODE_2087E8:        LDA #$C0                  
CODE_2087EA:        STA $0100                 
CODE_2087ED:        JMP CODE_208FA5           

CODE_2087F0:        CMP #$11                  
CODE_2087F2:        BEQ CODE_2087F7           
CODE_2087F4:        JMP CODE_208876           
CODE_2087F7:        JSL CODE_20AF6F           
CODE_2087FB:        LDA #$0E                  
CODE_2087FD:        STA $1028                 
CODE_208800:        STZ $1041                 
CODE_208803:        LDA #$FF                  
CODE_208805:        STA $00                   
CODE_208807:        STZ $01                   
CODE_208809:        JSR CODE_20FA1A           
CODE_20880C:        LDA #$0D                  
CODE_20880E:        JSR CODE_209610           
CODE_208811:        JSL CODE_239DE8           
CODE_208815:        LDA $28                   
CODE_208817:        JSR CODE_209610           
CODE_20881A:        LDA $1041                 
CODE_20881D:        CMP #$03                  
CODE_20881F:        BNE CODE_208811           
CODE_208821:        LDA #$02                  
CODE_208823:        JSR CODE_209610           
CODE_208826:        JSL CODE_20F58C           
CODE_20882A:        JSL CODE_29EAA5           
CODE_20882E:        JSL CODE_29E766           
CODE_208832:        JSL CODE_29E730           
CODE_208836:        LDA #$00                  
CODE_208838:        JSR CODE_209610           
CODE_20883B:        LDA #$C0                  
CODE_20883D:        STA $0100                 
CODE_208840:        JSR CODE_20F9EB           
CODE_208843:        LDA #$01                  
CODE_208845:        STA $021B                 
CODE_208848:        LDA #$00                  
CODE_20884A:        STA $7E3955               
CODE_20884E:        JSL CODE_29C794           
CODE_208852:        LDA #$80                  
CODE_208854:        STA $4200                 
CODE_208857:        JSL CODE_29E29D           
CODE_20885B:        JSR CODE_20801F           
CODE_20885E:        JSL CODE_239E62           
CODE_208862:        JSL CODE_29EAA5           
CODE_208866:        LDA $14                   
CODE_208868:        BEQ CODE_20885B           
CODE_20886A:        LDA #$80                  ;\
CODE_20886C:        STA $1202                 ;/Fade out music
CODE_20886F:        JSL CODE_29E2B6           
CODE_208873:        JMP CODE_208FA5           

CODE_208876:        CMP #$12                  
CODE_208878:        BNE CODE_20887D           
CODE_20887A:        JMP CODE_2094AE           

CODE_20887D:        STZ $0427                 
CODE_208880:        LDX #$C0                  
CODE_208882:        LDY $0425                 
CODE_208885:        BEQ CODE_208889           
CODE_208887:        LDX #$80                  
CODE_208889:        STX $0100                 
CODE_20888C:        LDA #$15                  
CODE_20888E:        STA $0208                 
CODE_208891:        LDA #$02                  
CODE_208893:        STA $0209                 
CODE_208896:        LDA #$02                  
CODE_208898:        STA $0203                 
CODE_20889B:        LDA #$20                  
CODE_20889D:        STA $0204                 
CODE_2088A0:        LDX #$17                  
CODE_2088A2:        LDA $02BF                 
CODE_2088A5:        CMP #$01                  
CODE_2088A7:        BEQ CODE_2088AD           
CODE_2088A9:        CMP #$07                  
CODE_2088AB:        BNE CODE_2088C3           
CODE_2088AD:        STX $0208                 
CODE_2088B0:        JSL CODE_22E134           
CODE_2088B4:        STZ $021A                 
CODE_2088B7:        LDA #$01                  
CODE_2088B9:        STA $021B                 
CODE_2088BC:        LDA #$C0                  
CODE_2088BE:        STA $0100                 
CODE_2088C1:        BRA CODE_2088DD           

CODE_2088C3:        CMP #$06                  
CODE_2088C5:        BNE CODE_2088D0           
CODE_2088C7:        STX $0208                 
CODE_2088CA:        JSL CODE_22E499           
CODE_2088CE:        BRA CODE_2088DD           

CODE_2088D0:        CMP #$05                  
CODE_2088D2:        BNE CODE_2088F6           
CODE_2088D4:        LDX #$17                  
CODE_2088D6:        STX $0208                 
CODE_2088D9:        JSL CODE_22E483           
CODE_2088DD:        LDA #$64                  
CODE_2088DF:        STA $0204                 
CODE_2088E2:        LDA $02BF                 
CODE_2088E5:        CMP #$07                  
CODE_2088E7:        BNE CODE_2088EE           
CODE_2088E9:        LDA #$24                  
CODE_2088EB:        STA $0204                 
CODE_2088EE:        LDA #$13                  
CODE_2088F0:        STA $0209                 
CODE_2088F3:        JMP CODE_208982           

CODE_2088F6:        CMP #$02                  
CODE_2088F8:        BNE CODE_208901           
CODE_2088FA:        JSL CODE_22E2E4           
CODE_2088FE:        JMP CODE_208982           

CODE_208901:        CMP #$0E                  
CODE_208903:        BNE CODE_20890B           
CODE_208905:        JSL CODE_22E5AC           
CODE_208909:        BRA CODE_208982           

CODE_20890B:        CMP #$09                  
CODE_20890D:        BNE CODE_208915           
CODE_20890F:        JSL CODE_22E4D1           
CODE_208913:        BRA CODE_208935           

CODE_208915:        CMP #$0F                  
CODE_208917:        BNE CODE_20891F           
CODE_208919:        JSL CODE_22E64D           
CODE_20891D:        BRA CODE_208935           

CODE_20891F:        CMP #$0A                  
CODE_208921:        BNE CODE_208929           
CODE_208923:        JSL CODE_22E3E5           
CODE_208927:        BRA CODE_208935           

CODE_208929:        CMP #$0C                  
CODE_20892B:        BEQ CODE_208935           
CODE_20892D:        CMP #$0B                  
CODE_20892F:        BNE CODE_208941           
CODE_208931:        JSL CODE_22E4F5           
CODE_208935:        LDA #$11                  
CODE_208937:        STA $0208                 
CODE_20893A:        LDA #$06                  
CODE_20893C:        STA $0209                 
CODE_20893F:        BRA CODE_208982           

CODE_208941:        CMP #$0D                  
CODE_208943:        BNE CODE_208953           
CODE_208945:        JSL CODE_22E518           
CODE_208949:        STZ $021A                 
CODE_20894C:        LDA #$01                  
CODE_20894E:        STA $021B                 
CODE_208951:        BRA CODE_208982           

CODE_208953:        CMP #$03                  
CODE_208955:        BEQ CODE_20896F           
CODE_208957:        CMP #$04                  
CODE_208959:        BEQ CODE_20896F           
CODE_20895B:        CMP #$08                  
CODE_20895D:        BNE CODE_208982           
CODE_20895F:        JSL CODE_22E4B1           
CODE_208963:        LDA #$24                  
CODE_208965:        STA $0204                 
CODE_208968:        LDA #$13                  
CODE_20896A:        STA $0209                 
CODE_20896D:        BRA CODE_208982           

CODE_20896F:        JSL CODE_22E338           
CODE_208973:        LDA #$22                  
CODE_208975:        STA $0204                 
CODE_208978:        LDA #$13                  
CODE_20897A:        STA $0208                 
CODE_20897D:        LDA #$15                  
CODE_20897F:        STA $0209                 
CODE_208982:        LDA #$02                  
CODE_208984:        JSR CODE_209610           
CODE_208987:        JSL CODE_20F58C           
CODE_20898B:        JSL CODE_29EAA5           
CODE_20898F:        JSL CODE_29E766           
CODE_208993:        JSL CODE_29E730           
CODE_208997:        LDA #$00                  
CODE_208999:        JSR CODE_209610           
CODE_20899C:        INC $24                   
CODE_20899E:        INC $24                   
CODE_2089A0:        DEC $23                   
CODE_2089A2:        DEC $23                   
CODE_2089A4:        JSR CODE_209CC0           
CODE_2089A7:        LDA #$40                  
CODE_2089A9:        STA $0612                 
CODE_2089AC:        JSL CODE_2AB48E           
CODE_2089B0:        LDA $070A                 
CODE_2089B3:        CMP #$0F                  
CODE_2089B5:        BNE CODE_2089BA           
CODE_2089B7:        JMP CODE_208A48           

CODE_2089BA:        JSL CODE_29EB42           
CODE_2089BE:        LDX $0726                 
CODE_2089C1:        LDA $073D,x               
CODE_2089C4:        BNE CODE_2089D6           
CODE_2089C6:        LDA $05F2                 
CODE_2089C9:        BNE CODE_2089D9           
CODE_2089CB:        LDA $0414                 
CODE_2089CE:        BNE CODE_2089D9           
CODE_2089D0:        LDA $C976                 
CODE_2089D3:        STA $0739                 
CODE_2089D6:        JMP CODE_208A48           

CODE_2089D9:        LDA $7E398C               
CODE_2089DD:        STA $0210                 
CODE_2089E0:        STA $0212                 
CODE_2089E3:        LDA $7E398B               
CODE_2089E7:        STA $12                   
CODE_2089E9:        STA $0211                 
CODE_2089EC:        LSR A                     
CODE_2089ED:        STA $0213                 
CODE_2089F0:        ROR $0212                 
CODE_2089F3:        LDA $7E398E               
CODE_2089F7:        STA $0216                 
CODE_2089FA:        LDA $7E398D               
CODE_2089FE:        STA $13                   
CODE_208A00:        STA $0217                 
CODE_208A03:        REP #$20                  
CODE_208A05:        LDA $0216                 
CODE_208A08:        LSR A                     
CODE_208A09:        LSR A                     
CODE_208A0A:        STA $0218                 
CODE_208A0D:        LDA $0216                 
CODE_208A10:        SEC                       
CODE_208A11:        SBC $0218                 
CODE_208A14:        STA $0218                 
CODE_208A17:        SEP #$20                  
CODE_208A19:        STZ $05F2                 
CODE_208A1C:        STZ $0414                 
CODE_208A1F:        LDA $0350                 
CODE_208A22:        CMP #$02                  
CODE_208A24:        BEQ CODE_208A2A           
CODE_208A26:        CMP #$23                  
CODE_208A28:        BNE CODE_208A2F           
CODE_208A2A:        LDA #$40                  
CODE_208A2C:        STA $0218                 
CODE_208A2F:        CMP #$03                  
CODE_208A31:        BEQ CODE_208A37           
CODE_208A33:        CMP #$24                  
CODE_208A35:        BNE CODE_208A3D           
CODE_208A37:        STZ $0218                 
CODE_208A3A:        STZ $0219                 
CODE_208A3D:        LDA $034F                 
CODE_208A40:        BEQ CODE_208A48           
CODE_208A42:        LDA $0216                 
CODE_208A45:        STA $0218                 
CODE_208A48:        LDX $0726                 
CODE_208A4B:        LDA $073D,x               
CODE_208A4E:        BEQ CODE_208A53           
CODE_208A50:        JMP CODE_208FFD           

CODE_208A53:        STZ $0101                 
CODE_208A56:        LDA #$00                  
CODE_208A58:        STA $7E3955               
CODE_208A5C:        JSL CODE_29C794           
CODE_208A60:        LDA #$80                  
CODE_208A62:        STA $16                   
CODE_208A64:        LDA $0713                 
CODE_208A67:        BEQ CODE_208A75           
CODE_208A69:        LDA $0425                 
CODE_208A6C:        BNE CODE_208A72           
CODE_208A6E:        LDA #$0F                  
CODE_208A70:        STA $16                   
CODE_208A72:        JMP CODE_208BD5           

CODE_208A75:        STZ $20                   
CODE_208A77:        JSR CODE_2096AA           
CODE_208A7A:        LDA #$FE                  
CODE_208A7C:        STA $105F                 
CODE_208A7F:        LDA $0425                 
CODE_208A82:        BEQ CODE_208A94           
CODE_208A84:        LDY $0376                 
CODE_208A87:        LDA $823C,y               
CODE_208A8A:        STA $2E                   
CODE_208A8C:        LDA $824C,y               
CODE_208A8F:        STA $2F                   
CODE_208A91:        JMP CODE_208A9E           

CODE_208A94:        LDA $8200                 
CODE_208A97:        STA $2E                   
CODE_208A99:        LDA $8201                 
CODE_208A9C:        STA $2F                   
CODE_208A9E:        STZ $1044                 
CODE_208AA1:        LDA $0216                 
CODE_208AA4:        BEQ CODE_208AB0           
CODE_208AA6:        LDA $2E                   
CODE_208AA8:        CLC                       
CODE_208AA9:        ADC #$F0                  
CODE_208AAB:        STA $2E                   
CODE_208AAD:        INC $1044                 
CODE_208AB0:        LDY #$04                  
CODE_208AB2:        LDA $0216                 
CODE_208AB5:        CMP $CDDE,y               
CODE_208AB8:        BEQ CODE_208ABD           
CODE_208ABA:        DEY                       
CODE_208ABB:        BPL CODE_208AB2           
CODE_208ABD:        STY $1060                 
CODE_208AC0:        LDA $CDE3,y               
CODE_208AC3:        STA $1047                 
CODE_208AC6:        STA $1048                 
CODE_208AC9:        STA $1049                 
CODE_208ACC:        STA $104A                 
CODE_208ACF:        LDA $CDE8,y               
CODE_208AD2:        STA $104B                 
CODE_208AD5:        LDA $CDF2,y               
CODE_208AD8:        STA $104D                 
CODE_208ADB:        LDA $CDED,y               
CODE_208ADE:        STA $104C                 
CODE_208AE1:        LDA $CDF7,y               
CODE_208AE4:        STA $104E                 
CODE_208AE7:        STZ $104F                 
CODE_208AEA:        LDA #$03                  
CODE_208AEC:        STA $1045                 
CODE_208AEF:        LDY #$01                  
CODE_208AF1:        STY $1046                 
CODE_208AF4:        LDA #$02                  
CODE_208AF6:        STA $0291                 
CODE_208AF9:        JSL CODE_2AF9A9           
CODE_208AFD:        STZ $0100                 
CODE_208B00:        LDA #$80                  
CODE_208B02:        STA $4200                 
CODE_208B05:        LDA #$15                  
CODE_208B07:        STA $0208                 
CODE_208B0A:        LDA #$02                  
CODE_208B0C:        STA $0209                 
CODE_208B0F:        LDA #$02                  
CODE_208B11:        STA $0203                 
CODE_208B14:        LDA #$20                  
CODE_208B16:        STA $0204                 
CODE_208B19:        LDA $02BF                 
CODE_208B1C:        CMP #$01                  
CODE_208B1E:        BEQ CODE_208B31           
CODE_208B20:        CMP #$06                  
CODE_208B22:        BEQ CODE_208B31           
CODE_208B24:        CMP #$07                  
CODE_208B26:        BEQ CODE_208B31           
CODE_208B28:        CMP #$05                  
CODE_208B2A:        BNE CODE_208B4C           
CODE_208B2C:        LDA #$17                  
CODE_208B2E:        STA $0208                 
CODE_208B31:        LDA #$C0                  
CODE_208B33:        STA $0100                 
CODE_208B36:        LDA #$64                  
CODE_208B38:        STA $0204                 
CODE_208B3B:        LDA #$13                  
CODE_208B3D:        STA $0209                 
CODE_208B40:        LDA $02BF                 
CODE_208B43:        CMP #$07                  
CODE_208B45:        BNE CODE_208B4C           
CODE_208B47:        LDA #$24                  
CODE_208B49:        STA $0204                 
CODE_208B4C:        CMP #$03                  
CODE_208B4E:        BEQ CODE_208B64           
CODE_208B50:        CMP #$04                  
CODE_208B52:        BEQ CODE_208B64           
CODE_208B54:        CMP #$08                  
CODE_208B56:        BNE CODE_208B75           
CODE_208B58:        LDA #$64                  
CODE_208B5A:        STA $0204                 
CODE_208B5D:        LDA #$13                  
CODE_208B5F:        STA $0209                 
CODE_208B62:        BRA CODE_208B93           

CODE_208B64:        LDA #$22                  
CODE_208B66:        STA $0204                 
CODE_208B69:        LDA #$13                  
CODE_208B6B:        STA $0208                 
CODE_208B6E:        LDA #$15                  
CODE_208B70:        STA $0209                 
CODE_208B73:        BRA CODE_208B93           
CODE_208B75:        CMP #$09                  
CODE_208B77:        BEQ CODE_208B89           
CODE_208B79:        CMP #$0A                  
CODE_208B7B:        BEQ CODE_208B89           
CODE_208B7D:        CMP #$0B                  
CODE_208B7F:        BEQ CODE_208B89           
CODE_208B81:        CMP #$0F                  
CODE_208B83:        BEQ CODE_208B89           
CODE_208B85:        CMP #$0C                  
CODE_208B87:        BNE CODE_208B93           
CODE_208B89:        LDA #$11                  
CODE_208B8B:        STA $0208                 
CODE_208B8E:        LDA #$06                  
CODE_208B90:        STA $0209                 
CODE_208B93:        LDA #$80                  
CODE_208B95:        STA $0016                 
CODE_208B98:        JSL CODE_2AFA63           
CODE_208B9C:        LDA $0350                 
CODE_208B9F:        CMP #$01                  
CODE_208BA1:        BEQ CODE_208BAB           
CODE_208BA3:        CMP #$21                  
CODE_208BA5:        BEQ CODE_208BAB           
CODE_208BA7:        CMP #$25                  
CODE_208BA9:        BNE CODE_208BAB           
CODE_208BAB:        JSR CODE_20801F           
CODE_208BAE:        INC $0016                 
CODE_208BB1:        INC $0016                 
CODE_208BB4:        LDA $0016                 
CODE_208BB7:        AND #$0F                  
CODE_208BB9:        STA $0016                 
CODE_208BBC:        BNE CODE_208BAB           
CODE_208BBE:        LDA #$0F                  
CODE_208BC0:        STA $0016                 
CODE_208BC3:        JSR CODE_20801F           
CODE_208BC6:        JSL CODE_2AFA63           
CODE_208BCA:        JSL CODE_239344           
CODE_208BCE:        LDA $1050                 
CODE_208BD1:        CMP #$38                  
CODE_208BD3:        BNE CODE_208BC3           
CODE_208BD5:        STZ $20                   
CODE_208BD7:        LDX #$C0                  
CODE_208BD9:        LDA $0425                 
CODE_208BDC:        BEQ CODE_208BE0           
CODE_208BDE:        LDX #$80                  
CODE_208BE0:        STX $0100                 
CODE_208BE3:        LDA $070A                 
CODE_208BE6:        CMP #$0F                  
CODE_208BE8:        BEQ CODE_208BED           
CODE_208BEA:        JMP CODE_208CC0           

CODE_208BED:        STZ $0211                 
CODE_208BF0:        LDA #$15                  
CODE_208BF2:        STA $0208                 
CODE_208BF5:        LDA #$04                  
CODE_208BF7:        STA $070E                 
CODE_208BFA:        STA $070F                 
CODE_208BFD:        LDA #$50                  
CODE_208BFF:        STA $05E7                 
CODE_208C02:        LDA #$C4                  
CODE_208C04:        STA $05E8                 
CODE_208C07:        LDA #$0B                  
CODE_208C09:        STA $070B                 
CODE_208C0C:        LDA #$35                  
CODE_208C0E:        STA $070C                 
CODE_208C11:        LDA #$A0                  
CODE_208C13:        STA $97                   
CODE_208C15:        LDA #$78                  
CODE_208C17:        STA $95                   
CODE_208C19:        STA $96                   
CODE_208C1B:        STZ $1040                 
CODE_208C1E:        STZ $1028                 
CODE_208C21:        LDA #$0D                  ;\
CODE_208C23:        STA $1202                 ;/Starman music
CODE_208C26:        LDA #$80                  
CODE_208C28:        STA $4200                 
CODE_208C2B:        JSR CODE_20801F           
CODE_208C2E:        JSL CODE_239486           
CODE_208C32:        JSL CODE_29E7AA           
CODE_208C36:        LDA $14                   
CODE_208C38:        BEQ CODE_208C2B           
CODE_208C3A:        LDA $1042                 
CODE_208C3D:        CMP #$04                  
CODE_208C3F:        BNE CODE_208C49           
CODE_208C41:        LDA #$01                  
CODE_208C43:        STA $072D                 
CODE_208C46:        JMP CODE_208C50           
CODE_208C49:        CMP #$07                  
CODE_208C4B:        BNE CODE_208C50           
CODE_208C4D:        JSR $95C1           
CODE_208C50:        STZ $02D4                 
CODE_208C53:        STZ $070F                 
CODE_208C56:        JSL CODE_29E2B6           
CODE_208C5A:        LDA #$80                  
CODE_208C5C:        STA $16                   
CODE_208C5E:        JSR CODE_20801F           
CODE_208C61:        STZ $4200                 
CODE_208C64:        LDA $069A                 
CODE_208C67:        BEQ CODE_208CBA           
CODE_208C69:        LDY #$00                  
CODE_208C6B:        LDA $1042                 
CODE_208C6E:        CMP #$01                  
CODE_208C70:        BNE CODE_208C7B           
CODE_208C72:        LDA #$01                  
CODE_208C74:        STA $073B                 
CODE_208C77:        LDY #$10                  
CODE_208C79:        BNE CODE_208C86           
CODE_208C7B:        CMP #$02                  
CODE_208C7D:        BNE CODE_208C86           
CODE_208C7F:        LDA #$02                  
CODE_208C81:        STA $073B                 
CODE_208C84:        LDY #$11                  
CODE_208C86:        STY $070A                 
CODE_208C89:        STY $1EBF                 
CODE_208C8C:        CPY #$00                  
CODE_208C8E:        BEQ CODE_208CBA           
CODE_208C90:        LDA $7E3955               
CODE_208C94:        INC A                     
CODE_208C95:        STA $7E3955               
CODE_208C99:        LDY #$FD                  
CODE_208C9B:        LDA #$00                  
CODE_208C9D:        STA $0000,y               
CODE_208CA0:        DEY                       
CODE_208CA1:        CPY #$75                  
CODE_208CA3:        BCS CODE_208CA9                   
CODE_208CA5:        CPY #$69                  
CODE_208CA7:        BCS CODE_208CA0                   
CODE_208CA9:        CPY #$FF                  
CODE_208CAB:        BNE CODE_208C9D           
CODE_208CAD:        LDY #$CF                  
CODE_208CAF:        STA $0400,y               
CODE_208CB2:        DEY                       
CODE_208CB3:        CPY #$FF                  
CODE_208CB5:        BNE CODE_208CAF           
CODE_208CB7:        JMP CODE_208753           

CODE_208CBA:        STZ $069A                 
CODE_208CBD:        JMP CODE_208FB1           

CODE_208CC0:        LDA #$10                  
CODE_208CC2:        STA $0349                 
CODE_208CC5:        LDA #$01                  
CODE_208CC7:        LDX $070A                 
CODE_208CCA:        CPX #$07                  
CODE_208CCC:        BNE CODE_208CD0           
CODE_208CCE:        LDA #$11                  
CODE_208CD0:        STA $020F                 
CODE_208CD3:        STZ $034D                 
CODE_208CD6:        LDA $0727                 
CODE_208CD9:        CMP #$06                  
CODE_208CDB:        BEQ CODE_208D0E           
CODE_208CDD:        LDA $0350                 
CODE_208CE0:        CMP #$01                  
CODE_208CE2:        BEQ CODE_208CEC           
CODE_208CE4:        CMP #$21                  
CODE_208CE6:        BEQ CODE_208CEC           
CODE_208CE8:        CMP #$25                  
CODE_208CEA:        BNE CODE_208D0E           
CODE_208CEC:        REP #$20                  
CODE_208CEE:        LDA #$0F42                
CODE_208CF1:        STA $4370                 
CODE_208CF4:        LDA #$F860                
CODE_208CF7:        STA $4372                 
CODE_208CFA:        LDX #$2A                  
CODE_208CFC:        STX $4374                 
CODE_208CFF:        LDX #$7F                  
CODE_208D01:        STX $4377                 
CODE_208D04:        SEP #$20                  
CODE_208D06:        LDA #$01                  
CODE_208D08:        STA $034D                 
CODE_208D0B:        STZ $0249                 
CODE_208D0E:        LDA #$A1                  
CODE_208D10:        STA $4200                 
CODE_208D13:        LDY $070A                 
CODE_208D16:        CPY #$05                  
CODE_208D18:        BNE CODE_208D20           
CODE_208D1A:        LDA $C98E                 
CODE_208D1D:        STA $1E9F                 
CODE_208D20:        LDA $034D                 
CODE_208D23:        BEQ CODE_208D29           
CODE_208D25:        JSL CODE_2A841C           
CODE_208D29:        JSR CODE_20801F           
CODE_208D2C:        LDA $1206                 
CODE_208D2F:        CMP #$04                  
CODE_208D31:        BEQ CODE_208D40           
CODE_208D33:        LDA $1061                 
CODE_208D36:        BEQ CODE_208D43           
CODE_208D38:        CMP $1206                 
CODE_208D3B:        BEQ CODE_208D40           
CODE_208D3D:        STA $1202                 
CODE_208D40:        STZ $1061                 
CODE_208D43:        LDA $05F3                 
CODE_208D46:        BMI CODE_208D8A           
CODE_208D48:        LDY $070A                 
CODE_208D4B:        CPY #$05                  
CODE_208D4D:        BNE CODE_208D71           
CODE_208D4F:        LDA $15                   
CODE_208D51:        AND #$07                  
CODE_208D53:        BNE CODE_208D6C           
CODE_208D55:        INC $1B                   
CODE_208D57:        LDA $1B                   
CODE_208D59:        CMP $1E9F                 
CODE_208D5C:        BNE CODE_208D62           
CODE_208D5E:        LDA #$00                  
CODE_208D60:        STA $1B                   
CODE_208D62:        TAY                       
CODE_208D63:        LDA $C98F,y               
CODE_208D66:        STA $0245                 
CODE_208D69:        STZ $0243                 
CODE_208D6C:        JSR CODE_20A07B           
CODE_208D6F:        BRA CODE_208DCB           

CODE_208D71:        CPY #$07                  
CODE_208D73:        BEQ CODE_208D8A           
CODE_208D75:        LDA $0567                 
CODE_208D78:        BEQ CODE_208D8C           
CODE_208D7A:        BPL CODE_208D84           
CODE_208D7C:        STZ $0243                 
CODE_208D7F:        LDA #$7F                  ;P-Switch duration
CODE_208D81:        STA $0567                 ;
CODE_208D84:        STZ $0245                 
CODE_208D87:        JSR CODE_20A07B           
CODE_208D8A:        BRA CODE_208DCB           

CODE_208D8C:        CPY #$0A                  
CODE_208D8E:        BNE CODE_208DB2           
CODE_208D90:        LDA $1EBF                 
CODE_208D93:        CMP #$15                  
CODE_208D95:        BNE CODE_208DCB           
CODE_208D97:        LDY $0246                 
CODE_208D9A:        LDA $15                   
CODE_208D9C:        AND #$03                  
CODE_208D9E:        BNE CODE_208DAD           
CODE_208DA0:        STZ $0243                 
CODE_208DA3:        INY                       
CODE_208DA4:        CPY #$03                  
CODE_208DA6:        BNE CODE_208DAA           
CODE_208DA8:        LDY #$00                  
CODE_208DAA:        STY $0246                 
CODE_208DAD:        JSR CODE_20A0C6           
CODE_208DB0:        BRA CODE_208DCB           

CODE_208DB2:        LDA $15                   
CODE_208DB4:        AND #$18                  
CODE_208DB6:        LSR A                     
CODE_208DB7:        LSR A                     
CODE_208DB8:        LSR A                     
CODE_208DB9:        TAX                       
CODE_208DBA:        LDA $C9DF,x               
CODE_208DBD:        CMP $0245                 
CODE_208DC0:        BEQ CODE_208DC5           
CODE_208DC2:        STZ $0243                 
CODE_208DC5:        STA $0245                 
CODE_208DC8:        JSR CODE_20A07B           
CODE_208DCB:        LDA $700007               
CODE_208DCF:        BEQ CODE_208DEE           
CODE_208DD1:        LDA $F8                   
CODE_208DD3:        ORA $F9                   
CODE_208DD5:        AND #$20                  
CODE_208DD7:        BEQ CODE_208DDC           
CODE_208DD9:        INC $00EC                 
CODE_208DDC:        LDA $F8                   
CODE_208DDE:        ORA $F9                   
CODE_208DE0:        AND #$10                  
CODE_208DE2:        BNE CODE_208DEE           
CODE_208DE4:        LDA $00EC                 
CODE_208DE7:        AND #$01                  
CODE_208DE9:        BEQ CODE_208DEE           
CODE_208DEB:        BRL CODE_208D20           

CODE_208DEE:        LDA $0349                 
CODE_208DF1:        BEQ CODE_208DF9           
CODE_208DF3:        DEC $0349                 
CODE_208DF6:        JMP CODE_208E54           

CODE_208DF9:        LDA $0571                 
CODE_208DFC:        BNE CODE_208E54           
CODE_208DFE:        LDA $028C                 
CODE_208E01:        CMP #$01                  
CODE_208E03:        BEQ CODE_208E54           
CODE_208E05:        CMP #$03                  
CODE_208E07:        BEQ CODE_208E54           
CODE_208E09:        LDA $1206                 
CODE_208E0C:        CMP #$80                  
CODE_208E0E:        BEQ CODE_208E54           
CODE_208E10:        CMP #$F0                  
CODE_208E12:        BEQ CODE_208E54           
CODE_208E14:        LDA $18                   
CODE_208E16:        AND #$10                  
CODE_208E18:        BEQ CODE_208E54           
CODE_208E1A:        LDA $1EBF                 
CODE_208E1D:        CMP #$16                  
CODE_208E1F:        BEQ CODE_208E54           
CODE_208E21:        CMP #$2D                  
CODE_208E23:        BEQ CODE_208E54           
CODE_208E25:        LDA $02D9                 
CODE_208E28:        BNE CODE_208E54           
CODE_208E2A:        LDA $1061                 
CODE_208E2D:        BNE CODE_208E54           
CODE_208E2F:        LDA $BC                   
CODE_208E31:        CMP #$A4                  
CODE_208E33:        BEQ CODE_208E39           
CODE_208E35:        STA $7FC520               
CODE_208E39:        LDY #$A4                  
CODE_208E3B:        LDA $037A                 
CODE_208E3E:        EOR #$01                  
CODE_208E40:        STA $037A                 
CODE_208E43:        BNE CODE_208E4A           
CODE_208E45:        LDA $7FC520               
CODE_208E49:        TAY                       
CODE_208E4A:        STY $BC                   
CODE_208E4C:        JSL CODE_22E000           
CODE_208E50:        JSL CODE_29EBB7           
CODE_208E54:        LDA $028C                 
CODE_208E57:        CMP #$03                  
CODE_208E59:        BNE CODE_208E60           
CODE_208E5B:        LDA #$01                  
CODE_208E5D:        STA $037A                 
CODE_208E60:        LDA $037A                 
CODE_208E63:        BEQ CODE_208E70           
CODE_208E65:        JSL CODE_22E0A9           
CODE_208E69:        JSL CODE_29EBF7           
CODE_208E6D:        JMP CODE_208D20           

CODE_208E70:        LDA $BF                   
CODE_208E72:        BNE CODE_208E9A           
CODE_208E74:        LDY $25                   
CODE_208E76:        LDA $0425                 
CODE_208E79:        BEQ CODE_208E86           
CODE_208E7B:        LDA $0216                 
CODE_208E7E:        AND #$F0                  
CODE_208E80:        ORA $13                   
CODE_208E82:        STA $B7                   
CODE_208E84:        BRA CODE_208E8D           
CODE_208E86:        LDA $0210                 
CODE_208E89:        STA $B7                   
CODE_208E8B:        LDA $12                   
CODE_208E8D:        JSL CODE_2097F5           
CODE_208E91:        LDA $0425                 
CODE_208E94:        BNE CODE_208E9A           
CODE_208E96:        DEC $24                   
CODE_208E98:        INC $23                   
CODE_208E9A:        LDA $B7                   
CODE_208E9C:        PHA                       
CODE_208E9D:        LDA $0425                 
CODE_208EA0:        BEQ CODE_208EAE           
CODE_208EA2:        LDA $0218                 
CODE_208EA5:        AND #$F0                  
CODE_208EA7:        ORA $0219                 
CODE_208EAA:        STA $B7                   
CODE_208EAC:        BRA CODE_208EB6           

CODE_208EAE:        LDA $0212                 
CODE_208EB1:        STA $B7                   
CODE_208EB3:        LDA $0213                 
CODE_208EB6:        PLA                       
CODE_208EB7:        STA $B7                   
CODE_208EB9:        LDA $0414                 
CODE_208EBC:        BEQ CODE_208F21           
CODE_208EBE:        LDA $034E                 
CODE_208EC1:        BEQ CODE_208F16           
CODE_208EC3:        LDY #$08                  
CODE_208EC5:        LDA $BB                   
CODE_208EC7:        BNE CODE_208ECB           
CODE_208EC9:        LDY #$94                  
CODE_208ECB:        STY $BC                   
CODE_208ECD:        LDA #$01                  
CODE_208ECF:        STA $9C                   
CODE_208ED1:        STZ $0781                 
CODE_208ED4:        STZ $0780                 
CODE_208ED7:        JSR CODE_20801F           
CODE_208EDA:        JMP CODE_208EF5           

CODE_208EDD:        LDA $F8                   
CODE_208EDF:        AND #$20                  
CODE_208EE1:        BEQ CODE_208EE6           
CODE_208EE3:        INC $00EC                 
CODE_208EE6:        LDA $F8                   
CODE_208EE8:        AND #$10                  
CODE_208EEA:        BNE CODE_208EF5           
CODE_208EEC:        LDA $00EC                 
CODE_208EEF:        AND #$01                  
CODE_208EF1:        BEQ CODE_208EF5           
CODE_208EF3:        BRA CODE_208ED7           

CODE_208EF5:        JSL CODE_22E0A9           
CODE_208EF9:        JSL CODE_20E237           
CODE_208EFD:        JSL CODE_278FC1           
CODE_208F01:        JSL CODE_27BE7E           
CODE_208F05:        JSL CODE_27B299           
CODE_208F09:        JSL CODE_27DC9E           
CODE_208F0D:        LDA $034E                 
CODE_208F10:        CMP #$20                  
CODE_208F12:        BCC CODE_208ED7           
CODE_208F14:        STZ $9C                   
CODE_208F16:        STZ $034E                 
CODE_208F19:        JSL CODE_29C794           
CODE_208F1D:        JML CODE_29DFAD           

CODE_208F21:        JSL CODE_22E0A9           
CODE_208F25:        JSL CODE_209D5A           
CODE_208F29:        STZ $0781                 
CODE_208F2C:        STZ $0780                 
CODE_208F2F:        JSL CODE_23BFA7           
CODE_208F33:        LDA $BF                   
CODE_208F35:        CMP #$03                  
CODE_208F37:        BEQ CODE_208F52           
CODE_208F39:        JSL CODE_278FC1           
CODE_208F3D:        JSL CODE_27BE7E           
CODE_208F41:        JSL CODE_27B299           
CODE_208F45:        JSL CODE_27DC9E           
CODE_208F49:        LDA $0580                 
CODE_208F4C:        BEQ CODE_208F52           
CODE_208F4E:        JSL CODE_278500           
CODE_208F52:        LDA $14                   
CODE_208F54:        BEQ CODE_208F61           
CODE_208F56:        LDX $0726                 
CODE_208F59:        LDA $BB                   
CODE_208F5B:        STA $0747,x               
CODE_208F5E:        STZ $07BE                 
CODE_208F61:        JSL CODE_278000           
CODE_208F65:        LDA $0380                 
CODE_208F68:        CMP #$FF                  
CODE_208F6A:        BNE CODE_208F8C           
CODE_208F6C:        LDA $03EE                 
CODE_208F6F:        BNE CODE_208F8C           
CODE_208F71:        LDA $037B                 
CODE_208F74:        BNE CODE_208F8C           
CODE_208F76:        LDA $28                   
CODE_208F78:        BNE CODE_208F8C           
CODE_208F7A:        LDA $041C                 
CODE_208F7D:        BNE CODE_208F88           
CODE_208F7F:        JSL CODE_29EAA5           
CODE_208F83:        LDA $05F2                 
CODE_208F86:        BEQ CODE_208F92           
CODE_208F88:        JSL CODE_29D8E0           
CODE_208F8C:        LDA #$00                  
CODE_208F8E:        STA $7E3954               
CODE_208F92:        STZ $037B                 
CODE_208F95:        LDA $14                   
CODE_208F97:        BEQ CODE_208FFA           
CODE_208F99:        LDX $0726                 
CODE_208F9C:        LDA #$01                  
CODE_208F9E:        STA $074A,x               
CODE_208FA1:        JSL CODE_29E2B6           
CODE_208FA5:        LDA #$80                  
CODE_208FA7:        STA $16                   
CODE_208FA9:        LDA #$80                  ;\
CODE_208FAB:        STA $1202                 ;/Fade out music
CODE_208FAE:        JSR CODE_20801F           
CODE_208FB1:        STZ $0728                 
CODE_208FB4:        STZ $4200                 
CODE_208FB7:        LDX $0726                 
CODE_208FBA:        LDA $073D,x               
CODE_208FBD:        BEQ CODE_208FD0           
CODE_208FBF:        LDA $0713                 
CODE_208FC2:        BNE CODE_208FD0           
CODE_208FC4:        LDA $7E3955               
CODE_208FC8:        INC A                     
CODE_208FC9:        STA $7E3955               
CODE_208FCD:        JMP CODE_208691           

CODE_208FD0:        LDY #$06                  
CODE_208FD2:        JSR CODE_20982D           
CODE_208FD5:        STZ $1CF2                 
CODE_208FD8:        LDA #$80                  
CODE_208FDA:        STA $1202                 ;\
CODE_208FDD:        LDA $0713                 ;/Fade out music
CODE_208FE0:        BNE CODE_208FF3           
CODE_208FE2:        LDA $078E                 
CODE_208FE5:        BEQ CODE_208FF3           
CODE_208FE7:        LDA #$A8                  
CODE_208FE9:        STA $FF                   
CODE_208FEB:        LDA #$20                  
CODE_208FED:        STA $0100                 
CODE_208FF0:        JMP CODE_20C617           

CODE_208FF3:        LDA #$28                  
CODE_208FF5:        STA $FF                   
CODE_208FF7:        JMP CODE_2090FA           

CODE_208FFA:        JMP CODE_208D20           

CODE_208FFD:        LDA #$C0                  
CODE_208FFF:        STA $0100                 
CODE_209002:        LDA #$00                  
CODE_209004:        STA $0101                 
CODE_209007:        STZ $0728                 
CODE_20900A:        STZ $14                   
CODE_20900C:        JSL CODE_29C6FA           
CODE_209010:        LDA #$00                  
CODE_209012:        STA $7E3955               
CODE_209016:        JSL CODE_29C794           
CODE_20901A:        LDA #$80                  
CODE_20901C:        STA $2100                 
CODE_20901F:        STZ $4200                 
CODE_209022:        REP #$20                  
CODE_209024:        LDX #$80                  
CODE_209026:        STX $2115                 
CODE_209029:        LDA #$2800                
CODE_20902C:        STA $2116                 
CODE_20902F:        LDA #$1801                
CODE_209032:        STA $4300                 
CODE_209035:        STA $4310                 
CODE_209038:        STA $4320                 
CODE_20903B:        LDA #$B000                
CODE_20903E:        STA $4302                 
CODE_209041:        LDA #$8000                
CODE_209044:        STA $4312                 
CODE_209047:        LDA #$8800                
CODE_20904A:        STA $4322                 
CODE_20904D:        LDX #$33                  
CODE_20904F:        STX $4304                 
CODE_209052:        LDX #$39                  
CODE_209054:        STX $4314                 
CODE_209057:        LDX #$32                  
CODE_209059:        STX $4324                 
CODE_20905C:        LDA #$1000                
CODE_20905F:        STA $4305                 
CODE_209062:        LDA #$4000                
CODE_209065:        STA $4315                 
CODE_209068:        LDA #$0800                
CODE_20906B:        STA $4325                 
CODE_20906E:        LDX #$01                  
CODE_209070:        STX $420B                 
CODE_209073:        LDA #$6000                
CODE_209076:        STA $2116                 
CODE_209079:        INX                       
CODE_20907A:        STX $420B                 
CODE_20907D:        LDA #$3400                
CODE_209080:        STA $2116                 
CODE_209083:        LDX #$04                  
CODE_209085:        STX $420B                 
CODE_209088:        SEP #$20                  
CODE_20908A:        JSL CODE_29E29D           
CODE_20908E:        JSR CODE_20801F           
CODE_209091:        JSL CODE_29C280           
CODE_209095:        LDA $14                   
CODE_209097:        BEQ CODE_20908E           
CODE_209099:        LDA #$80                  ;\
CODE_20909B:        STA $1202                 ;/Fade out music
CODE_20909E:        LDA #$03                  
CODE_2090A0:        STA $020D                 
CODE_2090A3:        JSR CODE_20801F           
CODE_2090A6:        LDA $0727                 
CODE_2090A9:        CMP #$06                  
CODE_2090AB:        BNE CODE_2090B6           
CODE_2090AD:        LDA $020D                 
CODE_2090B0:        CLC                       
CODE_2090B1:        ADC #$10                  
CODE_2090B3:        STA $020D                 
CODE_2090B6:        DEC $16                   
CODE_2090B8:        BPL CODE_2090A3           
CODE_2090BA:        LDA #$80                  
CODE_2090BC:        STA $16                   
CODE_2090BE:        STZ $020D                 
CODE_2090C1:        LDY #$06                  
CODE_2090C3:        JSR CODE_20982D           
CODE_2090C6:        LDX $072B                 
CODE_2090C9:        DEX                       
CODE_2090CA:        STZ $073D,x               
CODE_2090CD:        STZ $0713                 
CODE_2090D0:        STZ $0722,x               
CODE_2090D3:        STZ $0724,x               
CODE_2090D6:        DEX                       
CODE_2090D7:        BPL CODE_2090CA           
CODE_2090D9:        LDX $0726                 
CODE_2090DC:        LDA #$1F                  
CODE_2090DE:        CPX #$00                  
CODE_2090E0:        BEQ CODE_2090E5           
CODE_2090E2:        CLC                       
CODE_2090E3:        ADC #$23                  
CODE_2090E5:        TAY                       
CODE_2090E6:        LDX #$00                  
CODE_2090E8:        LDA $0715,x               
CODE_2090EB:        STA $1D80,y               
CODE_2090EE:        INY                       
CODE_2090EF:        INX                       
CODE_2090F0:        CPX #$03                  
CODE_2090F2:        BNE CODE_2090E8           
CODE_2090F4:        INC $0727                 
CODE_2090F7:        JMP CODE_2080B9           

CODE_2090FA:        LDA #$C0                  
CODE_2090FC:        STA $0100                 
CODE_2090FF:        LDA #$00                  
CODE_209101:        STA $0101                 
CODE_209104:        LDX $0726                 
CODE_209107:        LDA #$1F                  
CODE_209109:        CPX #$00                  
CODE_20910B:        BEQ CODE_209110           
CODE_20910D:        CLC                       
CODE_20910E:        ADC #$23                  
CODE_209110:        TAY                       
CODE_209111:        LDX #$00                  
CODE_209113:        LDA $0715,x               
CODE_209116:        STA $1D80,y               
CODE_209119:        INY                       
CODE_20911A:        INX                       
CODE_20911B:        CPX #$03                  
CODE_20911D:        BNE CODE_209113           
CODE_20911F:        LDA $1F55                 
CODE_209122:        BEQ CODE_209127           
CODE_209124:        DEC $1F55                 
CODE_209127:        LDY #$06                  
CODE_209129:        LDA $0713                 
CODE_20912C:        BNE CODE_209185           
CODE_20912E:        LDA $070A                 
CODE_209131:        CMP #$0F                  
CODE_209133:        BCS CODE_20917D                   
CODE_209135:        CMP #$07                  
CODE_209137:        BEQ CODE_20917D           
CODE_209139:        LDX $0726                 
CODE_20913C:        LDA $7E397D,x             
CODE_209140:        STA $7E396A               
CODE_209144:        LDA $7E397F,x             
CODE_209148:        STA $7E396B               
CODE_20914C:        LDA $7E3981,x             
CODE_209150:        STA $7E396C               
CODE_209154:        LDA $7E3975,x             
CODE_209158:        STA $7E397D,x             
CODE_20915C:        LDA $7E3977,x             
CODE_209160:        STA $7E397F,x             
CODE_209164:        LDA $7E3979,x             
CODE_209168:        STA $7E3981,x             
CODE_20916C:        LDA $0722,x               
CODE_20916F:        STA $7E3985,x             
CODE_209173:        LDA $0724,x               
CODE_209176:        STA $7E3987,x             
CODE_20917A:        JMP CODE_20919F           

CODE_20917D:        LDA #$01                  
CODE_20917F:        STA $7FFF03               
CODE_209183:        BRA CODE_20919F           
CODE_209185:        LDY #$02                  
CODE_209187:        STZ $0713                 
CODE_20918A:        STZ $07E3                 
CODE_20918D:        LDX $0726                 
CODE_209190:        LDA #$01                  
CODE_209192:        STA $073F,x               
CODE_209195:        LDA $078C                 
CODE_209198:        BNE CODE_20919F           
CODE_20919A:        DEC $0736,x               
CODE_20919D:        BMI CODE_2091AA           
CODE_20919F:        LDA #$80                  ;\
CODE_2091A1:        STA $1202                 ;/Fade out music
CODE_2091A4:        STY $0729                 
CODE_2091A7:        JMP CODE_2080E5           

CODE_2091AA:        LDA #$01                  
CODE_2091AC:        STA $005A,x               
CODE_2091AF:        STZ $070A                 
CODE_2091B2:        STZ $20                   
CODE_2091B4:        STZ $59                   
CODE_2091B6:        STZ $0711                 
CODE_2091B9:        LDA #$58                  
CODE_2091BB:        STA $1DCB                 
CODE_2091BE:        STZ $034D                 
CODE_2091C1:        STZ $4200                 
CODE_2091C4:        JSL CODE_22E0A9           
CODE_2091C8:        JSR CODE_20F9EB           
CODE_2091CB:        LDA #$FF                  
CODE_2091CD:        STA $00                   
CODE_2091CF:        STZ $01                   
CODE_2091D1:        JSR CODE_20FA0A           
CODE_2091D4:        LDA #$80                  
CODE_2091D6:        STA $16                   
CODE_2091D8:        STA $2100                 
CODE_2091DB:        LDA $0728                 
CODE_2091DE:        BNE CODE_2091EA           
CODE_2091E0:        LDA #$0A                  ;\
CODE_2091E2:        STA $1202                 ;/Game over music
CODE_2091E5:        LDA #$A0                  
CODE_2091E7:        STA $02D8                 
CODE_2091EA:        REP #$20                  
CODE_2091EC:        LDA #$2000                
CODE_2091EF:        STA $2116                 
CODE_2091F2:        LDX #$80                  
CODE_2091F4:        STX $2115                 
CODE_2091F7:        LDA #$1801                
CODE_2091FA:        STA $4300                 
CODE_2091FD:        STA $4310                 
CODE_209200:        STA $4320                 
CODE_209203:        LDY #$01                  
CODE_209205:        LDX $0727                 
CODE_209208:        CPX #$04                  
CODE_20920A:        BNE CODE_20923C           
CODE_20920C:        LDA #$C000                
CODE_20920F:        STA $4302                 
CODE_209212:        LDX #$39                  
CODE_209214:        STX $4304                 
CODE_209217:        LDA #$1000                
CODE_20921A:        STA $4305                 
CODE_20921D:        STY $420B                 
CODE_209220:        LDA #$2800                
CODE_209223:        STA $2116                 
CODE_209226:        LDA #$B000                
CODE_209229:        STA $4302                 
CODE_20922C:        LDX #$31                  
CODE_20922E:        STX $4304                 
CODE_209231:        LDA #$1000                
CODE_209234:        STA $4305                 
CODE_209237:        STY $420B                 
CODE_20923A:        BRA CODE_209250           
CODE_20923C:        LDA #$A000                
CODE_20923F:        STA $4302                 
CODE_209242:        LDX #$31                  
CODE_209244:        STX $4304                 
CODE_209247:        LDA #$2000                
CODE_20924A:        STA $4305                 
CODE_20924D:        STY $420B                 
CODE_209250:        LDA #$C000                
CODE_209253:        STA $4312                 
CODE_209256:        LDA #$8000                
CODE_209259:        STA $4322                 
CODE_20925C:        LDX #$38                  
CODE_20925E:        STX $4314                 
CODE_209261:        STX $4324                 
CODE_209264:        LDA #$4000                
CODE_209267:        STA $4315                 
CODE_20926A:        LDA #$1000                
CODE_20926D:        STA $4325                 
CODE_209270:        LDA #$6000                
CODE_209273:        STA $2116                 
CODE_209276:        LDX #$02                  
CODE_209278:        STX $420B                 
CODE_20927B:        LDA #$5800                
CODE_20927E:        STA $2116                 
CODE_209281:        LDX #$04                  
CODE_209283:        STX $420B                 
CODE_209286:        REP #$10                  
CODE_209288:        PHB                       
CODE_209289:        LDX #$BE00                
CODE_20928C:        LDY #$1300                
CODE_20928F:        LDA #$01FF                
CODE_209292:        MVN $1C00                 
CODE_209295:        PLB                       
CODE_209296:        SEP #$30                  
CODE_209298:        LDX $072B                 
CODE_20929B:        DEX                       
CODE_20929C:        LDA $7E3975,x             
CODE_2092A0:        STA $43,x                 
CODE_2092A2:        LDA $7E3977,x             
CODE_2092A6:        STA $45,x                 
CODE_2092A8:        LDA $7E3979,x             
CODE_2092AC:        STA $47,x                 
CODE_2092AE:        LDA $7E397B,x             
CODE_2092B2:        STA $52,x                 
CODE_2092B4:        LDA $7E3992,x             
CODE_2092B8:        STA $4B,x                 
CODE_2092BA:        DEX                       
CODE_2092BB:        BPL CODE_20929C           
CODE_2092BD:        JSL CODE_29BE21           
CODE_2092C1:        LDX $0726                 
CODE_2092C4:        LDA $7E3992,x             
CODE_2092C8:        STA $4B,x                 
CODE_2092CA:        LDY #$00                  
CODE_2092CC:        LDA $0727                 ; \ Check if in world 8 submap 3 (spotlight submap)
CODE_2092CF:        CMP #$07                  ;   If so, on game over screen make sure
CODE_2092D1:        BNE CODE_2092DD           ;   to black out the overworld background with the Game Over window showing.
CODE_2092D3:        LDX $0726                 ;
CODE_2092D6:        LDA $45,x                 ;
CODE_2092D8:        CMP #$02                  ;
CODE_2092DA:        BNE CODE_2092DD           ;
CODE_2092DC:        INY                       ;
CODE_2092DD:        STY $0598                 ; /
CODE_2092E0:        LDY $0726                 
CODE_2092E3:        LDA $0722,y               
CODE_2092E6:        STA $B7                   
CODE_2092E8:        LDA $0724,y               
CODE_2092EB:        JSL CODE_2097F5           
CODE_2092EF:        LDA $24                   
CODE_2092F1:        STA $23                   
CODE_2092F3:        STZ $1EBF                 
CODE_2092F6:        LDA #$20                  
CODE_2092F8:        STA $0612                 
CODE_2092FB:        LDA #$02                  
CODE_2092FD:        JSR CODE_209610           
CODE_209300:        JSL CODE_20F58C           
CODE_209304:        JSL CODE_29EAA5           
CODE_209308:        JSL CODE_29E766           
CODE_20930C:        JSL CODE_29E730           
CODE_209310:        LDA #$00                  
CODE_209312:        JSR CODE_209610           
CODE_209315:        LDA $0598                 
CODE_209318:        BNE CODE_20931D           
CODE_20931A:        JSR CODE_209CC0           
CODE_20931D:        JSR CODE_2095B9           
CODE_209320:        JSL CODE_2A8B4B           
CODE_209324:        LDY $0726                 
CODE_209327:        LDA $0722,y               
CODE_20932A:        STA $0210                 
CODE_20932D:        STA $B7                   
CODE_20932F:        LDA $0724,y               
CODE_209332:        STA $12                   
CODE_209334:        STA $0211                 
CODE_209337:        JSL CODE_2097F5           
CODE_20933B:        LDA $0728                 
CODE_20933E:        BNE CODE_209382           
CODE_209340:        JSL CODE_238000           
CODE_209344:        JSL CODE_2AF800           
CODE_209348:        LDA #$44                  
CODE_20934A:        STA $0287                 
CODE_20934D:        LDX #$14                  
CODE_20934F:        LDA #$2C                  
CODE_209351:        STA $0281                 
CODE_209354:        LDA #$01                  
CODE_209356:        STA $034D                 
CODE_209359:        LDA $072B                 
CODE_20935C:        CMP #$02                  
CODE_20935E:        BNE CODE_20937A           
CODE_209360:        LDA $0726                 
CODE_209363:        EOR #$01                  
CODE_209365:        TAY                       
CODE_209366:        LDA $0736,y               
CODE_209369:        BMI CODE_20937A           
CODE_20936B:        LDX #$15                  
CODE_20936D:        STZ $034D                 
CODE_209370:        LDA #$24                  
CODE_209372:        STA $0281                 
CODE_209375:        LDA #$60                  
CODE_209377:        STA $1DCB                 
CODE_20937A:        TXA                       
CODE_20937B:        JSR CODE_209610           
CODE_20937E:        JSL CODE_2AF867           
CODE_209382:        LDA #$EF                  
CODE_209384:        STA $0216                 
CODE_209387:        STZ $021B                 
CODE_20938A:        LDA #$C0                  
CODE_20938C:        STA $0100                 
CODE_20938F:        JSL CODE_29C794           
CODE_209393:        LDA #$01                  
CODE_209395:        STA $020E                 
CODE_209398:        LDA #$11                  
CODE_20939A:        STA $020F                 
CODE_20939D:        LDA #$09                  
CODE_20939F:        STA $020C                 
CODE_2093A2:        STA $2105                 
CODE_2093A5:        LDA #$17                  
CODE_2093A7:        STA $0208                 
CODE_2093AA:        LDA #$03                  
CODE_2093AC:        STA $021E                 
CODE_2093AF:        LDA #$80                  
CODE_2093B1:        STA $4200                 
CODE_2093B4:        JSL CODE_22E0A9           
CODE_2093B8:        JSL CODE_23840D           
CODE_2093BC:        LDX $0726                 
CODE_2093BF:        LDY #$06                  
CODE_2093C1:        CPX #$00                  
CODE_2093C3:        BEQ CODE_2093C7           
CODE_2093C5:        LDY #$29                  
CODE_2093C7:        LDA #$06                  
CODE_2093C9:        STA $00                   
CODE_2093CB:        LDA #$00                  
CODE_2093CD:        STA $1D9C,y               
CODE_2093D0:        DEY                       
CODE_2093D1:        DEC $00                   
CODE_2093D3:        BPL CODE_2093CD           
CODE_2093D5:        LDY #$3F                  
CODE_2093D7:        CPX #$00                  
CODE_2093D9:        BEQ CODE_2093DD           
CODE_2093DB:        LDY #$7F                  
CODE_2093DD:        LDA #$3F                  
CODE_2093DF:        STA $00                   
CODE_2093E1:        REP #$30                  
CODE_2093E3:        TYA                       
CODE_2093E4:        AND #$00FF                
CODE_2093E7:        TAY                       
CODE_2093E8:        LDA $0727                 
CODE_2093EB:        AND #$00FF                
CODE_2093EE:        INC A                     
CODE_2093EF:        ASL A                     
CODE_2093F0:        ASL A                     
CODE_2093F1:        ASL A                     
CODE_2093F2:        ASL A                     
CODE_2093F3:        ASL A                     
CODE_2093F4:        ASL A                     
CODE_2093F5:        DEC A                     
CODE_2093F6:        TAX                       
CODE_2093F7:        SEP #$20                  
CODE_2093F9:        LDA $1D00,y               
CODE_2093FC:        AND $8000,x               
CODE_2093FF:        STA $1D00,y               
CODE_209402:        DEX                       
CODE_209403:        DEY                       
CODE_209404:        DEC $00                   
CODE_209406:        BPL CODE_2093F9           
CODE_209408:        SEP #$10                  
CODE_20940A:        JSR CODE_2095CF           
CODE_20940D:        JSL CODE_29E29D           
CODE_209411:        LDA #$0F                  
CODE_209413:        STA $16                   
CODE_209415:        STA $2100                 
CODE_209418:        JSR CODE_20801F           
CODE_20941B:        JSL CODE_22E0A9           
CODE_20941F:        JSL CODE_23840D           
CODE_209423:        LDA $0728                 
CODE_209426:        BEQ CODE_20942F           
CODE_209428:        DEC A                     
CODE_209429:        BEQ CODE_20942F           
CODE_20942B:        JSL CODE_2382A3           
CODE_20942F:        LDA $0728                 
CODE_209432:        CMP #$06                  
CODE_209434:        BEQ CODE_209441           
CODE_209436:        CMP #$09                  
CODE_209438:        BNE CODE_209418           
CODE_20943A:        LDA $072B                 
CODE_20943D:        CMP #$01                  
CODE_20943F:        BEQ CODE_209454           
CODE_209441:        LDA #$80                  ;\
CODE_209443:        STA $1202                 ;/Fade out music
CODE_209446:        JSL CODE_29E2B6           
CODE_20944A:        LDA $0728                 
CODE_20944D:        CMP #$09                  
CODE_20944F:        BEQ CODE_209454           
CODE_209451:        JMP CODE_2091C1           

CODE_209454:        STZ $0728                 
CODE_209457:        LDA $1DCB                 
CODE_20945A:        CMP #$70                  
CODE_20945C:        BCC CODE_209461           
CODE_20945E:        JMP CODE_20949B           

CODE_209461:        STZ $0728                 
CODE_209464:        STZ $1DCB                 
CODE_209467:        STZ $07E3                 
CODE_20946A:        LDX $0726                 
CODE_20946D:        LDA $0210                 
CODE_209470:        STA $0722,x               
CODE_209473:        LDA $12                   
CODE_209475:        STA $0724,x               
CODE_209478:        LDA $43,x                 
CODE_20947A:        STA $7E3975,x             
CODE_20947E:        LDA $45,x                 
CODE_209480:        STA $7E3977,x             
CODE_209484:        LDA $47,x                 
CODE_209486:        STA $7E3979,x             
CODE_20948A:        LDA $52,x                 
CODE_20948C:        STA $7E397B,x             
CODE_209490:        STZ $073F,x               
CODE_209493:        LDX $0726                 
CODE_209496:        LDA #$04                  
CODE_209498:        STA $0736,x               
CODE_20949B:        JSR CODE_2095CF           
CODE_20949E:        LDA #$80                  
CODE_2094A0:        STA $2100                 
CODE_2094A3:        LDY #$00                  
CODE_2094A5:        STY $0729                 
CODE_2094A8:        LDX $0726                 
CODE_2094AB:        JMP CODE_2084F8           

CODE_2094AE:        LDA #$15                  
CODE_2094B0:        STA $0208                 
CODE_2094B3:        LDA #$02                  
CODE_2094B5:        STA $0209                 
CODE_2094B8:        LDA #$20                  
CODE_2094BA:        STA $0204                 
CODE_2094BD:        JSL CODE_20AFC3           
CODE_2094C1:        JSR CODE_209CC0           
CODE_2094C4:        JSL CODE_2AB48E           
CODE_2094C8:        LDA #$C0                  
CODE_2094CA:        STA $0100                 
CODE_2094CD:        LDA #$80                  
CODE_2094CF:        STA $0101                 
CODE_2094D2:        LDA #$11                  
CODE_2094D4:        STA $1061                 
CODE_2094D7:        JSL CODE_29C794           
CODE_2094DB:        LDA #$00                  
CODE_2094DD:        STA $7E3955               
CODE_2094E1:        JSL CODE_29E29D           
CODE_2094E5:        LDA #$80                  
CODE_2094E7:        STA $4200                 
CODE_2094EA:        JSR CODE_20801F           
CODE_2094ED:        LDA $1061                 
CODE_2094F0:        BEQ CODE_2094F8           
CODE_2094F2:        STA $1202                 
CODE_2094F5:        STZ $1061                 
CODE_2094F8:        JSL CODE_22E0A9           
CODE_2094FC:        JSL CODE_23E190           
CODE_209500:        LDA $0014                 
CODE_209503:        BEQ CODE_2094EA           
CODE_209505:        JSL CODE_29E2B6           
CODE_209509:        LDA #$80                  ;\
CODE_20950B:        STA $1202                 ;/Fade out music
CODE_20950E:        LDA #$80                  
CODE_209510:        STA $16                   
CODE_209512:        JSR CODE_20801F           
CODE_209515:        LDX $078C                 
CODE_209518:        DEX                       
CODE_209519:        CPX $0726                 
CODE_20951C:        BNE CODE_209521           
CODE_20951E:        JMP CODE_2095AC           

CODE_209521:        TXA                       
CODE_209522:        EOR #$01                  
CODE_209524:        TAY                       
CODE_209525:        LDA $0722,y               
CODE_209528:        STA $05                   
CODE_20952A:        LDA $0724,y               
CODE_20952D:        STA $06                   
CODE_20952F:        PHB                       
CODE_209530:        LDA #$7E                  
CODE_209532:        PHA                       
CODE_209533:        PLB                       
CODE_209534:        LDA $397D,y               
CODE_209537:        STA $00                   
CODE_209539:        LDA $397F,y               
CODE_20953C:        STA $01                   
CODE_20953E:        LDA $3981,y               
CODE_209541:        STA $02                   
CODE_209543:        LDA $3985,y               
CODE_209546:        STA $03                   
CODE_209548:        LDA $3987,y               
CODE_20954B:        STA $04                   
CODE_20954D:        LDA $397D,x               
CODE_209550:        STA $397D,y               
CODE_209553:        LDA $397F,x               
CODE_209556:        STA $397F,y               
CODE_209559:        LDA $3981,x               
CODE_20955C:        STA $3981,y               
CODE_20955F:        LDA $3985,x               
CODE_209562:        STA $3985,y               
CODE_209565:        LDA $3987,x               
CODE_209568:        STA $3987,y               
CODE_20956B:        PLB                       
CODE_20956C:        LDA $00                   
CODE_20956E:        STA $7E397D,x             
CODE_209572:        LDA $01                   
CODE_209574:        STA $7E397F,x             
CODE_209578:        LDA $02                   
CODE_20957A:        STA $7E3981,x             
CODE_20957E:        LDA $03                   
CODE_209580:        STA $7E3985,x             
CODE_209584:        LDA $04                   
CODE_209586:        STA $7E3987,x             
CODE_20958A:        LDA $05                   
CODE_20958C:        STA $0722,x               
CODE_20958F:        LDA $06                   
CODE_209591:        STA $0724,x               
CODE_209594:        LDA #$1F                  
CODE_209596:        CPX #$01                  
CODE_209598:        BNE CODE_20959D           
CODE_20959A:        CLC                       
CODE_20959B:        ADC #$23                  
CODE_20959D:        TAY                       
CODE_20959E:        LDX #$00                  
CODE_2095A0:        LDA $1D80,y               
CODE_2095A3:        STA $0715,x               
CODE_2095A6:        INY                       
CODE_2095A7:        INX                       
CODE_2095A8:        CPX #$03                  
CODE_2095AA:        BNE CODE_2095A0           
CODE_2095AC:        LDX $078C                 
CODE_2095AF:        STX $0713                 
CODE_2095B2:        DEX                       
CODE_2095B3:        STX $0726                 
CODE_2095B6:        JMP CODE_208FB7           

CODE_2095B9:        LDA $0727                 
CODE_2095BC:        CMP #$07                  
CODE_2095BE:        BNE CODE_2095CE           
CODE_2095C0:        LDX $0726                 
CODE_2095C3:        LDA $45,x                 
CODE_2095C5:        CMP #$01                  
CODE_2095C7:        BNE CODE_2095CE           
CODE_2095C9:        LDA #$31                  
CODE_2095CB:        JSR CODE_209610           
CODE_2095CE:        RTS                       

CODE_2095CF:        LDY $072B                 
CODE_2095D2:        CPY #$01                  
CODE_2095D4:        BEQ CODE_2095DF           
CODE_2095D6:        DEY                       
CODE_2095D7:        LDA $0736,y               
CODE_2095DA:        BPL CODE_20960E           
CODE_2095DC:        DEY                       
CODE_2095DD:        BPL CODE_2095D7           
CODE_2095DF:        LDX #$02                  
CODE_2095E1:        LDY #$0D                  
CODE_2095E3:        LDA $1F17,y               
CODE_2095E6:        BEQ CODE_2095F2           
CODE_2095E8:        CMP $CDDB,x               
CODE_2095EB:        BNE CODE_2095F2           
CODE_2095ED:        LDA #$00                  
CODE_2095EF:        STA $1F17,y               
CODE_2095F2:        DEY                       
CODE_2095F3:        BPL CODE_2095E3           
CODE_2095F5:        DEX                       
CODE_2095F6:        BPL CODE_2095E1           
CODE_2095F8:        LDA #$00                  
CODE_2095FA:        STA $7E3967               
CODE_2095FE:        STA $7E396F               
CODE_209602:        LDA #$1F                  
CODE_209604:        STA $7E3968               
CODE_209608:        LDA #$40                  
CODE_20960A:        STA $7E3969               
CODE_20960E:        RTS                       

CODE_20960F:        RTS                       

CODE_209610:        PHA                       
CODE_209611:        STA $36                   
CODE_209613:        ASL A                     
CODE_209614:        CLC                       
CODE_209615:        ADC $36                   
CODE_209617:        TAY                       
CODE_209618:        PHB                       
CODE_209619:        LDA #$22                  
CODE_20961B:        PHA                       
CODE_20961C:        PLB                       
CODE_20961D:        LDA.w PNTR_228B5C,y               
CODE_209620:        STA $36                   
CODE_209622:        LDA.w PNTR_228B5C+1,y               
CODE_209625:        STA $37                   
CODE_209627:        LDA.w PNTR_228B5C+2,y               
CODE_20962A:        STA $38                   
CODE_20962C:        PLB                       
CODE_20962D:        JSL CODE_29E8AB           
CODE_209631:        PLA                       
CODE_209632:        BNE CODE_209641           
CODE_209634:        STA $1600                 
CODE_209637:        STA $1601                 
CODE_20963A:        DEC A                     
CODE_20963B:        STA $1602                 
CODE_20963E:        STA $1603                 
CODE_209641:        RTS                       

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

CODE_209683:        LDA $070A                 
CODE_209686:        STA $00                   
CODE_209688:        ASL A                     
CODE_209689:        CLC                       
CODE_20968A:        ADC $00                   
CODE_20968C:        TAX                       
CODE_20968D:        LDA.l PNTR_209642,x             
CODE_209691:        STA $00                   
CODE_209693:        LDA.l PNTR_209642+1,x             
CODE_209697:        STA $01                   
CODE_209699:        LDA.l PNTR_209642+2,x             
CODE_20969D:        STA $02                   
CODE_20969F:        LDY #$07                  
CODE_2096A1:        LDA [$00],y               
CODE_2096A3:        STA $1E96,y               
CODE_2096A6:        DEY                       
CODE_2096A7:        BPL CODE_2096A1           
CODE_2096A9:        RTS                       

CODE_2096AA:        LDY #$1C                  
CODE_2096AC:        LDA #$00                  
CODE_2096AE:        STA $1044,y               
CODE_2096B1:        DEY                       
CODE_2096B2:        BPL CODE_2096AC           
CODE_2096B4:        RTS                       

CODE_2096B5:        LDA $1053                 
CODE_2096B8:        CLC                       
CODE_2096B9:        ADC $1056                 
CODE_2096BC:        STA $1053                 
CODE_2096BF:        LDA $1051                 
CODE_2096C2:        ADC #$00                  
CODE_2096C4:        STA $1051                 
CODE_2096C7:        LDA $105F                 
CODE_2096CA:        CMP #$FE                  
CODE_2096CC:        BNE CODE_2096F6           
CODE_2096CE:        LDY $104F                 
CODE_2096D1:        LDA $1047,y               
CODE_2096D4:        CMP #$08                  
CODE_2096D6:        BCS CODE_2096F6                   
CODE_2096D8:        LDA $1051                 
CODE_2096DB:        CMP #$04                  
CODE_2096DD:        BCC CODE_2096F6           
CODE_2096DF:        LDA #$08                  
CODE_2096E1:        STA $1051                 
CODE_2096E4:        LDA $1053                 
CODE_2096E7:        AND #$1F                  
CODE_2096E9:        STA $1053                 
CODE_2096EC:        LDA $104F                 
CODE_2096EF:        AND #$02                  
CODE_2096F1:        BEQ CODE_2096F6           
CODE_2096F3:        STX $105F                 
CODE_2096F6:        RTS                       

CODE_2096F7:        LDA $1053                 
CODE_2096FA:        AND #$C0                  
CODE_2096FC:        STA $1054                 
CODE_2096FF:        LDA $1051                 
CODE_209702:        AND #$0F                  
CODE_209704:        STA $1052                 
CODE_209707:        CLC                       
CODE_209708:        ROR $1052                 
CODE_20970B:        ROR $1054                 
CODE_20970E:        CLC                       
CODE_20970F:        ROR $1052                 
CODE_209712:        ROR $1054                 
CODE_209715:        LDA $1053                 
CODE_209718:        AND #$1F                  
CODE_20971A:        LSR A                     
CODE_20971B:        CLC                       
CODE_20971C:        ADC $1054                 
CODE_20971F:        STA $1054                 
CODE_209722:        RTS                       

CODE_209723:        LDA $1053                 
CODE_209726:        AND #$01                  
CODE_209728:        STA $1055                 
CODE_20972B:        LDA $1053                 
CODE_20972E:        AND #$20                  
CODE_209730:        BNE CODE_209737           
CODE_209732:        ASL $1055                 
CODE_209735:        BRA CODE_20973B           

CODE_209737:        SEC                       
CODE_209738:        ROL $1055                 
CODE_20973B:        RTS                       

CODE_20973C:        ASL A                     
CODE_20973D:        ADC #$00                  
CODE_20973F:        ASL A                     
CODE_209740:        ADC #$00                  
CODE_209742:        STA $0C                   
CODE_209744:        TXA                       
CODE_209745:        LSR A                     
CODE_209746:        LSR A                     
CODE_209747:        LSR A                     
CODE_209748:        STA $0D                   
CODE_20974A:        LDA $0C                   
CODE_20974C:        AND #$03                  
CODE_20974E:        ORA #$08                  
CODE_209750:        STA $0E                   
CODE_209752:        LDA $0C                   
CODE_209754:        AND #$C0                  
CODE_209756:        ORA $0D                   
CODE_209758:        STA $0F                   
CODE_20975A:        RTL                       

CODE_20975B:        TYA                       
CODE_20975C:        PHA                       
CODE_20975D:        TXA                       
CODE_20975E:        PHA                       
CODE_20975F:        STZ $0F                   
CODE_209761:        LDY $0726                 
CODE_209764:        CPY #$00                  
CODE_209766:        BEQ CODE_209772           
CODE_209768:        LDA $0F                   
CODE_20976A:        CLC                       
CODE_20976B:        ADC #$23                  
CODE_20976D:        STA $0F                   
CODE_20976F:        DEY                       
CODE_209770:        BNE CODE_209768           
CODE_209772:        TXA                       
CODE_209773:        CLC                       
CODE_209774:        ADC $0F                   
CODE_209776:        TAX                       
CODE_209777:        INC $1D9C,x               
CODE_20977A:        PLA                       
CODE_20977B:        TAX                       
CODE_20977C:        PLA                       
CODE_20977D:        TAY                       
CODE_20977E:        RTL                       

CODE_20977F:        JSR CODE_2096F7           
CODE_209782:        JSR CODE_209723           
CODE_209785:        LDA #$7E                  
CODE_209787:        STA $30                   
CODE_209789:        LDA $0425                 
CODE_20978C:        BEQ CODE_20979E           
CODE_20978E:        LDY $0376                 
CODE_209791:        LDA $823C,y               
CODE_209794:        STA $2E                   
CODE_209796:        LDA $824C,y               
CODE_209799:        STA $2F                   
CODE_20979B:        JMP CODE_2097A8           

CODE_20979E:        LDA $8200                 
CODE_2097A1:        STA $2E                   
CODE_2097A3:        LDA $8201                 
CODE_2097A6:        STA $2F                   
CODE_2097A8:        LDA $1051                 
CODE_2097AB:        AND #$08                  
CODE_2097AD:        BEQ CODE_2097B1           
CODE_2097AF:        INC $2F                   
CODE_2097B1:        LDA $070A                 
CODE_2097B4:        ASL A                     
CODE_2097B5:        TAY                       
CODE_2097B6:        LDA $CE5A,y               
CODE_2097B9:        STA $0C                   
CODE_2097BB:        LDA $CE5B,y               
CODE_2097BE:        STA $0D                   
CODE_2097C0:        LDY $070A                 
CODE_2097C3:        LDA $CE80,y               
CODE_2097C6:        STA $0E                   
CODE_2097C8:        LDY $1054                 
CODE_2097CB:        LDA [$2E],y               
CODE_2097CD:        REP #$30                  
CODE_2097CF:        AND #$00FF                
CODE_2097D2:        ASL A                     
CODE_2097D3:        ASL A                     
CODE_2097D4:        ASL A                     
CODE_2097D5:        TAY                       
CODE_2097D6:        TXA                       
CODE_2097D7:        AND #$00FF                
CODE_2097DA:        TAX                       
CODE_2097DB:        LDA $1055                 
CODE_2097DE:        AND #$00FF                
CODE_2097E1:        ASL A                     
CODE_2097E2:        STA $00                   
CODE_2097E4:        TYA                       
CODE_2097E5:        CLC                       
CODE_2097E6:        ADC $00                   
CODE_2097E8:        TAY                       
CODE_2097E9:        LDA [$0C],y               
CODE_2097EB:        STA $0382,x               
CODE_2097EE:        STY $00                   
CODE_2097F0:        STX $02                   
CODE_2097F2:        SEP #$30                  
CODE_2097F4:        RTS                       

CODE_2097F5:        LDY $0425                 
CODE_2097F8:        BNE CODE_20980C           
CODE_2097FA:        LDX #$03                  
CODE_2097FC:        LSR A                     
CODE_2097FD:        ROR $B7                   
CODE_2097FF:        DEX                       
CODE_209800:        BPL CODE_2097FC           
CODE_209802:        LDA $B7                   
CODE_209804:        STA $24                   
CODE_209806:        CLC                       
CODE_209807:        ADC #$10                  
CODE_209809:        STA $23                   
CODE_20980B:        RTL                       

CODE_20980C:        LDA $B7                   
CODE_20980E:        BEQ CODE_209821           
CODE_209810:        SEC                       
CODE_209811:        SBC #$10                  
CODE_209813:        STA $B7                   
CODE_209815:        CMP #$F0                  
CODE_209817:        BCC CODE_209821           
CODE_209819:        SEC                       
CODE_20981A:        SBC #$11                  
CODE_20981C:        STA $B7                   
CODE_20981E:        CLC                       
CODE_20981F:        ADC #$10                  
CODE_209821:        STA $23                   
CODE_209823:        CLC                       
CODE_209824:        ADC #$E0                  
CODE_209826:        BCC CODE_20982A           
CODE_209828:        ADC #$00                  
CODE_20982A:        STA $24                   
CODE_20982C:        RTL                       

CODE_20982D:        STY $01                   
CODE_20982F:        LDY #$00                  
CODE_209831:        STY $00                   
CODE_209833:        TYA                       
CODE_209834:        LDX $01                   
CODE_209836:        CPX #$01                  
CODE_209838:        BEQ CODE_20983C           
CODE_20983A:        STA ($00),y               
CODE_20983C:        DEY                       
CODE_20983D:        BNE CODE_209834           
CODE_20983F:        DEC $01                   
CODE_209841:        BPL CODE_209834           
CODE_209843:        RTS                       

CODE_209844:        PHY                       
CODE_209845:        PHB                       
CODE_209846:        LDY #$7E                  
CODE_209848:        PHY                       
CODE_209849:        PLB                       
CODE_20984A:        STA $2000,x               
CODE_20984D:        STA $21B0,x               
CODE_209850:        STA $2360,x               
CODE_209853:        STA $2510,x               
CODE_209856:        STA $26C0,x               
CODE_209859:        STA $2870,x               
CODE_20985C:        STA $2A20,x               
CODE_20985F:        STA $2BD0,x               
CODE_209862:        STA $2D80,x               
CODE_209865:        STA $2F30,x               
CODE_209868:        STA $30E0,x               
CODE_20986B:        STA $3290,x               
CODE_20986E:        STA $3440,x               
CODE_209871:        STA $35F0,x               
CODE_209874:        STA $37A0,x               
CODE_209877:        STZ $4000,x               
CODE_20987A:        STZ $41B0,x               
CODE_20987D:        STZ $4360,x               
CODE_209880:        STZ $4510,x               
CODE_209883:        STZ $46C0,x               
CODE_209886:        STZ $4870,x               
CODE_209889:        STZ $4A20,x               
CODE_20988C:        STZ $4BD0,x               
CODE_20988F:        STZ $4D80,x               
CODE_209892:        STZ $4F30,x               
CODE_209895:        STZ $50E0,x               
CODE_209898:        STZ $5290,x               
CODE_20989B:        STZ $5440,x               
CODE_20989E:        STZ $55F0,x               
CODE_2098A1:        STZ $57A0,x               
CODE_2098A4:        INX                       
CODE_2098A5:        PLB                       
CODE_2098A6:        PLY                       
CODE_2098A7:        RTL                       

CODE_2098A8:        PHY                       
CODE_2098A9:        PHB                       
CODE_2098AA:        LDY #$7E                  
CODE_2098AC:        PHY                       
CODE_2098AD:        PLB                       
CODE_2098AE:        STA $20C0,x               
CODE_2098B1:        STA $2270,x               
CODE_2098B4:        STA $2420,x               
CODE_2098B7:        STA $25D0,x               
CODE_2098BA:        STA $2780,x               
CODE_2098BD:        STA $2930,x               
CODE_2098C0:        STA $2AE0,x               
CODE_2098C3:        STA $2C90,x               
CODE_2098C6:        STA $2E40,x               
CODE_2098C9:        STA $2FF0,x               
CODE_2098CC:        STA $31A0,x               
CODE_2098CF:        STA $3350,x               
CODE_2098D2:        STA $3500,x               
CODE_2098D5:        STA $36B0,x               
CODE_2098D8:        STA $3860,x               
CODE_2098DB:        STZ $40C0,x               
CODE_2098DE:        STZ $4270,x               
CODE_2098E1:        STZ $4420,x               
CODE_2098E4:        STZ $45D0,x               
CODE_2098E7:        STZ $4780,x               
CODE_2098EA:        STZ $4930,x               
CODE_2098ED:        STZ $4AE0,x               
CODE_2098F0:        STZ $4C90,x               
CODE_2098F3:        STZ $4E40,x               
CODE_2098F6:        STZ $4FF0,x               
CODE_2098F9:        STZ $51A0,x               
CODE_2098FC:        STZ $5350,x               
CODE_2098FF:        STZ $5500,x               
CODE_209902:        STZ $56B0,x               
CODE_209905:        STZ $5860,x               
CODE_209908:        PLB                       
CODE_209909:        PLY                       
CODE_20990A:        RTL                       

CODE_20990B:        STZ $0700                 ;
CODE_20990E:        STZ $0704                 
CODE_209911:        STZ $0703                 
CODE_209914:        STZ $0701                 
CODE_209917:        STZ $0702                 
CODE_20991A:        LDA #$7E                  
CODE_20991C:        STA $30                   
CODE_20991E:        LDY #$00                  
CODE_209920:        LDA [$2B],y               
CODE_209922:        STA $1DFE                 
CODE_209925:        INY                       
CODE_209926:        LDA [$2B],y               
CODE_209928:        STA $1DFF                 
CODE_20992B:        INY                       
CODE_20992C:        LDA [$2B],y               
CODE_20992E:        STA $1E00                 
CODE_209931:        INY                       
CODE_209932:        LDA [$2B],y               
CODE_209934:        STA $1E01                 
CODE_209937:        INY                       
CODE_209938:        LDA [$2B],y               
CODE_20993A:        STA $1E02                 
CODE_20993D:        INY                       
CODE_20993E:        LDA [$2B],y               
CODE_209940:        STA $1E03                 
CODE_209943:        INY                       
CODE_209944:        LDA $0414                 
CODE_209947:        BNE CODE_209974           
CODE_209949:        LDA [$2B],y               
CODE_20994B:        AND #$E0                  
CODE_20994D:        LSR A                     
CODE_20994E:        LSR A                     
CODE_20994F:        LSR A                     
CODE_209950:        LSR A                     
CODE_209951:        LSR A                     
CODE_209952:        TAX                       
CODE_209953:        LDA $CE2A,x               
CODE_209956:        STA $55                   
CODE_209958:        LDA $CE32,x               
CODE_20995B:        STA $70                   
CODE_20995D:        STZ $43                   
CODE_20995F:        LDA $CE3A,x               
CODE_209962:        STA $0216                 
CODE_209965:        LSR A                     
CODE_209966:        LSR A                     
CODE_209967:        STA $0218                 
CODE_20996A:        LDA $0216                 
CODE_20996D:        SEC                       
CODE_20996E:        SBC $0218                 
CODE_209971:        STA $0218                 
CODE_209974:        LDA [$2B],y               
CODE_209976:        AND #$0F                  
CODE_209978:        STA $22                   
CODE_20997A:        STA $0376                 
CODE_20997D:        INY                       
CODE_20997E:        LDA [$2B],y               
CODE_209980:        AND #$03                  
CODE_209982:        STA $073B                 
CODE_209985:        LDA [$2B],y               
CODE_209987:        AND #$1C                  
CODE_209989:        LSR A                     
CODE_20998A:        LSR A                     
CODE_20998B:        STA $073C                 
CODE_20998E:        LDA [$2B],y               
CODE_209990:        AND #$60                  
CODE_209992:        LSR A                     
CODE_209993:        LSR A                     
CODE_209994:        LSR A                     
CODE_209995:        LSR A                     
CODE_209996:        LSR A                     
CODE_209997:        STA $0426                 
CODE_20999A:        LDA [$2B],y               
CODE_20999C:        AND #$80                  
CODE_20999E:        STA $0562                 
CODE_2099A1:        INY                       
CODE_2099A2:        LDA [$2B],y               
CODE_2099A4:        AND #$80                  
CODE_2099A6:        STA $0379                 
CODE_2099A9:        LDA [$2B],y               
CODE_2099AB:        AND #$60                  
CODE_2099AD:        LSR A                     
CODE_2099AE:        LSR A                     
CODE_2099AF:        LSR A                     
CODE_2099B0:        LSR A                     
CODE_2099B1:        LSR A                     
CODE_2099B2:        STA $0424                 
CODE_2099B5:        CMP #$02                  
CODE_2099B7:        BNE CODE_2099DB           
CODE_2099B9:        LDX #$00                  
CODE_2099BB:        LDA $0216                 
CODE_2099BE:        CMP #$B0                  
CODE_2099C0:        BCC CODE_2099C4           
CODE_2099C2:        LDX #$EF                  
CODE_2099C4:        STX $0216                 
CODE_2099C7:        TXA                       
CODE_2099C8:        STA $7E398E               
CODE_2099CC:        LSR A                     
CODE_2099CD:        LSR A                     
CODE_2099CE:        STA $0218                 
CODE_2099D1:        LDA $0216                 
CODE_2099D4:        SEC                       
CODE_2099D5:        SBC $0218                 
CODE_2099D8:        STA $0218                 
CODE_2099DB:        LDA [$2B],y               
CODE_2099DD:        AND #$10                  
CODE_2099DF:        STA $0425                 
CODE_2099E2:        BEQ CODE_209A09           
CODE_2099E4:        LDX $0414                 
CODE_2099E7:        BNE CODE_2099F3           
CODE_2099E9:        LDA $0376                 
CODE_2099EC:        STA $13                   
CODE_2099EE:        STA $55                   
CODE_2099F0:        JMP CODE_209A09           

CODE_2099F3:        STZ $0376                 
CODE_2099F6:        LDA $55                   
CODE_2099F8:        BEQ CODE_209A03           
CODE_2099FA:        LDA $22                   
CODE_2099FC:        STA $13                   
CODE_2099FE:        STA $55                   
CODE_209A00:        STA $0376                 
CODE_209A03:        LDA $13                   
CODE_209A05:        STA $7E398D               
CODE_209A09:        LDA [$2B],y               
CODE_209A0B:        AND #$0F                  
CODE_209A0D:        STA $1EBA                 
CODE_209A10:        INY                       
CODE_209A11:        LDA [$2B],y               
CODE_209A13:        AND #$E0                  
CODE_209A15:        LSR A                     
CODE_209A16:        LSR A                     
CODE_209A17:        LSR A                     
CODE_209A18:        LSR A                     
CODE_209A19:        LSR A                     
CODE_209A1A:        STA $0545                 
CODE_209A1D:        LDA [$2B],y               
CODE_209A1F:        AND #$1F                  
CODE_209A21:        STA $1EBF                 
CODE_209A24:        INY                       
CODE_209A25:        LDA [$2B],y               
CODE_209A27:        AND #$30                  
CODE_209A29:        ASL A                     
CODE_209A2A:        ORA $1EBF                 
CODE_209A2D:        STA $1EBF                 
CODE_209A30:        LDA $0414                 
CODE_209A33:        BNE CODE_209A49           
CODE_209A35:        LDA [$2B],y               
CODE_209A37:        AND #$C0                  
CODE_209A39:        CLC                       
CODE_209A3A:        ROL A                     
CODE_209A3B:        ROL A                     
CODE_209A3C:        ROL A                     
CODE_209A3D:        TAX                       
CODE_209A3E:        LDA $CE42,x               
CODE_209A41:        STA $05EE                 
CODE_209A44:        BNE CODE_209A49           
CODE_209A46:        INC $05F3                 
CODE_209A49:        LDA [$2B],y               
CODE_209A4B:        AND #$0F                  
CODE_209A4D:        CMP #$07                  
CODE_209A4F:        BNE CODE_209A6A           
CODE_209A51:        LDA $0727                 ;
CODE_209A54:        BNE CODE_209A6A           
CODE_209A56:        LDA $001E                 
CODE_209A59:        BNE CODE_209A6A           
CODE_209A5B:        LDX $0726                 
CODE_209A5E:        LDA $7E3979,x             
CODE_209A62:        CMP #$A0                  
CODE_209A64:        BNE CODE_209A6A           
CODE_209A66:        LDA #$04                  
CODE_209A68:        BRA CODE_209A72           

CODE_209A6A:        LDA [$2B],y               
CODE_209A6C:        AND #$0F                  
CODE_209A6E:        TAX                       
CODE_209A6F:        LDA $CE46,x               
CODE_209A72:        STA $1061                 
CODE_209A75:        STA $1062                 
CODE_209A78:        LDA $2142                 
CODE_209A7B:        CMP #$0D                  
CODE_209A7D:        BNE CODE_209A82           
CODE_209A7F:        STZ $1061                 
CODE_209A82:        INY                       
CODE_209A83:        LDA [$2B],y               
CODE_209A85:        AND #$0F                  
CODE_209A87:        STA $02BF                 
CODE_209A8A:        LDA [$2B],y               
CODE_209A8C:        LSR A                     
CODE_209A8D:        LSR A                     
CODE_209A8E:        LSR A                     
CODE_209A8F:        LSR A                     
CODE_209A90:        STA $02BE                 
CODE_209A93:        INY                       
CODE_209A94:        LDA [$2B],y               
CODE_209A96:        STA $0350                 
CODE_209A99:        LDA $2B                   
CODE_209A9B:        CLC                       
CODE_209A9C:        ADC #$0D                  
CODE_209A9E:        STA $2B                   
CODE_209AA0:        LDA $2C                   
CODE_209AA2:        ADC #$00                  
CODE_209AA4:        STA $2C                   
CODE_209AA6:        LDA [$2B]                 
CODE_209AA8:        AND #$E0                  
CODE_209AAA:        CMP #$C0                  
CODE_209AAC:        BNE CODE_209AE0           
CODE_209AAE:        LDA [$2B]                 
CODE_209AB0:        AND #$0F                  
CODE_209AB2:        CMP $0211                 
CODE_209AB5:        BNE CODE_209ACF           
CODE_209AB7:        LDY #$01                  
CODE_209AB9:        LDA [$2B],y               
CODE_209ABB:        PHA                       
CODE_209ABC:        AND #$0F                  
CODE_209ABE:        STA $073B                 
CODE_209AC1:        PLA                       
CODE_209AC2:        LSR A                     
CODE_209AC3:        LSR A                     
CODE_209AC4:        LSR A                     
CODE_209AC5:        LSR A                     
CODE_209AC6:        STA $073C                 
CODE_209AC9:        INY                       
CODE_209ACA:        LDA [$2B],y               
CODE_209ACC:        STA $070A                 
CODE_209ACF:        LDA $002B                 
CODE_209AD2:        CLC                       
CODE_209AD3:        ADC #$03                  
CODE_209AD5:        STA $002B                 
CODE_209AD8:        LDA #$00                  
CODE_209ADA:        ADC $002C                 
CODE_209ADD:        STA $002C                 
CODE_209AE0:        LDY #$00                  
CODE_209AE2:        LDA [$2B],y               
CODE_209AE4:        CMP #$FF                  
CODE_209AE6:        BEQ CODE_209B29           
CODE_209AE8:        STA $0E                   
CODE_209AEA:        INY                       
CODE_209AEB:        LDA [$2B],y               
CODE_209AED:        STA $0F                   
CODE_209AEF:        INY                       
CODE_209AF0:        LDA [$2B],y               
CODE_209AF2:        STA $0706                 
CODE_209AF5:        INY                       
CODE_209AF6:        TYA                       
CODE_209AF7:        CLC                       
CODE_209AF8:        ADC $2B                   
CODE_209AFA:        STA $2B                   
CODE_209AFC:        LDA $2C                   
CODE_209AFE:        ADC #$00                  
CODE_209B00:        STA $2C                   
CODE_209B02:        LDA $0E                   
CODE_209B04:        AND #$E0                  
CODE_209B06:        CMP #$E0                  
CODE_209B08:        BNE CODE_209B10           
CODE_209B0A:        JSL CODE_23BED4           
CODE_209B0E:        BRA CODE_209AE0           

CODE_209B10:        JSL CODE_209B65           
CODE_209B14:        LDA $0706                 
CODE_209B17:        AND #$F0                  
CODE_209B19:        BEQ CODE_209B22           
CODE_209B1B:        JSL CODE_209C40           
CODE_209B1F:        JMP CODE_209B26           

CODE_209B22:        JSL CODE_209C80           
CODE_209B26:        JMP CODE_209AE0           

CODE_209B29:        LDA $0350                 
CODE_209B2C:        BEQ CODE_209B54           
CODE_209B2E:        JSL CODE_2A8DB6           
CODE_209B32:        LDA $034F                 
CODE_209B35:        BEQ CODE_209B43           
CODE_209B37:        LDA $0216                 
CODE_209B3A:        STA $0218                 
CODE_209B3D:        LDA $0217                 
CODE_209B40:        STA $0219                 
CODE_209B43:        LDA $0350                 
CODE_209B46:        CMP #$03                  
CODE_209B48:        BEQ CODE_209B4E           
CODE_209B4A:        CMP #$24                  
CODE_209B4C:        BNE CODE_209B54           
CODE_209B4E:        STZ $0218                 
CODE_209B51:        STZ $0219                 
CODE_209B54:        LDA $1EBF                 
CODE_209B57:        CMP #$07                  
CODE_209B59:        BNE CODE_209B64           
CODE_209B5B:        STZ $05EE                 
CODE_209B5E:        STZ $05EF                 
CODE_209B61:        STZ $05F0                 
CODE_209B64:        RTL                       

CODE_209B65:        LDA $0E                   
CODE_209B67:        ASL A                     
CODE_209B68:        ASL A                     
CODE_209B69:        ASL A                     
CODE_209B6A:        ASL A                     
CODE_209B6B:        STA $06                   
CODE_209B6D:        LDA $0F                   
CODE_209B6F:        AND #$0F                  
CODE_209B71:        ORA $06                   
CODE_209B73:        STA $0700                 
CODE_209B76:        LDA $0F                   
CODE_209B78:        AND #$F0                  
CODE_209B7A:        LSR A                     
CODE_209B7B:        LSR A                     
CODE_209B7C:        LSR A                     
CODE_209B7D:        TAX                       
CODE_209B7E:        LDA $0425                 
CODE_209B81:        BEQ CODE_209B92           
CODE_209B83:        TXA                       
CODE_209B84:        LSR A                     
CODE_209B85:        TAX                       
CODE_209B86:        LDA $823C,x               
CODE_209B89:        STA $2E                   
CODE_209B8B:        LDA $824C,x               
CODE_209B8E:        STA $2F                   
CODE_209B90:        BRA CODE_209BB2           

CODE_209B92:        CPX #$1E                  
CODE_209B94:        BNE CODE_209B98           
CODE_209B96:        DEX                       
CODE_209B97:        DEX                       
CODE_209B98:        LDA #$7E                  
CODE_209B9A:        STA $0030                 
CODE_209B9D:        LDA $8200,x               
CODE_209BA0:        STA $2E                   
CODE_209BA2:        LDA $8201,x               
CODE_209BA5:        STA $2F                   
CODE_209BA7:        INC A                     
CODE_209BA8:        STA $04                   
CODE_209BAA:        LDA $0E                   
CODE_209BAC:        AND #$10                  
CODE_209BAE:        BEQ CODE_209BB2           
CODE_209BB0:        INC $2F                   
CODE_209BB2:        LDA $2F                   
CODE_209BB4:        STA $05                   
CODE_209BB6:        RTL                       

CODE_209BB7:        PHY                       
CODE_209BB8:        PHX                       
CODE_209BB9:        LDA $0F                   
CODE_209BBB:        PHA                       
CODE_209BBC:        LDA $0C                   
CODE_209BBE:        PHA                       
CODE_209BBF:        LDA $0F                   
CODE_209BC1:        LSR A                     
CODE_209BC2:        LSR A                     
CODE_209BC3:        LSR A                     
CODE_209BC4:        LSR A                     
CODE_209BC5:        STA $0F                   
CODE_209BC7:        LDA $0E                   
CODE_209BC9:        ASL A                     
CODE_209BCA:        ASL A                     
CODE_209BCB:        ASL A                     
CODE_209BCC:        ASL A                     
CODE_209BCD:        ORA $0F                   
CODE_209BCF:        STA $0F                   
CODE_209BD1:        LDA $0F                   
CODE_209BD3:        AND #$F8                  
CODE_209BD5:        LSR A                     
CODE_209BD6:        LSR A                     
CODE_209BD7:        ORA $0C                   
CODE_209BD9:        STA $0C                   
CODE_209BDB:        LDA $0415                 
CODE_209BDE:        BEQ CODE_209BE7           
CODE_209BE0:        LDA $0C                   
CODE_209BE2:        CLC                       
CODE_209BE3:        ADC #$40                  
CODE_209BE5:        STA $0C                   
CODE_209BE7:        LDA $0F                   
CODE_209BE9:        AND #$07                  
CODE_209BEB:        TAX                       
CODE_209BEC:        LDY $0C                   
CODE_209BEE:        LDA $1E04,y               
CODE_209BF1:        ORA $CE52,x               
CODE_209BF4:        STA $1E04,y               
CODE_209BF7:        PLA                       
CODE_209BF8:        STA $0C                   
CODE_209BFA:        PLA                       
CODE_209BFB:        STA $0F                   
CODE_209BFD:        PLX                       
CODE_209BFE:        PLY                       
CODE_209BFF:        RTL                       

CODE_209C00:        LDA $070A                 
CODE_209C03:        JSL CODE_20FB3A           

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


CODE_209C40:        LDA $070A                 
CODE_209C43:        JSL CODE_20FB3A           

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
               
CODE_209C80:        LDA $070A       
CODE_209C83:        JSL CODE_20FB3A

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
  
CODE_209CC0:        LDA $0425                 
CODE_209CC3:        BNE CODE_209CFC           
CODE_209CC5:        LDX $25                   
CODE_209CC7:        LDA $0210                 
CODE_209CCA:        STA $26,x                 
CODE_209CCC:        JSR CODE_209DB5           
CODE_209CCF:        JSL CODE_29E953           
CODE_209CD3:        LDX $25                   
CODE_209CD5:        LDA $26,x                 
CODE_209CD7:        CLC                       
CODE_209CD8:        ADC $CE95,x               
CODE_209CDB:        STA $26,x                 
CODE_209CDD:        LDX $25                   
CODE_209CDF:        LDA $26,x                 
CODE_209CE1:        AND #$08                  
CODE_209CE3:        CMP $CE97,x               
CODE_209CE6:        BNE CODE_209CF0           
CODE_209CE8:        LDA $23,x                 
CODE_209CEA:        CLC                       
CODE_209CEB:        ADC $CE93,x               
CODE_209CEE:        STA $23,x                 
CODE_209CF0:        DEC $0612                 
CODE_209CF3:        BNE CODE_209CCC           
CODE_209CF5:        LDA #$FF                  
CODE_209CF7:        STA $26                   
CODE_209CF9:        STA $27                   
CODE_209CFB:        RTS                       

CODE_209CFC:        STZ $25                   
CODE_209CFE:        LDA #$E0                  
CODE_209D00:        STA $0216                 
CODE_209D03:        CLC                       
CODE_209D04:        ADC #$08                  
CODE_209D06:        STA $26                   
CODE_209D08:        LDY $0376                 
CODE_209D0B:        DEY                       
CODE_209D0C:        TYA                       
CODE_209D0D:        ORA #$E0                  
CODE_209D0F:        STA $23                   
CODE_209D11:        LDA $0376                 
CODE_209D14:        BEQ CODE_209D23           
CODE_209D16:        ASL A                     
CODE_209D17:        ASL A                     
CODE_209D18:        ASL A                     
CODE_209D19:        ASL A                     
CODE_209D1A:        STA $06                   
CODE_209D1C:        LDA $23                   
CODE_209D1E:        SEC                       
CODE_209D1F:        SBC $06                   
CODE_209D21:        STA $23                   
CODE_209D23:        JSR CODE_209E7E           
CODE_209D26:        JSR CODE_209EAE           
CODE_209D29:        JSL CODE_29EA32           
CODE_209D2D:        LDA $0216                 
CODE_209D30:        CLC                       
CODE_209D31:        ADC #$08                  
CODE_209D33:        STA $0216                 
CODE_209D36:        AND #$08                  
CODE_209D38:        BNE CODE_209D4D           
CODE_209D3A:        LDA $23                   
CODE_209D3C:        CLC                       
CODE_209D3D:        ADC #$10                  
CODE_209D3F:        STA $23                   
CODE_209D41:        AND #$F0                  
CODE_209D43:        BNE CODE_209D4D           
CODE_209D45:        INC $23                   
CODE_209D47:        LDA #$0F                  
CODE_209D49:        AND $23                   
CODE_209D4B:        STA $23                   
CODE_209D4D:        LDA $0216                 
CODE_209D50:        CMP #$D0                  
CODE_209D52:        BNE CODE_209D23           
CODE_209D54:        STZ $0216                 
CODE_209D57:        STZ $26                   
CODE_209D59:        RTS                       

CODE_209D5A:        LDA $0425                 
CODE_209D5D:        BEQ CODE_209D63           
CODE_209D5F:        JSR CODE_209D9E           
CODE_209D62:        RTL                       

CODE_209D63:        LDX $25                   
CODE_209D65:        LDA $0210                 
CODE_209D68:        AND #$F8                  
CODE_209D6A:        CMP $26,x                 
CODE_209D6C:        BEQ CODE_209D95           
CODE_209D6E:        TAY                       
CODE_209D6F:        LDA $0612                 
CODE_209D72:        BNE CODE_209D87           
CODE_209D74:        LDA $0210                 
CODE_209D77:        AND #$07                  
CODE_209D79:        CPX #$00                  
CODE_209D7B:        BNE CODE_209D83           
CODE_209D7D:        CMP #$02                  
CODE_209D7F:        BCS CODE_209D87                   
CODE_209D81:        BRA CODE_209D95           

CODE_209D83:        CMP #$05                  
CODE_209D85:        BCS CODE_209D95                   
CODE_209D87:        STY $26,x                 
CODE_209D89:        LDA $25                   
CODE_209D8B:        EOR #$01                  
CODE_209D8D:        TAX                       
CODE_209D8E:        LDA #$FF                  
CODE_209D90:        STA $26,x                 
CODE_209D92:        JSR CODE_209DB5           
CODE_209D95:        LDA $0707                 
CODE_209D98:        BEQ CODE_209D9D           
CODE_209D9A:        JSR CODE_209E7D           
CODE_209D9D:        RTL                       

CODE_209D9E:        LDA $0216                 
CODE_209DA1:        AND #$F8                  
CODE_209DA3:        CMP $26                   
CODE_209DA5:        BEQ CODE_209DB4           
CODE_209DA7:        LDA $0216                 
CODE_209DAA:        AND #$F8                  
CODE_209DAC:        STA $26                   
CODE_209DAE:        JSR CODE_209E7E           
CODE_209DB1:        JSR CODE_209EAE           
CODE_209DB4:        RTS                       

CODE_209DB5:        LDA #$FF                  
CODE_209DB7:        STA $7F2000               
CODE_209DBB:        LDX $25                   
CODE_209DBD:        LDA $26,x                 
CODE_209DBF:        AND #$08                  
CODE_209DC1:        LSR A                     
CODE_209DC2:        LSR A                     
CODE_209DC3:        LSR A                     
CODE_209DC4:        STA $C2                   
CODE_209DC6:        LDA $0210                 
CODE_209DC9:        AND #$0F                  
CODE_209DCB:        CPX #$00                  
CODE_209DCD:        BNE CODE_209DD5           
CODE_209DCF:        CMP #$04                  
CODE_209DD1:        BCS CODE_209DD9                   
CODE_209DD3:        BRA CODE_209DDE           

CODE_209DD5:        CMP #$0C                  
CODE_209DD7:        BCS CODE_209DDE                  
CODE_209DD9:        LDA #$01                  
CODE_209DDB:        STA $0707                 
CODE_209DDE:        LDY $070A                 
CODE_209DE1:        LDA $CE80,y               
CODE_209DE4:        STA $08                   
CODE_209DE6:        LDA $070A                 
CODE_209DE9:        ASL A                     
CODE_209DEA:        TAY                       
CODE_209DEB:        LDA $CE5A,y               
CODE_209DEE:        STA $06                   
CODE_209DF0:        LDX $CE5B,y               
CODE_209DF3:        STX $07                   
CODE_209DF5:        LDX $25                   
CODE_209DF7:        LDA $23,x                 
CODE_209DF9:        AND #$F0                  
CODE_209DFB:        LSR A                     
CODE_209DFC:        LSR A                     
CODE_209DFD:        LSR A                     
CODE_209DFE:        TAY                       
CODE_209DFF:        LDA #$7E                  
CODE_209E01:        STA $0F                   
CODE_209E03:        REP #$20                  
CODE_209E05:        LDA $8200,y               
CODE_209E08:        STA $0D                   
CODE_209E0A:        LDA #$001A                
CODE_209E0D:        STA $00                   
CODE_209E0F:        LDA $23,x                 
CODE_209E11:        AND #$000F                
CODE_209E14:        STA $09                   
CODE_209E16:        REP #$10                  
CODE_209E18:        LDX #$0000                
CODE_209E1B:        LDY $09                   
CODE_209E1D:        LDA [$0D],y               
CODE_209E1F:        AND #$00FF                
CODE_209E22:        ASL A                     
CODE_209E23:        ASL A                     
CODE_209E24:        ASL A                     
CODE_209E25:        TAY                       
CODE_209E26:        LDA $C2                   
CODE_209E28:        AND #$00FF                
CODE_209E2B:        BEQ CODE_209E31           
CODE_209E2D:        INY                       
CODE_209E2E:        INY                       
CODE_209E2F:        INY                       
CODE_209E30:        INY                       
CODE_209E31:        PHY                       
CODE_209E32:        LDA $09                   
CODE_209E34:        CLC                       
CODE_209E35:        ADC #$2000                
CODE_209E38:        TAY                       
CODE_209E39:        LDA [$0D],y               
CODE_209E3B:        AND #$00FF                
CODE_209E3E:        BEQ CODE_209E46           
CODE_209E40:        PLA                       
CODE_209E41:        CLC                       
CODE_209E42:        ADC #$0800                
CODE_209E45:        PHA                       
CODE_209E46:        PLY                       
CODE_209E47:        LDA [$06],y               
CODE_209E49:        STA $0382,x               
CODE_209E4C:        INY                       
CODE_209E4D:        INY                       
CODE_209E4E:        LDA [$06],y               
CODE_209E50:        STA $0384,x               
CODE_209E53:        LDA $09                   
CODE_209E55:        CLC                       
CODE_209E56:        ADC #$0010                
CODE_209E59:        STA $09                   
CODE_209E5B:        INX                       
CODE_209E5C:        INX                       
CODE_209E5D:        INX                       
CODE_209E5E:        INX                       
CODE_209E5F:        DEC $00                   
CODE_209E61:        BPL CODE_209E1B           
CODE_209E63:        SEP #$30                  
CODE_209E65:        LDX $25                   
CODE_209E67:        LDA $23,x                 
CODE_209E69:        AND #$0F                  
CODE_209E6B:        ASL A                     
CODE_209E6C:        ORA $C2                   
CODE_209E6E:        STA $0381                 
CODE_209E71:        LDA $23,x                 
CODE_209E73:        AND #$10                  
CODE_209E75:        BEQ CODE_209E79           
CODE_209E77:        LDA #$04                  
CODE_209E79:        STA $0380                 
CODE_209E7C:        RTS                       

CODE_209E7D:        RTS                       

CODE_209E7E:        REP #$20                  
CODE_209E80:        LDX $25                   
CODE_209E82:        LDA $23,x                 
CODE_209E84:        AND #$00F0                
CODE_209E87:        ASL A                     
CODE_209E88:        ASL A                     
CODE_209E89:        XBA                       
CODE_209E8A:        STA $0380                 
CODE_209E8D:        SEP #$20                  
CODE_209E8F:        LDA $23,x                 
CODE_209E91:        AND #$01                  
CODE_209E93:        BEQ CODE_209E9D           
CODE_209E95:        LDA $0380                 
CODE_209E98:        EOR #$08                  
CODE_209E9A:        STA $0380                 
CODE_209E9D:        LDA $0216                 
CODE_209EA0:        AND #$08                  
CODE_209EA2:        BEQ CODE_209EAD           
CODE_209EA4:        LDA $0381                 
CODE_209EA7:        CLC                       
CODE_209EA8:        ADC #$20                  
CODE_209EAA:        STA $0381                 
CODE_209EAD:        RTS                       

CODE_209EAE:        LDX $25                   
CODE_209EB0:        LDA $23,x                 
CODE_209EB2:        AND #$0F                  
CODE_209EB4:        TAY                       
CODE_209EB5:        LDA $823C,y               
CODE_209EB8:        STA $2E                   
CODE_209EBA:        LDA $824C,y               
CODE_209EBD:        STA $2F                   
CODE_209EBF:        REP #$20                  
CODE_209EC1:        LDA $23,x                 
CODE_209EC3:        AND #$000F                
CODE_209EC6:        ASL A                     
CODE_209EC7:        ASL A                     
CODE_209EC8:        ASL A                     
CODE_209EC9:        ASL A                     
CODE_209ECA:        CLC                       
CODE_209ECB:        ADC $2E                   
CODE_209ECD:        STA $2E                   
CODE_209ECF:        SEP #$20                  
CODE_209ED1:        LDA $23,x                 
CODE_209ED3:        AND #$F0                  
CODE_209ED5:        STA $06                   
CODE_209ED7:        STZ $07                   
CODE_209ED9:        STZ $08                   
CODE_209EDB:        STZ $09                   
CODE_209EDD:        REP #$30                  
CODE_209EDF:        LDY $06                   
CODE_209EE1:        LDA [$2E],y               
CODE_209EE3:        STA $0A                   
CODE_209EE5:        INC $06                   
CODE_209EE7:        SEP #$30                  
CODE_209EE9:        JSL CODE_209F37           
CODE_209EED:        REP #$30                  
CODE_209EEF:        TYA                       
CODE_209EF0:        AND #$00FF                
CODE_209EF3:        ASL A                     
CODE_209EF4:        ASL A                     
CODE_209EF5:        ASL A                     
CODE_209EF6:        TAY                       
CODE_209EF7:        LDX $08                   
CODE_209EF9:        LDA $0216                 
CODE_209EFC:        AND #$0008                
CODE_209EFF:        BEQ CODE_209F03           
CODE_209F01:        INY                       
CODE_209F02:        INY                       
CODE_209F03:        PHY                       
CODE_209F04:        LDA $06                   
CODE_209F06:        DEC A                     
CODE_209F07:        CLC                       
CODE_209F08:        ADC #$2000                
CODE_209F0B:        TAY                       
CODE_209F0C:        LDA [$2E],y               
CODE_209F0E:        AND #$00FF                
CODE_209F11:        BEQ CODE_209F19           
CODE_209F13:        PLA                       
CODE_209F14:        CLC                       
CODE_209F15:        ADC #$0800                
CODE_209F18:        PHA                       
CODE_209F19:        PLY                       
CODE_209F1A:        LDA [$0C],y               
CODE_209F1C:        STA $0382,x               
CODE_209F1F:        INY                       
CODE_209F20:        INY                       
CODE_209F21:        INY                       
CODE_209F22:        INY                       
CODE_209F23:        LDA [$0C],y               
CODE_209F25:        STA $0384,x               
CODE_209F28:        INX                       
CODE_209F29:        INX                       
CODE_209F2A:        INX                       
CODE_209F2B:        INX                       
CODE_209F2C:        STX $08                   
CODE_209F2E:        CPX #$0040                
CODE_209F31:        BCC CODE_209EDF           
CODE_209F33:        SEP #$30                  
CODE_209F35:        RTS                       

CODE_209F36:        RTS                       

CODE_209F37:        LDY $070A                 
CODE_209F3A:        LDA $CE80,y               
CODE_209F3D:        STA $0E                   
CODE_209F3F:        LDA $070A                 
CODE_209F42:        ASL A                     
CODE_209F43:        TAX                       
CODE_209F44:        LDA $CE5A,x               
CODE_209F47:        STA $0C                   
CODE_209F49:        LDA $CE5B,x               
CODE_209F4C:        STA $0D                   
CODE_209F4E:        LDY $0A                   
CODE_209F50:        RTL                       
CODE_209F51:        LDX $07                   
CODE_209F53:        LDA [$2E],y               
CODE_209F55:        ASL A                     
CODE_209F56:        ROL $03F0,x               
CODE_209F59:        ASL A                     
CODE_209F5A:        ROL $03F0,x               
CODE_209F5D:        DEY                       
CODE_209F5E:        LDA [$2E],y               
CODE_209F60:        ASL A                     
CODE_209F61:        ROL $03F0,x               
CODE_209F64:        ASL A                     
CODE_209F65:        ROL $03F0,x               
CODE_209F68:        RTS                       
CODE_209F69:        LDA $0C                   
CODE_209F6B:        PHA                       
CODE_209F6C:        TAY                       
CODE_209F6D:        LDA $0D                   
CODE_209F6F:        PHA                       
CODE_209F70:        JSL CODE_209FC1           
CODE_209F74:        STA $0D                   
CODE_209F76:        LDA $823C,y               
CODE_209F79:        STA $2E                   
CODE_209F7B:        STA $D8                   
CODE_209F7D:        LDA $824C,y               
CODE_209F80:        STA $2F                   
CODE_209F82:        CLC                       
CODE_209F83:        ADC #$20                  
CODE_209F85:        STA $D9                   
CODE_209F87:        LDA #$7E                  
CODE_209F89:        STA $DA                   
CODE_209F8B:        LDA $0D                   
CODE_209F8D:        AND #$F0                  
CODE_209F8F:        STA $0E                   
CODE_209F91:        LDA $0F                   
CODE_209F93:        LSR A                     
CODE_209F94:        LSR A                     
CODE_209F95:        LSR A                     
CODE_209F96:        LSR A                     
CODE_209F97:        ORA $0E                   
CODE_209F99:        TAY                       
CODE_209F9A:        PLA                       
CODE_209F9B:        STA $0D                   
CODE_209F9D:        PLA                       
CODE_209F9E:        STA $0C                   
CODE_209FA0:        LDA [$D8],y               
CODE_209FA2:        BEQ CODE_209FBC           
CODE_209FA4:        PHX                       
CODE_209FA5:        LDA $070A                 
CODE_209FA8:        ASL A                     
CODE_209FA9:        TAX                       
CODE_209FAA:        LDA $AB57,x               
CODE_209FAD:        STA $DB                   
CODE_209FAF:        LDA $AB58,x               
CODE_209FB2:        STA $DC                   
CODE_209FB4:        LDA [$2E],y               
CODE_209FB6:        TAY                       
CODE_209FB7:        LDA ($DB),y               
CODE_209FB9:        PLX                       
CODE_209FBA:        BRA CODE_209FBE           
CODE_209FBC:        LDA [$2E],y               
CODE_209FBE:        STA $B3                   
CODE_209FC0:        RTL                       

CODE_209FC1:        CPY #$00                  
CODE_209FC3:        BMI CODE_209FD3           
CODE_209FC5:        CLC                       
CODE_209FC6:        ADC $CEB2,y               
CODE_209FC9:        BCS CODE_209FCF                   
CODE_209FCB:        CMP #$F0                  
CODE_209FCD:        BCC CODE_209FD3           
CODE_209FCF:        CLC                       
CODE_209FD0:        ADC #$10                  
CODE_209FD2:        INY                       
CODE_209FD3:        RTL                       

CODE_209FD4:        CPY #$00                  
CODE_209FD6:        BMI CODE_209FDF           
CODE_209FD8:        SEC                       
CODE_209FD9:        SBC $CEB2,y               
CODE_209FDC:        BCS CODE_209FDF                   
CODE_209FDE:        DEY                       
CODE_209FDF:        RTL                       

CODE_209FE0:        STZ $B4                   
CODE_209FE2:        STZ $B5                   
CODE_209FE4:        STZ $B6                   
CODE_209FE6:        LDA $0F                   
CODE_209FE8:        LSR A                     
CODE_209FE9:        LSR A                     
CODE_209FEA:        LSR A                     
CODE_209FEB:        LSR A                     
CODE_209FEC:        STA $B2                   
CODE_209FEE:        LDA $0E                   
CODE_209FF0:        AND #$0F                  
CODE_209FF2:        ASL A                     
CODE_209FF3:        TAX                       
CODE_209FF4:        LDA $8200,x               
CODE_209FF7:        STA $2E                   
CODE_209FF9:        LDA $8201,x               
CODE_209FFC:        STA $2F                   
CODE_209FFE:        LDA $821E,x               
CODE_20A001:        STA $D8                   
CODE_20A003:        LDA $821F,x               
CODE_20A006:        STA $D9                   
CODE_20A008:        LDA #$7E                  
CODE_20A00A:        STA $DA                   
CODE_20A00C:        LDA $0C                   
CODE_20A00E:        BEQ CODE_20A014           
CODE_20A010:        INC $2F                   
CODE_20A012:        INC $D9                   
CODE_20A014:        LDA $0D                   
CODE_20A016:        AND #$F0                  
CODE_20A018:        ORA $B2                   
CODE_20A01A:        STA $0B                   
CODE_20A01C:        TAY                       
CODE_20A01D:        LDA [$D8],y               
CODE_20A01F:        BEQ CODE_20A037           
CODE_20A021:        LDA $070A                 
CODE_20A024:        ASL A                     
CODE_20A025:        TAX                       
CODE_20A026:        LDA $AB57,x               
CODE_20A029:        STA $DB                   
CODE_20A02B:        LDA $AB58,x               
CODE_20A02E:        STA $DC                   
CODE_20A030:        LDA [$2E],y               
CODE_20A032:        TAY                       
CODE_20A033:        LDA ($DB),y               
CODE_20A035:        BRA CODE_20A039           

CODE_20A037:        LDA [$2E],y               
CODE_20A039:        STA $B3                   
CODE_20A03B:        LDY $070A                 
CODE_20A03E:        CPY #$03                  
CODE_20A040:        BEQ CODE_20A046           
CODE_20A042:        CPY #$0E                  
CODE_20A044:        BNE CODE_20A074           
CODE_20A046:        STZ $00                   
CODE_20A048:        LDA $B3                   
CODE_20A04A:        STA $01                   
CODE_20A04C:        AND #$C0                  
CODE_20A04E:        CLC                       
CODE_20A04F:        ROL A                     
CODE_20A050:        ROL A                     
CODE_20A051:        ROL A                     
CODE_20A052:        TAY                       
CODE_20A053:        LDA $01                   
CODE_20A055:        CMP $1E96,y               
CODE_20A058:        BCC CODE_20A074           
CODE_20A05A:        TYA                       
CODE_20A05B:        ASL A                     
CODE_20A05C:        TAX                       
CODE_20A05D:        LDA $AAD0,x               
CODE_20A060:        STA $02                   
CODE_20A062:        LDA $AAD1,x               
CODE_20A065:        STA $03                   
CODE_20A067:        LDX $00                   
CODE_20A069:        LDA $01                   
CODE_20A06B:        SEC                       
CODE_20A06C:        SBC $1E96,y               
CODE_20A06F:        TAY                       
CODE_20A070:        LDA ($02),y               
CODE_20A072:        STA $B4,x                 
CODE_20A074:        LDA $B3                   
CODE_20A076:        RTL                       
CODE_20A077:        JSR CODE_208753           
CODE_20A07A:        RTL                       
CODE_20A07B:        LDA $0243                 
CODE_20A07E:        BMI CODE_20A0C5           
CODE_20A080:        CMP #$08                  
CODE_20A082:        BCC CODE_20A08A           
CODE_20A084:        LDA #$FF                  
CODE_20A086:        STA $0243                 
CODE_20A089:        RTS                       
CODE_20A08A:        LDX $0245                 
CODE_20A08D:        LDA $CA14,x               
CODE_20A090:        STA $0242                 
CODE_20A093:        LDA $CA19,x               
CODE_20A096:        STA $0241                 
CODE_20A099:        LDA $CA1E,x               
CODE_20A09C:        STA $0240                 
CODE_20A09F:        LDA $0243                 
CODE_20A0A2:        ASL A                     
CODE_20A0A3:        TAY                       
CODE_20A0A4:        REP #$20                  
CODE_20A0A6:        LDA #$0200                
CODE_20A0A9:        STA $02CA                 
CODE_20A0AC:        LDA $0240                 
CODE_20A0AF:        CLC                       
CODE_20A0B0:        ADC $E925,y               
CODE_20A0B3:        STA $0240                 
CODE_20A0B6:        LDA #$2800                
CODE_20A0B9:        CLC                       
CODE_20A0BA:        ADC $E935,y               
CODE_20A0BD:        STA $023E                 
CODE_20A0C0:        SEP #$20                  
CODE_20A0C2:        INC $0243                 
CODE_20A0C5:        RTS                       
CODE_20A0C6:        LDA $0243                 
CODE_20A0C9:        BMI CODE_20A111           
CODE_20A0CB:        CMP #$04                  
CODE_20A0CD:        BCC CODE_20A0D5           
CODE_20A0CF:        LDA #$FF                  
CODE_20A0D1:        STA $0243                 
CODE_20A0D4:        RTS                       
CODE_20A0D5:        LDX $0246                 
CODE_20A0D8:        LDA $CA23,x               
CODE_20A0DB:        STA $0242                 
CODE_20A0DE:        LDA $CA26,x               
CODE_20A0E1:        STA $0241                 
CODE_20A0E4:        LDA $CA29,x               
CODE_20A0E7:        STA $0240                 
CODE_20A0EA:        LDA $0243                 
CODE_20A0ED:        ASL A                     
CODE_20A0EE:        ASL A                     
CODE_20A0EF:        TAY                       
CODE_20A0F0:        REP #$20                  
CODE_20A0F2:        LDA #$0400                
CODE_20A0F5:        STA $02CA                 
CODE_20A0F8:        LDA $0240                 
CODE_20A0FB:        CLC                       
CODE_20A0FC:        ADC $E925,y               
CODE_20A0FF:        STA $0240                 
CODE_20A102:        LDA #$2800                
CODE_20A105:        CLC                       
CODE_20A106:        ADC $E935,y               
CODE_20A109:        STA $023E                 
CODE_20A10C:        SEP #$20                  
CODE_20A10E:        INC $0243                 
CODE_20A111:        RTS                       

CODE_20A112:        JML CODE_009641           

CODE_20A116:        NOP                       
CODE_20A117:        NOP                       
CODE_20A118:        LDA #$AA                  
CODE_20A11A:        STA $702000               
CODE_20A11E:        CMP $700000               
CODE_20A122:        BNE CODE_20A112           
CODE_20A124:        LDA #$55                  
CODE_20A126:        STA $702000               
CODE_20A12A:        CMP $700000               
CODE_20A12E:        BNE CODE_20A112           
CODE_20A130:        SEI                       
CODE_20A131:        STZ $4200                 
CODE_20A134:        STZ $420B                 
CODE_20A137:        STZ $420C                 
CODE_20A13A:        LDA #$80                  
CODE_20A13C:        STA $2100                 
CODE_20A13F:        REP #$20                  
CODE_20A141:        PHD                       
CODE_20A142:        LDA #$2100                
CODE_20A145:        TCD                       
CODE_20A146:        SEP #$30                  
CODE_20A148:        LDA #$21                  
CODE_20A14A:        PHA                       
CODE_20A14B:        PLB                       
CODE_20A14C:        LDA #$03                  
CODE_20A14E:        STA $021E                 
CODE_20A151:        STA $01                   
CODE_20A153:        LDA #$09                  
CODE_20A155:        STA $05                   
CODE_20A157:        STA $020C                 
CODE_20A15A:        STZ $020D                 
CODE_20A15D:        LDA #$03                  
CODE_20A15F:        STA $07                   
CODE_20A161:        LDA #$13                  
CODE_20A163:        STA $08                   
CODE_20A165:        LDA #$51                  
CODE_20A167:        STA $09                   
CODE_20A169:        STZ $0A                   
CODE_20A16B:        LDA #$22                  
CODE_20A16D:        STA $0B                   
CODE_20A16F:        LDA #$05                  
CODE_20A171:        STA $0C                   
CODE_20A173:        LDA #$15                  
CODE_20A175:        STA $2C                   
CODE_20A177:        STA $0208                 
CODE_20A17A:        LDA #$02                  
CODE_20A17C:        STA $2D                   
CODE_20A17E:        STA $0209                 
CODE_20A181:        LDA #$00                  
CODE_20A183:        STA $30                   
CODE_20A185:        STA $0203                 
CODE_20A188:        LDA #$00                  
CODE_20A18A:        STA $31                   
CODE_20A18C:        STA $0204                 
CODE_20A18F:        LDA #$20                  
CODE_20A191:        STA $0205                 
CODE_20A194:        LDA #$40                  
CODE_20A196:        STA $0206                 
CODE_20A199:        LDA #$80                  
CODE_20A19B:        STA $0207                 
CODE_20A19E:        STZ $33                   
CODE_20A1A0:        PLD                       
CODE_20A1A1:        STZ $1208                 
CODE_20A1A4:        STZ $1209                 
CODE_20A1A7:        STZ $120E                 
CODE_20A1AA:        STZ $120F                 
CODE_20A1AD:        STZ $120A                 
CODE_20A1B0:        STZ $120B                 
CODE_20A1B3:        STA $120D                 
CODE_20A1B6:        LDA #$01                  
CODE_20A1B8:        STA $120C                 
CODE_20A1BB:        JMP CODE_208051           

CODE_20A1BE:        STA $08                   
CODE_20A1C0:        STX $09                   
CODE_20A1C2:        STY $0A                   
CODE_20A1C4:        STZ $00                   
CODE_20A1C6:        LDA #$A5                  
CODE_20A1C8:        STA $01                   
CODE_20A1CA:        LDA #$7F                  
CODE_20A1CC:        STA $02                   
CODE_20A1CE:        JSR CODE_20A20A           
CODE_20A1D1:        RTL                       

CODE_20A1D2:        STA $08                   
CODE_20A1D4:        STX $09                   
CODE_20A1D6:        STY $0A                   
CODE_20A1D8:        STZ $00                   
CODE_20A1DA:        LDA #$60                  
CODE_20A1DC:        STA $01                   
CODE_20A1DE:        LDA #$7E                  
CODE_20A1E0:        STA $02                   
CODE_20A1E2:        JSR CODE_20A20A           
CODE_20A1E5:        RTL                       

CODE_20A1E6:        STA $08                   
CODE_20A1E8:        STX $09                   
CODE_20A1EA:        STY $0A                   
CODE_20A1EC:        STZ $00                   
CODE_20A1EE:        LDA #$80                  
CODE_20A1F0:        STA $01                   
CODE_20A1F2:        LDA #$7E                  
CODE_20A1F4:        STA $02                   
CODE_20A1F6:        JSR CODE_20A20A           
CODE_20A1F9:        RTL                       

CODE_20A1FA:        STA $08                   
CODE_20A1FC:        STX $09                   
CODE_20A1FE:        STY $0A                   
CODE_20A200:        STZ $00                   
CODE_20A202:        LDA #$00                  
CODE_20A204:        STA $01                   
CODE_20A206:        LDA #$7F                  
CODE_20A208:        STA $02                   
CODE_20A20A:        REP #$10                  
CODE_20A20C:        LDY #$0000                
CODE_20A20F:        JSR CODE_20A2A5           
CODE_20A212:        CMP #$FF                  
CODE_20A214:        BNE CODE_20A219           
CODE_20A216:        SEP #$10                  
CODE_20A218:        RTS                       

CODE_20A219:        STA $05                   
CODE_20A21B:        AND #$E0                  
CODE_20A21D:        CMP #$E0                  
CODE_20A21F:        BEQ CODE_20A22B           
CODE_20A221:        PHA                       
CODE_20A222:        LDA $05                   
CODE_20A224:        REP #$20                  
CODE_20A226:        AND #$001F                
CODE_20A229:        BRA CODE_20A23D           

CODE_20A22B:        LDA $05                   
CODE_20A22D:        ASL A                     
CODE_20A22E:        ASL A                     
CODE_20A22F:        ASL A                     
CODE_20A230:        AND #$E0                
CODE_20A232:        PHA
CODE_20A233:        LDA $05                   
CODE_20A235:        AND #$03       
CODE_20A236:        XBA         
CODE_20A238:        JSR CODE_20A2A5           
CODE_20A23B:        REP #$20                  
CODE_20A23D:        INC A                     
CODE_20A23E:        STA $03                   
CODE_20A240:        SEP #$20                  
CODE_20A242:        PLA                       
CODE_20A243:        BEQ CODE_20A25B           
CODE_20A245:        BMI CODE_20A28D           
CODE_20A247:        ASL A                     
CODE_20A248:        BPL CODE_20A26A           
CODE_20A24A:        ASL A                     
CODE_20A24B:        BPL CODE_20A277           
CODE_20A24D:        JSR CODE_20A2A5           
CODE_20A250:        LDX $03                   
CODE_20A252:        STA [$00],y               
CODE_20A254:        INC A                     
CODE_20A255:        INY                       
CODE_20A256:        DEX                       
CODE_20A257:        BNE CODE_20A252           
CODE_20A259:        BRA CODE_20A20F           

CODE_20A25B:        JSR CODE_20A2A5           
CODE_20A25E:        STA [$00],y               
CODE_20A260:        INY                       
CODE_20A261:        LDX $03                   
CODE_20A263:        DEX                       
CODE_20A264:        STX $03                   
CODE_20A266:        BNE CODE_20A25B           
CODE_20A268:        BRA CODE_20A20F           

CODE_20A26A:        JSR CODE_20A2A5           
CODE_20A26D:        LDX $03                   
CODE_20A26F:        STA [$00],y               
CODE_20A271:        INY                       
CODE_20A272:        DEX                       
CODE_20A273:        BNE CODE_20A26F           
CODE_20A275:        BRA CODE_20A20F           

CODE_20A277:        JSR CODE_20A2B4           
CODE_20A27A:        LDX $03                   
CODE_20A27C:        XBA                       
CODE_20A27D:        STA [$00],y               
CODE_20A27F:        INY                       
CODE_20A280:        DEX                       
CODE_20A281:        BEQ CODE_20A28A           
CODE_20A283:        XBA                       
CODE_20A284:        STA [$00],y               
CODE_20A286:        INY                       
CODE_20A287:        DEX                       
CODE_20A288:        BNE CODE_20A27C           
CODE_20A28A:        JMP CODE_20A20F           

CODE_20A28D:        JSR CODE_20A2B4           
CODE_20A290:        TAX                       
CODE_20A291:        PHY                       
CODE_20A292:        TXY                       
CODE_20A293:        LDA [$00],y               
CODE_20A295:        PLY                       
CODE_20A296:        STA [$00],y               
CODE_20A298:        INY                       
CODE_20A299:        INX                       
CODE_20A29A:        REP #$20                  
CODE_20A29C:        DEC $03                   
CODE_20A29E:        SEP #$20                  
CODE_20A2A0:        BNE CODE_20A291           
CODE_20A2A2:        JMP CODE_20A20F           

CODE_20A2A5:        LDA [$08]                 
CODE_20A2A7:        LDX $08                   
CODE_20A2A9:        INX                       
CODE_20A2AA:        BNE CODE_20A2B1           
CODE_20A2AC:        LDX #$00                  
CODE_20A2AE:        BRA CODE_20A296           

CODE_20A2B0:        ASL A                     
CODE_20A2B1:        STX $08                   
CODE_20A2B3:        RTS                       

CODE_20A2B4:        LDA [$08]                 
CODE_20A2B6:        LDX $08                   
CODE_20A2B8:        INX                       
CODE_20A2B9:        BNE CODE_20A2C0           
CODE_20A2BB:        LDX #$00                  
CODE_20A2BD:        BRA CODE_20A2A5           

CODE_20A2BF:        ASL A                     ;
CODE_20A2C0:        STX $08                   ;
CODE_20A2C2:        XBA                       ;
CODE_20A2C3:        LDA [$08]                 ;
CODE_20A2C5:        INX                       ;
CODE_20A2C6:        BNE CODE_20A2CD           ;
CODE_20A2C8:        LDX #$8000                ;
CODE_20A2CB:        INC $0A                   ;
CODE_20A2CD:        STX $08                   ;
CODE_20A2CF:        RTS                       ;

CODE_20A2D0:        STZ $01                   
CODE_20A2D2:        LDA #$BF                  
CODE_20A2D4:        STA $00                   
CODE_20A2D6:        JSR CODE_20FA17           
CODE_20A2D9:        JSL CODE_22E0A9           
CODE_20A2DD:        JSL CODE_25F05A           
CODE_20A2E1:        JSL CODE_25F934           
CODE_20A2E5:        STZ $4200                 
CODE_20A2E8:        LDA #$11                  
CODE_20A2EA:        STA $020F                 
CODE_20A2ED:        LDA $7E3955               
CODE_20A2F1:        INC A                     
CODE_20A2F2:        STA $7E3955               
CODE_20A2F6:        LDA #$04                  
CODE_20A2F8:        STA $05EE                 
CODE_20A2FB:        STZ $12                   
CODE_20A2FD:        STZ $0210                 
CODE_20A300:        STZ $0211                 
CODE_20A303:        STZ $13                   
CODE_20A305:        STZ $0216                 
CODE_20A308:        STZ $0217                 
CODE_20A30B:        STZ $23                   
CODE_20A30D:        STZ $24                   
CODE_20A30F:        STZ $25                   
CODE_20A311:        LDA #$00                  
CODE_20A313:        STA $7E3966               
CODE_20A317:        STA $7E3965               
CODE_20A31B:        STA $7E3964               
CODE_20A31F:        STZ $00                   
CODE_20A321:        LDX #$05                  
CODE_20A323:        STX $01                   
CODE_20A325:        LDY #$9D                  
CODE_20A327:        STA ($00),y               
CODE_20A329:        DEY                       
CODE_20A32A:        BPL CODE_20A327           
CODE_20A32C:        LDA $A381                 
CODE_20A32F:        STA $2B                   
CODE_20A331:        LDA $A382                 
CODE_20A334:        STA $2C                   
CODE_20A336:        LDA #$21                  
CODE_20A338:        STA $2D                   
CODE_20A33A:        LDY $070A                 
CODE_20A33D:        LDA $C975,y               
CODE_20A340:        STA $0739                 
CODE_20A343:        STZ $1CF2                 
CODE_20A346:        JSL CODE_209C00           
CODE_20A34A:        JSR CODE_209683           
CODE_20A34D:        LDA #$11                  
CODE_20A34F:        STA $0208                 
CODE_20A352:        LDA #$02                  
CODE_20A354:        STA $0209                 
CODE_20A357:        LDA #$02                  
CODE_20A359:        STA $0203                 
CODE_20A35C:        LDA #$20                  
CODE_20A35E:        STA $0204                 
CODE_20A361:        JSL CODE_20AFC3           
CODE_20A365:        LDA #$26                  
CODE_20A367:        STA $0612                 
CODE_20A36A:        JSR CODE_209CC0           
CODE_20A36D:        JSL CODE_25F0A6           
CODE_20A371:        LDA #$00                  
CODE_20A373:        STA $7E3955               
CODE_20A377:        JSL CODE_29E29D           
CODE_20A37B:        LDA #$80                  
CODE_20A37D:        STA $4200                 
CODE_20A380:        LDA #$16                  
CODE_20A382:        LDY $1F26                 
CODE_20A385:        BEQ CODE_20A389           
CODE_20A387:        LDA #$11                  ;\
CODE_20A389:        STA $1202                 ;/Hammer Bros./Battle mode music
CODE_20A38C:        JSR CODE_20801F           
CODE_20A38F:        JSL CODE_22E0A9           
CODE_20A393:        JSL CODE_26CBB0           
CODE_20A397:        LDA $0014                 
CODE_20A39A:        BEQ CODE_20A38C           
CODE_20A39C:        LDA $078C                 
CODE_20A39F:        DEC A                     
CODE_20A3A0:        EOR #$01                  
CODE_20A3A2:        TAX                       
CODE_20A3A3:        LDA #$01                  
CODE_20A3A5:        STA $1203                 
CODE_20A3A8:        INC $02DA,x               
CODE_20A3AB:        LDA $02DA,x               
CODE_20A3AE:        CMP #$05                  
CODE_20A3B0:        BCC CODE_20A3BA           
CODE_20A3B2:        INC $02DE,x               
CODE_20A3B5:        LDA #$05                  
CODE_20A3B7:        STA $1203                 
CODE_20A3BA:        JSL CODE_25F1E1           
CODE_20A3BE:        JSL CODE_22E0A9           
CODE_20A3C2:        JSL CODE_25F956           
CODE_20A3C6:        JSR CODE_20801F           
CODE_20A3C9:        LDA $0014                 
CODE_20A3CC:        BNE CODE_20A3C2           
CODE_20A3CE:        REP #$20                  
CODE_20A3D0:        LDA #$4900                
CODE_20A3D3:        STA $001602               
CODE_20A3D7:        LDA #$5400                
CODE_20A3DA:        STA $001610               
CODE_20A3DE:        LDA #$0900                
CODE_20A3E1:        STA $001604               
CODE_20A3E5:        STA $001612               
CODE_20A3E9:        LDA #$182D                
CODE_20A3EC:        STA $001606               
CODE_20A3F0:        STA $001608               
CODE_20A3F4:        STA $00160A               
CODE_20A3F8:        STA $00160C               
CODE_20A3FC:        STA $00160E               
CODE_20A400:        LDA #$1C2D                
CODE_20A403:        STA $001614               
CODE_20A407:        STA $001616               
CODE_20A40B:        STA $001618               
CODE_20A40F:        STA $00161A               
CODE_20A413:        STA $00161C               
CODE_20A417:        LDA #$FFFF                
CODE_20A41A:        STA $00161E               
CODE_20A41E:        SEP #$20                  
CODE_20A420:        JSL CODE_26CC15           
CODE_20A424:        INC $0211                 
CODE_20A427:        INC $0014                 
CODE_20A42A:        STZ $0356                 
CODE_20A42D:        JSL CODE_25F384           
CODE_20A431:        LDA $7F300C               
CODE_20A435:        BEQ CODE_20A43E           
CODE_20A437:        JSR CODE_20801F           
CODE_20A43A:        JML CODE_0080DE           

CODE_20A43E:        JSR CODE_20801F           
CODE_20A441:        JSL CODE_25F9A1           
CODE_20A445:        LDA $0014                 
CODE_20A448:        BNE CODE_20A43E           
CODE_20A44A:        STZ $0075                 
CODE_20A44D:        STZ $192E                 
CODE_20A450:        STZ $192F                 
CODE_20A453:        JMP CODE_20A380           

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

CODE_20A4B6:        LDA $28                   
CODE_20A4B8:        ASL A                     
CODE_20A4B9:        TAX                       
CODE_20A4BA:        LDA.l PNTR_20D301,x             
CODE_20A4BE:        STA $36                   
CODE_20A4C0:        LDA.l PNTR_20D301+1,x             
CODE_20A4C4:        STA $37                   
CODE_20A4C6:        LDA #$20                  
CODE_20A4C8:        STA $38                   
CODE_20A4CA:        LDA #$01                  
CODE_20A4CC:        STA $1C                   
CODE_20A4CE:        STZ $0154                 
CODE_20A4D1:        LDA $0154                 
CODE_20A4D4:        BPL CODE_20A4D1           
CODE_20A4D6:        STZ $1C                   
CODE_20A4D8:        CLI                       
CODE_20A4D9:        RTS                       

CODE_20A4DA:        REP #$20                  
CODE_20A4DC:        LDA #$C000                
CODE_20A4DF:        STA $0D                   
CODE_20A4E1:        LDX #$37                  
CODE_20A4E3:        STX $0F                   
CODE_20A4E5:        LDA #$2000                
CODE_20A4E8:        STA $0B                   
CODE_20A4EA:        JSR CODE_20AFF0           
CODE_20A4ED:        LDA #$B000                
CODE_20A4F0:        STA $0D                   
CODE_20A4F2:        LDX #$3A                  
CODE_20A4F4:        STX $0F                   
CODE_20A4F6:        LDA #$3000                
CODE_20A4F9:        STA $0B                   
CODE_20A4FB:        JSR CODE_20AFF0           
CODE_20A4FE:        LDA #$B000                
CODE_20A501:        STA $0D                   
CODE_20A503:        LDX #$3A                  
CODE_20A505:        STX $0F                   
CODE_20A507:        LDA #$0800                
CODE_20A50A:        STA $0B                   
CODE_20A50C:        LDA #$3C00                
CODE_20A50F:        JSR CODE_20AFF0           
CODE_20A512:        LDA #$B000                
CODE_20A515:        STA $0D                   
CODE_20A517:        LDX #$35                  
CODE_20A519:        STX $0F                   
CODE_20A51B:        LDA #$1000                
CODE_20A51E:        STA $0B                   
CODE_20A520:        LDA #$4800                
CODE_20A523:        JSR CODE_20AFF0           
CODE_20A526:        LDA #$C800                
CODE_20A529:        STA $0D                   
CODE_20A52B:        LDX #$37                  
CODE_20A52D:        STX $0F                   
CODE_20A52F:        LDA #$0800                
CODE_20A532:        STA $0B                   
CODE_20A534:        LDA #$6400                
CODE_20A537:        JSR CODE_20B016           
CODE_20A53A:        LDA #$A000                
CODE_20A53D:        STA $0D                   
CODE_20A53F:        LDX #$30                  
CODE_20A541:        STX $0F                   
CODE_20A543:        LDA #$0800                
CODE_20A546:        STA $0B                   
CODE_20A548:        LDA #$6800                
CODE_20A54B:        JSR CODE_20B016           
CODE_20A54E:        LDA #$F800                
CODE_20A551:        STA $0D                   
CODE_20A553:        LDX #$37                  
CODE_20A555:        STX $0F                   
CODE_20A557:        LDA #$0800                
CODE_20A55A:        STA $0B                   
CODE_20A55C:        LDA #$6C00                
CODE_20A55F:        JSR CODE_20B016           
CODE_20A562:        LDA #$F800                
CODE_20A565:        STA $0D                   
CODE_20A567:        LDX #$35                  
CODE_20A569:        STX $0F                   
CODE_20A56B:        LDA #$0800                
CODE_20A56E:        STA $0B                   
CODE_20A570:        LDA #$7000                
CODE_20A573:        JSR CODE_20B016           
CODE_20A576:        LDA #$F000                
CODE_20A579:        STA $0D                   
CODE_20A57B:        LDX #$37                  
CODE_20A57D:        STX $0F                   
CODE_20A57F:        LDA #$0800                
CODE_20A582:        STA $0B                   
CODE_20A584:        LDA #$7800                
CODE_20A587:        JSR CODE_20B016           
CODE_20A58A:        SEP #$20                  
CODE_20A58C:        RTS                       

CODE_20A58D:        LDA #$8000                  
CODE_20A590:        STA $0D
CODE_20A592:        LDX #$39                 
CODE_20A594:        STX $0F                   
CODE_20A596:        LDA #$4000                
CODE_20A599:        STA $0B                   
CODE_20A59B:        JSR CODE_20B013           
CODE_20A59E:        BRL CODE_20AEDC           

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

CODE_20AC81:        PHB                       
CODE_20AC82:        PHK                       
CODE_20AC83:        PLB                       
CODE_20AC84:        REP #$20                  
CODE_20AC86:        LDY $1EBF                 
CODE_20AC89:        STY $00                   
CODE_20AC8B:        LDA DATA_20A601,y               
CODE_20AC8E:        AND #$00FF                
CODE_20AC91:        TAX                       
CODE_20AC92:        TYA                       
CODE_20AC93:        AND #$00FF                
CODE_20AC96:        ASL A                     
CODE_20AC97:        TAY                       
CODE_20AC98:        LDA DATA_20A5A1,y               
CODE_20AC9B:        STA $0D                   
CODE_20AC9D:        STX $0F                   
CODE_20AC9F:        LDA #$1000                
CODE_20ACA2:        STA $0B                   
CODE_20ACA4:        LDA #$2000                
CODE_20ACA7:        JSR CODE_20AFF0           
CODE_20ACAA:        LDX $00                   
CODE_20ACAC:        CPX #$0F                  
CODE_20ACAE:        BNE CODE_20ACC7           
CODE_20ACB0:        LDX $0726                 
CODE_20ACB3:        BEQ CODE_20ACC7           
CODE_20ACB5:        STZ $0D                   
CODE_20ACB7:        LDA #$3280                
CODE_20ACBA:        STA $0E                   
CODE_20ACBC:        LDA #$0800                
CODE_20ACBF:        STA $0B                   
CODE_20ACC1:        LDA #$2400                
CODE_20ACC4:        JSR CODE_20AFF0           
CODE_20ACC7:        LDA $0567                 
CODE_20ACCA:        AND #$00FF                
CODE_20ACCD:        BEQ CODE_20ACDA           
CODE_20ACCF:        LDY #$33                  
CODE_20ACD1:        STY $0F                   
CODE_20ACD3:        LDA #$F000                
CODE_20ACD6:        STA $0D                   
CODE_20ACD8:        BRA CODE_20ACE7           

CODE_20ACDA:        LDA DATA_20A631,y               
CODE_20ACDD:        STA $0D                   
CODE_20ACDF:        LDY $00                   
CODE_20ACE1:        LDA DATA_20A691,y               
CODE_20ACE4:        TAX                       
CODE_20ACE5:        STX $0F                   
CODE_20ACE7:        LDA #$1000                
CODE_20ACEA:        STA $0B                   
CODE_20ACEC:        LDA #$2800                
CODE_20ACEF:        JSR CODE_20AFF0           
CODE_20ACF2:        LDY $1EBF                 
CODE_20ACF5:        LDA DATA_20A721,y               
CODE_20ACF8:        AND #$00FF                
CODE_20ACFB:        TAX                       
CODE_20ACFC:        TYA                       
CODE_20ACFD:        AND #$00FF                
CODE_20AD00:        ASL A                     
CODE_20AD01:        TAY                       
CODE_20AD02:        LDA DATA_20A6C1,y               
CODE_20AD05:        STA $0D                   
CODE_20AD07:        STX $0F                   
CODE_20AD09:        LDA #$0800                
CODE_20AD0C:        STA $0B                   
CODE_20AD0E:        LDA #$3000                
CODE_20AD11:        JSR CODE_20AFF0           
CODE_20AD14:        STZ $0D                   
CODE_20AD16:        LDA $0350                 
CODE_20AD19:        AND #$00FF                
CODE_20AD1C:        ASL A                     
CODE_20AD1D:        TAY                       
CODE_20AD1E:        LDA DATA_20A751,y               
CODE_20AD21:        STA $0E                   
CODE_20AD23:        LDA $02BF                 
CODE_20AD26:        AND #$00FF                
CODE_20AD29:        CMP #$0006                
CODE_20AD2C:        BNE CODE_20AD33           
CODE_20AD2E:        LDA #$3AC0                
CODE_20AD31:        STA $0E                   
CODE_20AD33:        LDA #$0800                
CODE_20AD36:        STA $0B                   
CODE_20AD38:        LDA #$3400                
CODE_20AD3B:        JSR CODE_20AFF0           
CODE_20AD3E:        STZ $0D                   
CODE_20AD40:        LDA $0350                 
CODE_20AD43:        AND #$00FF                
CODE_20AD46:        ASL A                     
CODE_20AD47:        TAY                       
CODE_20AD48:        LDA DATA_20A79D,y               
CODE_20AD4B:        STA $0E                   
CODE_20AD4D:        LDA $02BF                 
CODE_20AD50:        AND #$00FF                
CODE_20AD53:        CMP #$0006                
CODE_20AD56:        BNE CODE_20AD5D           
CODE_20AD58:        LDA #$3AC8                
CODE_20AD5B:        STA $0E                   
CODE_20AD5D:        LDA #$0800                
CODE_20AD60:        STA $0B                   
CODE_20AD62:        LDA #$3800                
CODE_20AD65:        JSR CODE_20AFF0           
CODE_20AD68:        LDY $1EBF                 
CODE_20AD6B:        LDA DATA_20A849,y               
CODE_20AD6E:        AND #$00FF                
CODE_20AD71:        TAX                       
CODE_20AD72:        TYA                       
CODE_20AD73:        AND #$00FF                
CODE_20AD76:        ASL A                     
CODE_20AD77:        TAY                       
CODE_20AD78:        LDA DATA_20A7E9,y               
CODE_20AD7B:        STA $0D                   
CODE_20AD7D:        STX $0F                   
CODE_20AD7F:        LDA #$0800                
CODE_20AD82:        STA $0B                   
CODE_20AD84:        LDA #$3C00                
CODE_20AD87:        JSR CODE_20AFF0           
CODE_20AD8A:        LDY $1EBF                 
CODE_20AD8D:        LDA DATA_20A8D9,y               
CODE_20AD90:        AND #$00FF                
CODE_20AD93:        TAX                       
CODE_20AD94:        TYA                       
CODE_20AD95:        AND #$00FF                
CODE_20AD98:        ASL A                     
CODE_20AD99:        TAY                       
CODE_20AD9A:        LDA DATA_20A879,y               
CODE_20AD9D:        STA $0D                   
CODE_20AD9F:        STX $0F                   
CODE_20ADA1:        LDA #$0800                
CODE_20ADA4:        STA $0B                   
CODE_20ADA6:        LDA #$4000                
CODE_20ADA9:        JSR CODE_20AFF0           
CODE_20ADAC:        LDA #$B800                
CODE_20ADAF:        STA $0D                   
CODE_20ADB1:        LDX #$32                  
CODE_20ADB3:        STX $0F                   
CODE_20ADB5:        LDA #$0800                
CODE_20ADB8:        STA $0B                   
CODE_20ADBA:        LDA #$4400                
CODE_20ADBD:        JSR CODE_20AFF0           
CODE_20ADC0:        LDY $1EBF                 
CODE_20ADC3:        CPY #$16                  
CODE_20ADC5:        BNE CODE_20ADCA           
CODE_20ADC7:        BRL CODE_20A58D           
CODE_20ADCA:        LDA #$B000                
CODE_20ADCD:        STA $0D                   
CODE_20ADCF:        LDX #$3F                  
CODE_20ADD1:        STX $0F                   
CODE_20ADD3:        LDA #$0800                
CODE_20ADD6:        STA $0B                   
CODE_20ADD8:        JSR CODE_20B013           
CODE_20ADDB:        LDY $1EBF                 
CODE_20ADDE:        LDA DATA_20A969,y               
CODE_20ADE1:        AND #$00FF                
CODE_20ADE4:        TAX                       
CODE_20ADE5:        TYA                       
CODE_20ADE6:        AND #$00FF                
CODE_20ADE9:        ASL A                     
CODE_20ADEA:        TAY                       
CODE_20ADEB:        LDA DATA_20A909,y               
CODE_20ADEE:        STA $0D                   
CODE_20ADF0:        STX $0F                   
CODE_20ADF2:        LDA #$0800                
CODE_20ADF5:        STA $0B                   
CODE_20ADF7:        LDA #$6400                
CODE_20ADFA:        JSR CODE_20B016           
CODE_20ADFD:        LDY $1EBF                 
CODE_20AE00:        LDA DATA_20A9F9,y               
CODE_20AE03:        AND #$00FF                
CODE_20AE06:        TAX                       
CODE_20AE07:        TYA                       
CODE_20AE08:        AND #$00FF                
CODE_20AE0B:        ASL A                     
CODE_20AE0C:        TAY                       
CODE_20AE0D:        LDA DATA_20A999,y               
CODE_20AE10:        STA $0D                   
CODE_20AE12:        STX $0F                   
CODE_20AE14:        LDA #$0800                
CODE_20AE17:        STA $0B                   
CODE_20AE19:        LDA #$6800                
CODE_20AE1C:        JSR CODE_20B016           
CODE_20AE1F:        LDY $1EBF                 
CODE_20AE22:        LDA DATA_20AA89,y               
CODE_20AE25:        AND #$00FF                
CODE_20AE28:        TAX                       
CODE_20AE29:        TYA                       
CODE_20AE2A:        AND #$00FF                
CODE_20AE2D:        ASL A                     
CODE_20AE2E:        TAY                       
CODE_20AE2F:        LDA DATA_20AA29,y               
CODE_20AE32:        STA $0D                   
CODE_20AE34:        STX $0F                   
CODE_20AE36:        LDA #$0800                
CODE_20AE39:        STA $0B                   
CODE_20AE3B:        LDA #$6C00                
CODE_20AE3E:        JSR CODE_20B016           
CODE_20AE41:        LDY $1EBF                 
CODE_20AE44:        LDA DATA_20AB19,y               
CODE_20AE47:        AND #$00FF                
CODE_20AE4A:        TAX                       
CODE_20AE4B:        TYA                       
CODE_20AE4C:        AND #$00FF                
CODE_20AE4F:        ASL A                     
CODE_20AE50:        TAY                       
CODE_20AE51:        LDA DATA_20AAB9,y               
CODE_20AE54:        STA $0D                   
CODE_20AE56:        STX $0F                   
CODE_20AE58:        LDA #$0800                
CODE_20AE5B:        STA $0B                   
CODE_20AE5D:        LDA #$7000                
CODE_20AE60:        JSR CODE_20B016           
CODE_20AE63:        LDY $1EBF                 
CODE_20AE66:        CPY #$0A                  
CODE_20AE68:        BNE CODE_20AE87           
CODE_20AE6A:        LDA $0727                 
CODE_20AE6D:        AND #$00FF                
CODE_20AE70:        TAY                       
CODE_20AE71:        LDA $AC69,y               
CODE_20AE74:        AND #$00FF                
CODE_20AE77:        TAX                       
CODE_20AE78:        TYA                       
CODE_20AE79:        AND #$00FF                
CODE_20AE7C:        ASL A                     
CODE_20AE7D:        TAY                       
CODE_20AE7E:        LDA DATA_20AC71,y               
CODE_20AE81:        STA $0D                   
CODE_20AE83:        STX $0F                   
CODE_20AE85:        BRA CODE_20AE9B           

CODE_20AE87:        LDA DATA_20ABA9,y               
CODE_20AE8A:        AND #$00FF                
CODE_20AE8D:        TAX                       
CODE_20AE8E:        TYA                       
CODE_20AE8F:        AND #$00FF                
CODE_20AE92:        ASL A                     
CODE_20AE93:        TAY                       
CODE_20AE94:        LDA DATA_20AB49,y               
CODE_20AE97:        STA $0D                   
CODE_20AE99:        STX $0F                   
CODE_20AE9B:        LDA #$0800                
CODE_20AE9E:        STA $0B                   
CODE_20AEA0:        LDA #$7400                
CODE_20AEA3:        JSR CODE_20B016           
CODE_20AEA6:        LDY $1EBF                 
CODE_20AEA9:        LDA DATA_20AC39,y               
CODE_20AEAC:        AND #$00FF                
CODE_20AEAF:        TAX                       
CODE_20AEB0:        TYA                       
CODE_20AEB1:        AND #$00FF                
CODE_20AEB4:        ASL A                     
CODE_20AEB5:        TAY                       
CODE_20AEB6:        LDA DATA_20ABD9,y               
CODE_20AEB9:        STA $0D                   
CODE_20AEBB:        STX $0F                   
CODE_20AEBD:        LDA #$0800                
CODE_20AEC0:        STA $0B                   
CODE_20AEC2:        LDA #$7800                
CODE_20AEC5:        JSR CODE_20B016           
CODE_20AEC8:        LDA #$B800                
CODE_20AECB:        STA $0D                   
CODE_20AECD:        LDX #$3F                  
CODE_20AECF:        STX $0F                   
CODE_20AED1:        LDA #$0800                
CODE_20AED4:        STA $0B                   
CODE_20AED6:        LDA #$7C00                
CODE_20AED9:        JSR CODE_20B016           
CODE_20AEDC:        SEP #$20                  
CODE_20AEDE:        LDA $02BF                 
CODE_20AEE1:        CMP #$02                  
CODE_20AEE3:        BEQ CODE_20AF14           
CODE_20AEE5:        CMP #$05                  
CODE_20AEE7:        BEQ CODE_20AF14           
CODE_20AEE9:        CMP #$07                  
CODE_20AEEB:        BEQ CODE_20AF14           
CODE_20AEED:        CMP #$08                  
CODE_20AEEF:        BEQ CODE_20AF14           
CODE_20AEF1:        CMP #$09                  
CODE_20AEF3:        BEQ CODE_20AF27           
CODE_20AEF5:        CMP #$0A                  
CODE_20AEF7:        BEQ CODE_20AF3A           
CODE_20AEF9:        CMP #$0B                  
CODE_20AEFB:        BEQ CODE_20AF27           
CODE_20AEFD:        CMP #$0C                  
CODE_20AEFF:        BEQ CODE_20AF14           
CODE_20AF01:        CMP #$0E                  
CODE_20AF03:        BEQ CODE_20AF14           
CODE_20AF05:        CMP #$0F                  
CODE_20AF07:        BEQ CODE_20AF27           
CODE_20AF09:        CMP #$03                  
CODE_20AF0B:        BEQ CODE_20AF4D           
CODE_20AF0D:        CMP #$04                  
CODE_20AF0F:        BEQ CODE_20AF4D           
CODE_20AF11:        JMP CODE_20AF6D           

CODE_20AF14:        REP #$20                  
CODE_20AF16:        LDA #$5800                
CODE_20AF19:        STA $2116                 
CODE_20AF1C:        LDA #$0400                
CODE_20AF1F:        STA $4305                 
CODE_20AF22:        LDA #$A000                
CODE_20AF25:        BRA CODE_20AF5E           

CODE_20AF27:        REP #$20                  
CODE_20AF29:        LDA #$5800                
CODE_20AF2C:        STA $2116                 
CODE_20AF2F:        LDA #$0400                
CODE_20AF32:        STA $4305                 
CODE_20AF35:        LDA #$A400                
CODE_20AF38:        BRA CODE_20AF5E           

CODE_20AF3A:        REP #$20                  
CODE_20AF3C:        LDA #$5800                
CODE_20AF3F:        STA $2116                 
CODE_20AF42:        LDA #$0400                
CODE_20AF45:        STA $4305                 
CODE_20AF48:        LDA #$A800                
CODE_20AF4B:        BRA CODE_20AF5E           

CODE_20AF4D:        REP #$20                  
CODE_20AF4F:        LDA #$5800                
CODE_20AF52:        STA $2116                 
CODE_20AF55:        LDA #$0400                
CODE_20AF58:        STA $4305                 
CODE_20AF5B:        LDA #$AC00                
CODE_20AF5E:        STA $4302                 
CODE_20AF61:        SEP #$20                  
CODE_20AF63:        LDA #$38                  
CODE_20AF65:        STA $4304                 
CODE_20AF68:        LDA #$01                  
CODE_20AF6A:        STA $420B                 
CODE_20AF6D:        PLB                       
CODE_20AF6E:        RTL                       

CODE_20AF6F:        REP #$20                  
CODE_20AF71:        LDA #$C000                
CODE_20AF74:        STA $0D                   
CODE_20AF76:        LDX #$32                  
CODE_20AF78:        STX $0F                   
CODE_20AF7A:        LDA #$1000                
CODE_20AF7D:        STA $0B                   
CODE_20AF7F:        JSR CODE_20B013           
CODE_20AF82:        SEP #$20                  
CODE_20AF84:        RTL                       

CODE_20AF85:        REP #$20                  
CODE_20AF87:        LDA #$8000                
CODE_20AF8A:        STA $0D                   
CODE_20AF8C:        LDX #$3A                  
CODE_20AF8E:        STX $0F                   
CODE_20AF90:        LDA #$1000                
CODE_20AF93:        STA $0B                   
CODE_20AF95:        LDA #$3800                
CODE_20AF98:        JSR CODE_20AFF0           
CODE_20AF9B:        LDA #$B400                
CODE_20AF9E:        STA $0D                   
CODE_20AFA0:        LDX #$3F                  
CODE_20AFA2:        STX $0F                   
CODE_20AFA4:        LDA #$0400                
CODE_20AFA7:        STA $0B                   
CODE_20AFA9:        JSR CODE_20B013           
CODE_20AFAC:        LDA #$D400                
CODE_20AFAF:        STA $0D                   
CODE_20AFB1:        LDX #$32                  
CODE_20AFB3:        STX $0F                   
CODE_20AFB5:        LDA #$0C00                
CODE_20AFB8:        STA $0B                   
CODE_20AFBA:        LDA #$6200                
CODE_20AFBD:        JSR CODE_20B016           
CODE_20AFC0:        SEP #$20                  
CODE_20AFC2:        RTL                       

CODE_20AFC3:        REP #$20                  
CODE_20AFC5:        LDA #$E000                
CODE_20AFC8:        STA $0D                   
CODE_20AFCA:        LDX #$3F                  
CODE_20AFCC:        STX $0F                   
CODE_20AFCE:        LDA #$2000                
CODE_20AFD1:        STA $0B                   
CODE_20AFD3:        LDA #$6000                
CODE_20AFD6:        JSR CODE_20B016           
CODE_20AFD9:        LDA #$A000                
CODE_20AFDC:        STA $0D                   
CODE_20AFDE:        LDX #$3D                  
CODE_20AFE0:        STX $0F                   
CODE_20AFE2:        LDA #$0800                
CODE_20AFE5:        STA $0B                   
CODE_20AFE7:        LDA #$7000                
CODE_20AFEA:        JSR CODE_20B016           
CODE_20AFED:        SEP #$20                  
CODE_20AFEF:        RTL                       

CODE_20AFF0:        LDX #$80                  
CODE_20AFF2:        STX $2115                 
CODE_20AFF5:        STA $2116                 
CODE_20AFF8:        LDA #$01                  
CODE_20AFFA:        CLC                       
CODE_20AFFB:        STA $4300                 
CODE_20AFFE:        LDA $0D                   
CODE_20B000:        STA $4302                 
CODE_20B003:        LDX $0F                   
CODE_20B005:        STX $4304                 
CODE_20B008:        LDA $0B                   
CODE_20B00A:        STA $4305                 
CODE_20B00D:        LDX #$01                  
CODE_20B00F:        STX $420B                 
CODE_20B012:        RTS                       

CODE_20B013:        LDA #$00                  
CODE_20B015:        RTS                       

CODE_20B016:        LDX #$80                  
CODE_20B018:        STX $2115                 
CODE_20B01B:        STA $2116                 
CODE_20B01E:        LDA #$01                  
CODE_20B020:        CLC                       
CODE_20B021:        STA $4300                 
CODE_20B024:        LDA $0D                   
CODE_20B026:        STA $4302                 
CODE_20B029:        LDX $0F                   
CODE_20B02B:        STX $4304                 
CODE_20B02E:        LDA $0B                   
CODE_20B030:        STA $4305                 
CODE_20B033:        LDX #$01                  
CODE_20B035:        STX $420B                 
CODE_20B038:        RTS                       

CODE_20B039:        REP #$30                  
CODE_20B03B:        LDX #$001E                
CODE_20B03E:        LDA #$0000                
CODE_20B041:        STA $1300,x               
CODE_20B044:        STA $1320,x               
CODE_20B047:        STA $1340,x               
CODE_20B04A:        STA $1360,x               
CODE_20B04D:        STA $1380,x               
CODE_20B050:        STA $13A0,x               
CODE_20B053:        STA $13C0,x               
CODE_20B056:        STA $13E0,x               
CODE_20B059:        STA $1400,x               
CODE_20B05C:        STA $1420,x               
CODE_20B05F:        STA $1440,x               
CODE_20B062:        STA $1460,x               
CODE_20B065:        STA $1480,x               
CODE_20B068:        STA $14A0,x               
CODE_20B06B:        STA $14C0,x               
CODE_20B06E:        STA $14E0,x               
CODE_20B071:        DEX                       
CODE_20B072:        DEX                       
CODE_20B073:        BPL CODE_20B041           
CODE_20B075:        PHB                       
CODE_20B076:        LDX #$A400                
CODE_20B079:        LDY #$1300                
CODE_20B07C:        LDA #$007F                
CODE_20B07F:        MVN $3C00                 
CODE_20B082:        PLB                       
CODE_20B083:        LDA #$0000                
CODE_20B086:        STA $1300                 
CODE_20B089:        STA $1310                 
CODE_20B08C:        STA $133E                 
CODE_20B08F:        STA $135E                 
CODE_20B092:        SEP #$30                  
CODE_20B094:        LDA #$01                  
CODE_20B096:        STA $1500                 
CODE_20B099:        RTS                       

CODE_20B09A:        REP #$30                  
CODE_20B09C:        LDX #$001E                
CODE_20B09F:        LDA #$0000                
CODE_20B0A2:        STA $1300,x               
CODE_20B0A5:        STA $1320,x               
CODE_20B0A8:        STA $1340,x               
CODE_20B0AB:        STA $1360,x               
CODE_20B0AE:        STA $1380,x               
CODE_20B0B1:        STA $13A0,x               
CODE_20B0B4:        STA $13C0,x               
CODE_20B0B7:        STA $13E0,x               
CODE_20B0BA:        STA $1400,x               
CODE_20B0BD:        STA $1420,x               
CODE_20B0C0:        STA $1440,x               
CODE_20B0C3:        STA $1460,x               
CODE_20B0C6:        STA $1480,x               
CODE_20B0C9:        STA $14A0,x               
CODE_20B0CC:        STA $14C0,x               
CODE_20B0CF:        STA $14E0,x               
CODE_20B0D2:        DEX                       
CODE_20B0D3:        DEX                       
CODE_20B0D4:        BPL CODE_20B0A2           
CODE_20B0D6:        PHB                       
CODE_20B0D7:        LDX #$AC00                
CODE_20B0DA:        LDY #$1300                
CODE_20B0DD:        LDA #$001F                
CODE_20B0E0:        MVN $3C00                 
CODE_20B0E3:        PLB                       
CODE_20B0E4:        LDA #$0000                
CODE_20B0E7:        STA $1300                 
CODE_20B0EA:        SEP #$30                  
CODE_20B0EC:        LDA #$01                  
CODE_20B0EE:        STA $1500                 
CODE_20B0F1:        RTS                       

DATA_20B0F2:        db $02,$00,$01,$03,$04,$05

DATA_20B0F8:        db $03,$03,$06,$12,$11,$00
  
CODE_20B0FE:        LDA #$11                  
CODE_20B100:        STA $0208                 
CODE_20B103:        LDA #$02                  
CODE_20B105:        STA $0209                 
CODE_20B108:        STA $0203                 
CODE_20B10B:        LDA #$20                  
CODE_20B10D:        STA $0204                 
CODE_20B110:        JSR CODE_20A4B6           
CODE_20B113:        JSR CODE_20A4DA           
CODE_20B116:        JSL CODE_0086B5           
CODE_20B11A:        JSL CODE_22E0A9           
CODE_20B11E:        LDA #$5C                  
CODE_20B120:        STA $00                   
CODE_20B122:        STZ $01                   
CODE_20B124:        JSR CODE_20FA0A           
CODE_20B127:        LDX #$F5                  
CODE_20B129:        STZ $00,x                 
CODE_20B12B:        DEX                       
CODE_20B12C:        BNE CODE_20B129           
CODE_20B12E:        LDX #$15                  
CODE_20B130:        STZ $0510,x               
CODE_20B133:        DEX                       
CODE_20B134:        BPL CODE_20B130           
CODE_20B136:        LDA #$04                  
CODE_20B138:        STA $0736                 
CODE_20B13B:        STA $0737                 
CODE_20B13E:        STZ $072B                 
CODE_20B141:        STZ $0726                 
CODE_20B144:        LDA $7FFC03               
CODE_20B148:        BMI CODE_20B14E           
CODE_20B14A:        DEC A                     
CODE_20B14B:        STA $072B                 
CODE_20B14E:        LDA #$FF                  
CODE_20B150:        STA $BE                   
CODE_20B152:        LDA #$A0                  
CODE_20B154:        STA $5B                   
CODE_20B156:        STA $5C                   
CODE_20B158:        LDA #$F0                  
CODE_20B15A:        STA $53                   
CODE_20B15C:        STZ $54                   
CODE_20B15E:        LDA #$01                  
CODE_20B160:        STA $8F                   
CODE_20B162:        STA $90                   
CODE_20B164:        LDA #$88                  
CODE_20B166:        STA $0782                 
CODE_20B169:        LDA #$00                  
CODE_20B16B:        STA $7F0000               
CODE_20B16F:        STA $7F0001               
CODE_20B173:        LDA #$20                  
CODE_20B175:        STA $0205                 
CODE_20B178:        ASL A                     
CODE_20B179:        STA $0206                 
CODE_20B17C:        ASL A                     
CODE_20B17D:        STA $0207                 
CODE_20B180:        JSR CODE_20B2EE           
CODE_20B183:        LDA #$1D                  
CODE_20B185:        ASL A                     
CODE_20B186:        TAX                       
CODE_20B187:        LDA.l PNTR_20D301,x             
CODE_20B18B:        STA $36                   
CODE_20B18D:        LDA.l PNTR_20D301+1,x             
CODE_20B191:        STA $37                   
CODE_20B193:        LDA #$20                  
CODE_20B195:        STA $38                   
CODE_20B197:        JSL CODE_29E8AB           
CODE_20B19B:        JSR CODE_20B328           
CODE_20B19E:        JSR CODE_20B039           
CODE_20B1A1:        JSL CODE_29CDE5           
CODE_20B1A5:        LDA #$1E                  
CODE_20B1A7:        STA $28                   
CODE_20B1A9:        LDA #$35                  
CODE_20B1AB:        STA $B1                   
CODE_20B1AD:        JSR CODE_20A4B6           
CODE_20B1B0:        INC $16                   
CODE_20B1B2:        LDA $16                   
CODE_20B1B4:        AND #$10                  
CODE_20B1B6:        BNE CODE_20B1BD           
CODE_20B1B8:        JSR CODE_20A4B6           
CODE_20B1BB:        BRA CODE_20B1B0           

CODE_20B1BD:        LDA #$0F                  
CODE_20B1BF:        STA $16                   
CODE_20B1C1:        LDA $F6                   
CODE_20B1C3:        ORA $F7                   
CODE_20B1C5:        AND #$10                  
CODE_20B1C7:        BEQ CODE_20B1E4           
CODE_20B1C9:        LDA $701FF2               
CODE_20B1CD:        BEQ CODE_20B1D3           
CODE_20B1CF:        JML CODE_0080DE           

CODE_20B1D3:        LDA $AC                   
CODE_20B1D5:        CMP #$06                  
CODE_20B1D7:        BEQ CODE_20B1DE           
CODE_20B1D9:        LDA #$29                  
CODE_20B1DB:        STA $1203                 
CODE_20B1DE:        LDA #$06                  
CODE_20B1E0:        STA $AC                   
CODE_20B1E2:        BEQ CODE_20B200           
CODE_20B1E4:        LDA $F4                   
CODE_20B1E6:        ORA $F5                   
CODE_20B1E8:        AND #$40                  
CODE_20B1EA:        BEQ CODE_20B1F0           
CODE_20B1EC:        JML CODE_0080DE           

CODE_20B1F0:        LDA $F2                   
CODE_20B1F2:        ORA $F3                   
CODE_20B1F4:        AND #$40                  
CODE_20B1F6:        BEQ CODE_20B1FC           
CODE_20B1F8:        JML CODE_0080DE           

CODE_20B1FC:        DEC $B1                   
CODE_20B1FE:        BPL CODE_20B1AD           
CODE_20B200:        JSR CODE_20A4B6           
CODE_20B203:        LDX $BE                   
CODE_20B205:        CPX #$06                  
CODE_20B207:        BCS CODE_20B21F                   
CODE_20B209:        DEC $BF                   
CODE_20B20B:        BNE CODE_20B21F           
CODE_20B20D:        LDA.l DATA_20B0F8,x             
CODE_20B211:        STA $BF                   
CODE_20B213:        LDA.l DATA_20B0F2,x             
CODE_20B217:        TAY                       
CODE_20B218:        LDA #$01                  
CODE_20B21A:        STA $00A6,y               
CODE_20B21D:        INC $BE                   
CODE_20B21F:        JSR CODE_20B3A5           
CODE_20B222:        LDA $AF                   
CODE_20B224:        BEQ CODE_20B240           
CODE_20B226:        DEC $16                   
CODE_20B228:        BMI CODE_20B22F           
CODE_20B22A:        JSR CODE_20A4B6           
CODE_20B22D:        BRA CODE_20B226           
CODE_20B22F:        LDA $701FF2               
CODE_20B233:        BEQ CODE_20B239           
CODE_20B235:        JML CODE_008139           

CODE_20B239:        LDA #$80                  
CODE_20B23B:        STA $16                   
CODE_20B23D:        JMP CODE_20B11A           

CODE_20B240:        LDA $AC                   
CODE_20B242:        CMP #$05                  
CODE_20B244:        BNE CODE_20B200           
CODE_20B246:        LDX #$80                  
CODE_20B248:        STZ $43,x                 
CODE_20B24A:        DEX                       
CODE_20B24B:        BPL CODE_20B248           
CODE_20B24D:        DEC $16                   
CODE_20B24F:        BMI CODE_20B256           
CODE_20B251:        JSR CODE_20A4B6           
CODE_20B254:        BRA CODE_20B24D           

CODE_20B256:        LDA #$80                  
CODE_20B258:        STA $16                   
CODE_20B25A:        STZ $02D7                 
CODE_20B25D:        RTS                       
CODE_20B25E:        LDA #$38                  
CODE_20B260:        STA $00                   
CODE_20B262:        LDX #$00                  
CODE_20B264:        LDY #$40                  
CODE_20B266:        LDA.l DATA_20B2E3,x             
CODE_20B26A:        BPL CODE_20B28D           
CODE_20B26C:        STA $0802,y               
CODE_20B26F:        LDA #$35                  
CODE_20B271:        STA $0803,y               
CODE_20B274:        LDA $00                   
CODE_20B276:        STA $0800,y               
CODE_20B279:        LDA #$C8                  
CODE_20B27B:        STA $0801,y               
CODE_20B27E:        PHY                       
CODE_20B27F:        TYA                       
CODE_20B280:        LSR A                     
CODE_20B281:        LSR A                     
CODE_20B282:        TAY                       
CODE_20B283:        LDA #$00                  
CODE_20B285:        STA $0A20,y               
CODE_20B288:        PLY                       
CODE_20B289:        INY                       
CODE_20B28A:        INY                       
CODE_20B28B:        INY                       
CODE_20B28C:        INY                       
CODE_20B28D:        LDA $00                   
CODE_20B28F:        CLC                       
CODE_20B290:        ADC #$08                  
CODE_20B292:        STA $00                   
CODE_20B294:        INX                       
CODE_20B295:        CPX #$0B                  
CODE_20B297:        BNE CODE_20B266           
CODE_20B299:        REP #$20                  
CODE_20B29B:        LDA #$C498                
CODE_20B29E:        STA $0800,y               
CODE_20B2A1:        CLC                       
CODE_20B2A2:        ADC #$0010                
CODE_20B2A5:        STA $0804,y               
CODE_20B2A8:        CLC                       
CODE_20B2A9:        ADC #$0010                
CODE_20B2AC:        STA $0808,y               
CODE_20B2AF:        CLC                       
CODE_20B2B0:        ADC #$0008                
CODE_20B2B3:        STA $080C,y               
CODE_20B2B6:        LDA #$3585                
CODE_20B2B9:        STA $0802,y               
CODE_20B2BC:        LDA #$3587                
CODE_20B2BF:        STA $0806,y               
CODE_20B2C2:        LDA #$3589                
CODE_20B2C5:        STA $080A,y               
CODE_20B2C8:        LDA #$358A                
CODE_20B2CB:        STA $080E,y               
CODE_20B2CE:        SEP #$20                  
CODE_20B2D0:        TYA                       
CODE_20B2D1:        LSR A                     
CODE_20B2D2:        LSR A                     
CODE_20B2D3:        TAY                       
CODE_20B2D4:        LDA #$02                  
CODE_20B2D6:        STA $0A20,y               
CODE_20B2D9:        STA $0A21,y               
CODE_20B2DC:        STA $0A22,y               
CODE_20B2DF:        STA $0A23,y               
CODE_20B2E2:        RTS                       

DATA_20B2E3:        db $84,$00,$80,$81,$83,$83,$00,$80
                    db $81,$81,$82

CODE_20B2EE:        REP #$20
CODE_20B2F0:        LDX #$80                  
CODE_20B2F2:        STX $2115                 
CODE_20B2F5:        LDA #$1000                  
CODE_20B2F8:        STA $D8           
CODE_20B2FA:        LDA #$1562                  
CODE_20B2FD:        STA $DA                
CODE_20B2FF:        JSR CODE_20B312           
CODE_20B302:        JSR CODE_20B312           
CODE_20B305:        LDY #$0B                  
CODE_20B307:        INC $DA                   
CODE_20B309:        JSR CODE_20B312           
CODE_20B30C:        DEY                       
CODE_20B30D:        BNE CODE_20B307           
CODE_20B30F:        SEP #$20                  
CODE_20B311:        RTS                       

CODE_20B312:        LDA $D8                   
CODE_20B314:        STA $2116                 
CODE_20B317:        CLC                       
CODE_20B318:        ADC #$0020                  
CODE_20B31B:        STA $D8                 
CODE_20B31D:        LDX #$20                  
CODE_20B31F:        LDA $DA                   
CODE_20B321:        STA $2118                 
CODE_20B324:        DEX                       
CODE_20B325:        BNE CODE_20B31F           
CODE_20B327:        RTS                     
  
CODE_20B328:        REP #$20                  
CODE_20B32A:        LDX #$80                  
CODE_20B32C:        STX $2115                 
CODE_20B32F:        LDA #$0000                
CODE_20B332:        STA $2116                 
CODE_20B335:        LDA #$000B                
CODE_20B338:        STA $00                   
CODE_20B33A:        LDY #$08                  
CODE_20B33C:        LDA #$01F0                
CODE_20B33F:        STA $2118                 
CODE_20B342:        INC A                     
CODE_20B343:        STA $2118                 
CODE_20B346:        LDA #$41F1                
CODE_20B349:        STA $2118                 
CODE_20B34C:        DEC A                     
CODE_20B34D:        STA $2118                 
CODE_20B350:        DEY                       
CODE_20B351:        BNE CODE_20B33C           
CODE_20B353:        LDY #$08                  
CODE_20B355:        LDA #$01F2                
CODE_20B358:        STA $2118                 
CODE_20B35B:        INC A                     
CODE_20B35C:        STA $2118                 
CODE_20B35F:        LDA #$41F3                
CODE_20B362:        STA $2118                 
CODE_20B365:        DEC A                     
CODE_20B366:        STA $2118                 
CODE_20B369:        DEY                       
CODE_20B36A:        BNE CODE_20B355           
CODE_20B36C:        DEC $00                   
CODE_20B36E:        BNE CODE_20B33A           
CODE_20B370:        LDY #$08                  
CODE_20B372:        LDA #$01F4                
CODE_20B375:        STA $2118                 
CODE_20B378:        INC A                     
CODE_20B379:        STA $2118                 
CODE_20B37C:        LDA #$41F5                
CODE_20B37F:        STA $2118                 
CODE_20B382:        DEC A                     
CODE_20B383:        STA $2118                 
CODE_20B386:        DEY                       
CODE_20B387:        BNE CODE_20B372           
CODE_20B389:        LDY #$08                  
CODE_20B38B:        LDA #$01F6                
CODE_20B38E:        STA $2118                 
CODE_20B391:        INC A                     
CODE_20B392:        STA $2118                 
CODE_20B395:        LDA #$41F7                
CODE_20B398:        STA $2118                 
CODE_20B39B:        DEC A                     
CODE_20B39C:        STA $2118                 
CODE_20B39F:        DEY                       
CODE_20B3A0:        BNE CODE_20B38B           
CODE_20B3A2:        SEP #$20                  
CODE_20B3A4:        RTS                       

CODE_20B3A5:        STZ $BA                   
CODE_20B3A7:        STZ $BB                   
CODE_20B3A9:        LDA $AC                   
CODE_20B3AB:        ASL A                     
CODE_20B3AC:        TAX                       
CODE_20B3AD:        JMP (PNTR_20B3B0,x)             

PNTR_20B3B0:        dw CODE_20B3C0
                    dw CODE_20B515
                    dw CODE_20B76F
                    dw CODE_20B79E
                    dw CODE_20B8E1
                    dw CODE_20B663
                    dw CODE_20B586
                    dw CODE_20B943

CODE_20B3C0:        LDY #$01                  
CODE_20B3C2:        INC $0216                 
CODE_20B3C5:        LDA $0216                 
CODE_20B3C8:        CMP #$D0                  
CODE_20B3CA:        BEQ CODE_20B41B           
CODE_20B3CC:        CMP #$4E                  
CODE_20B3CE:        BNE CODE_20B3D7           
CODE_20B3D0:        LDA #$40                  
CODE_20B3D2:        STA $9E                   
CODE_20B3D4:        STA $0512                 
CODE_20B3D7:        DEY                       
CODE_20B3D8:        BPL CODE_20B3C2           
CODE_20B3DA:        LDA $9E                   
CODE_20B3DC:        BEQ CODE_20B3E1           
CODE_20B3DE:        JSR CODE_20BB4D           
CODE_20B3E1:        LDA $F6                   
CODE_20B3E3:        ORA $F7                   
CODE_20B3E5:        AND #$10                  
CODE_20B3E7:        BEQ CODE_20B402           
CODE_20B3E9:        LDA $701FF2               
CODE_20B3ED:        BEQ CODE_20B3F3           
CODE_20B3EF:        JML CODE_0080DE           

CODE_20B3F3:        LDA $AC                   
CODE_20B3F5:        CMP #$06                  
CODE_20B3F7:        BEQ CODE_20B3FE           
CODE_20B3F9:        LDA #$29                  
CODE_20B3FB:        STA $1203                 
CODE_20B3FE:        LDA #$06                  
CODE_20B400:        STA $AC                   
CODE_20B402:        LDA $F4                   
CODE_20B404:        ORA $F5                   
CODE_20B406:        AND #$40                  
CODE_20B408:        BEQ CODE_20B40E           
CODE_20B40A:        JML CODE_0080DE           

CODE_20B40E:        LDA $F2                   
CODE_20B410:        ORA $F3                   
CODE_20B412:        AND #$40                  
CODE_20B414:        BEQ CODE_20B41A           
CODE_20B416:        JML CODE_0080DE           

CODE_20B41A:        RTS                       

CODE_20B41B:        LDA #$02                  
CODE_20B41D:        STA $BC                   
CODE_20B41F:        LDA #$02                  
CODE_20B421:        STA $BD                   
CODE_20B423:        INC $AC                   
CODE_20B425:        STZ $9E                   
CODE_20B427:        RTS                       

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

CODE_20B49D:        DEC $B1                   
CODE_20B49F:        BPL CODE_20B4D4           
CODE_20B4A1:        LDA #$04                  
CODE_20B4A3:        STA $B1                   
CODE_20B4A5:        LDA $C1                   
CODE_20B4A7:        AND #$07                  
CODE_20B4A9:        ASL A                     
CODE_20B4AA:        ASL A                     
CODE_20B4AB:        ASL A                     
CODE_20B4AC:        TAX                       
CODE_20B4AD:        REP #$20                  
CODE_20B4AF:        LDA.l DATA_20B4D5,x             
CODE_20B4B3:        STA $1326                 
CODE_20B4B6:        LDA.l DATA_20B4D7,x             
CODE_20B4BA:        STA $1328                 
CODE_20B4BD:        LDA.l DATA_20B4D9,x             
CODE_20B4C1:        STA $132A                 
CODE_20B4C4:        LDA.l DATA_20B4DB,x             
CODE_20B4C8:        STA $132C                 
CODE_20B4CB:        SEP #$20                  
CODE_20B4CD:        LDA #$01                  
CODE_20B4CF:        STA $1500                 
CODE_20B4D2:        INC $C1                   
CODE_20B4D4:        RTS                       

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

CODE_20B515:        DEC $B4                   
CODE_20B517:        LDA $B4                   
CODE_20B519:        CMP #$FF                  
CODE_20B51B:        BNE CODE_20B520           
CODE_20B51D:        JSR CODE_20B5F3           
CODE_20B520:        DEC $B5                   
CODE_20B522:        LDA $B5                   
CODE_20B524:        CMP #$FF                  
CODE_20B526:        BNE CODE_20B52B           
CODE_20B528:        JSR CODE_20B628           
CODE_20B52B:        LDA $B6                   
CODE_20B52D:        STA $B8                   
CODE_20B52F:        LDA $B7                   
CODE_20B531:        STA $B9                   
CODE_20B533:        JSR CODE_20B649           
CODE_20B536:        JSR CODE_20BB4D           
CODE_20B539:        LDA $C0                   
CODE_20B53B:        BEQ CODE_20B540           
CODE_20B53D:        JSR CODE_20B49D           
CODE_20B540:        LDA $F6                   
CODE_20B542:        ORA $F7                   
CODE_20B544:        AND #$10                  
CODE_20B546:        BEQ CODE_20B56D           
CODE_20B548:        LDA $B0                   
CODE_20B54A:        BNE CODE_20B567           
CODE_20B54C:        LDA $701FF2               
CODE_20B550:        BEQ CODE_20B556           
CODE_20B552:        JML CODE_0080DE           

CODE_20B556:        LDA $AC                   
CODE_20B558:        CMP #$06                  
CODE_20B55A:        BEQ CODE_20B561           
CODE_20B55C:        LDA #$29                  
CODE_20B55E:        STA $1203                 
CODE_20B561:        LDA #$06                  
CODE_20B563:        STA $AC                   
CODE_20B565:        BRA CODE_20B56D           

CODE_20B567:        INC $AC                   
CODE_20B569:        LDA #$01                  
CODE_20B56B:        STA $28                   
CODE_20B56D:        LDA $F4                   
CODE_20B56F:        ORA $F5                   
CODE_20B571:        AND #$40                  
CODE_20B573:        BEQ CODE_20B579           
CODE_20B575:        JML CODE_0080DE           

CODE_20B579:        LDA $F2                   
CODE_20B57B:        ORA $F3                   
CODE_20B57D:        AND #$40                  
CODE_20B57F:        BEQ CODE_20B585           
CODE_20B581:        JML CODE_0080DE           

CODE_20B585:        RTS                       

CODE_20B586:        STZ $0216                 
CODE_20B589:        STZ $0217                 
CODE_20B58C:        LDA #$B1                  
CODE_20B58E:        STA $36                   
CODE_20B590:        LDA #$F1                  
CODE_20B592:        STA $37                   
CODE_20B594:        LDA #$2A                  
CODE_20B596:        STA $38                   
CODE_20B598:        LDA #$01                  
CODE_20B59A:        STA $1C                   
CODE_20B59C:        STZ $0154                 
CODE_20B59F:        LDA $0154                 
CODE_20B5A2:        BPL CODE_20B59F           
CODE_20B5A4:        STZ $1C                   
CODE_20B5A6:        CLI                       
CODE_20B5A7:        JSR CODE_20B5DD           
CODE_20B5AA:        LDA #$06                  
CODE_20B5AC:        STA $1501                 
CODE_20B5AF:        JSL CODE_22E65F           
CODE_20B5B3:        JSR CODE_20B70E           
CODE_20B5B6:        STZ $02B5                 
CODE_20B5B9:        JSR CODE_20B2EE           
CODE_20B5BC:        LDA #$1D                  
CODE_20B5BE:        ASL A                     
CODE_20B5BF:        TAX                       
CODE_20B5C0:        LDA.l PNTR_20D301,x             
CODE_20B5C4:        STA $36                   
CODE_20B5C6:        LDA.l PNTR_20D301+1,x             
CODE_20B5CA:        STA $37                   
CODE_20B5CC:        LDA #$20                  
CODE_20B5CE:        STA $38                   
CODE_20B5D0:        JSL CODE_29E8AB           
CODE_20B5D4:        LDA #$0F                  
CODE_20B5D6:        STA $16                   
CODE_20B5D8:        LDA #$02                  
CODE_20B5DA:        STA $AC                   
CODE_20B5DC:        RTS                       

CODE_20B5DD:        LDA $7FFC03               
CODE_20B5E1:        BMI CODE_20B5EB           
CODE_20B5E3:        DEC A                     
CODE_20B5E4:        TAX                       
CODE_20B5E5:        LDA.l DATA_20B76D,x             
CODE_20B5E9:        BRA CODE_20B5ED           

CODE_20B5EB:        LDA #$01                  
CODE_20B5ED:        STA $28                   
CODE_20B5EF:        JSR CODE_20A4B6           
CODE_20B5F2:        RTS                       

CODE_20B5F3:        STZ $B6                   
CODE_20B5F5:        STZ $BA                   
CODE_20B5F7:        LDX $B2                   
CODE_20B5F9:        LDA.l DATA_20B428,x             
CODE_20B5FD:        CMP #$FF                  
CODE_20B5FF:        BEQ CODE_20B615           
CODE_20B601:        CMP #$FE                  
CODE_20B603:        BEQ CODE_20B623           
CODE_20B605:        STA $B4                   
CODE_20B607:        INX                       
CODE_20B608:        LDA.l DATA_20B428,x             
CODE_20B60C:        STA $B6                   
CODE_20B60E:        STA $BA                   
CODE_20B610:        INC $B2                   
CODE_20B612:        INC $B2                   
CODE_20B614:        RTS                       

CODE_20B615:        INX                       
CODE_20B616:        LDA.l DATA_20B428,x             
CODE_20B61A:        STA $BC                   
CODE_20B61C:        INC $B2                   
CODE_20B61E:        INC $B2                   
CODE_20B620:        STZ $B4                   
CODE_20B622:        RTS                       

CODE_20B623:        INC $AC                   
CODE_20B625:        STZ $B2                   
CODE_20B627:        RTS                       

CODE_20B628:        STZ $B7                   
CODE_20B62A:        STZ $BB                   
CODE_20B62C:        LDX $B3                   
CODE_20B62E:        LDA.l DATA_20B480,x             
CODE_20B632:        CMP #$FF                  
CODE_20B634:        BEQ CODE_20B646           
CODE_20B636:        STA $B5                   
CODE_20B638:        INX                       
CODE_20B639:        LDA.l DATA_20B480,x             
CODE_20B63D:        STA $B7                   
CODE_20B63F:        STA $BB                   
CODE_20B641:        INC $B3                   
CODE_20B643:        INC $B3                   
CODE_20B645:        RTS                       

CODE_20B646:        STZ $B3                   
CODE_20B648:        RTS                       

CODE_20B649:        LDA $BC                   
CODE_20B64B:        JSL CODE_20FB1F

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

CODE_20B663:        RTS

CODE_20B664:        LDA $BD                   
CODE_20B666:        STA $0028                 
CODE_20B669:        INC $BD                   
CODE_20B66B:        LDA $BD                   
CODE_20B66D:        CMP #$1D                  
CODE_20B66F:        BNE CODE_20B68A           
CODE_20B671:        STZ $BC                   
CODE_20B673:        REP #$20                  
CODE_20B675:        LDX #$08                  
CODE_20B677:        LDA #$0000                
CODE_20B67A:        STA $1300,x               
CODE_20B67D:        INX                       
CODE_20B67E:        INX                       
CODE_20B67F:        CPX #$20                  
CODE_20B681:        BNE CODE_20B67A           
CODE_20B683:        SEP #$20                  
CODE_20B685:        LDA #$01                  
CODE_20B687:        STA $1500                 
CODE_20B68A:        RTS                       

CODE_20B68B:        LDY #$04                  
CODE_20B68D:        DEC $0216                 
CODE_20B690:        LDA $0216                 
CODE_20B693:        BEQ CODE_20B699           
CODE_20B695:        DEY                       
CODE_20B696:        BPL CODE_20B68D           
CODE_20B698:        RTS                       

CODE_20B699:        LDA #$10                  
CODE_20B69B:        STA $B1                   
CODE_20B69D:        INC $BC                   
CODE_20B69F:        RTS                       

CODE_20B6A0:        REP #$20                  
CODE_20B6A2:        LDA $0216                 
CODE_20B6A5:        SEC                       
CODE_20B6A6:        SBC #$0002                
CODE_20B6A9:        STA $0216                 
CODE_20B6AC:        SEP #$20                  
CODE_20B6AE:        INC $BC                   
CODE_20B6B0:        RTS                       

CODE_20B6B1:        REP #$20                  
CODE_20B6B3:        LDA $0216                 
CODE_20B6B6:        CLC                       
CODE_20B6B7:        ADC #$0002                
CODE_20B6BA:        STA $0216                 
CODE_20B6BD:        SEP #$20                  
CODE_20B6BF:        DEC $BC                   
CODE_20B6C1:        DEC $B1                   
CODE_20B6C3:        BPL CODE_20B6D1           
CODE_20B6C5:        INC $BC                   
CODE_20B6C7:        INC $BC                   
CODE_20B6C9:        LDA #$03                  
CODE_20B6CB:        STA $BD                   
CODE_20B6CD:        LDA #$02                  
CODE_20B6CF:        STA $B1                   
CODE_20B6D1:        RTS                       

CODE_20B6D2:        DEC $B1                   
CODE_20B6D4:        BPL CODE_20B6E9           
CODE_20B6D6:        STZ $BE                   
CODE_20B6D8:        LDA #$01                  
CODE_20B6DA:        STA $BF                   
CODE_20B6DC:        INC $BC                   
CODE_20B6DE:        LDA #$16                  
CODE_20B6E0:        STA $B1                   
CODE_20B6E2:        JSL CODE_29CF62           
CODE_20B6E6:        STZ $02B3                 
CODE_20B6E9:        RTS                       

CODE_20B6EA:        REP #$20                  
CODE_20B6EC:        LDA $7F0000               
CODE_20B6F0:        STA $1300                 
CODE_20B6F3:        SEP #$20                  
CODE_20B6F5:        JSL CODE_29D09A           
CODE_20B6F9:        JSL CODE_29D1BB           
CODE_20B6FD:        LDA $02B3                 
CODE_20B700:        CMP #$02                  
CODE_20B702:        BNE CODE_20B70A           
CODE_20B704:        STZ $BC                   
CODE_20B706:        LDA #$01                  
CODE_20B708:        STA $C0                   
CODE_20B70A:        JSR CODE_20B70E           
CODE_20B70D:        RTS                       

CODE_20B70E:        REP #$20                  
CODE_20B710:        LDA $1300                 
CODE_20B713:        STA $7F0000               
CODE_20B717:        AND #$001F                
CODE_20B71A:        ORA #$0020                
CODE_20B71D:        STA $D8                   
CODE_20B71F:        LDA $1300                 
CODE_20B722:        LSR A                     
CODE_20B723:        LSR A                     
CODE_20B724:        LSR A                     
CODE_20B725:        LSR A                     
CODE_20B726:        LSR A                     
CODE_20B727:        AND #$001F                
CODE_20B72A:        ORA #$0040                
CODE_20B72D:        STA $DA                   
CODE_20B72F:        LDA $1300                 
CODE_20B732:        XBA                       
CODE_20B733:        LSR A                     
CODE_20B734:        LSR A                     
CODE_20B735:        AND #$001F                
CODE_20B738:        ORA #$0080                
CODE_20B73B:        STA $DC                   
CODE_20B73D:        STZ $1300                 
CODE_20B740:        SEP #$20                  
CODE_20B742:        LDA $D8                   
CODE_20B744:        STA $0205                 
CODE_20B747:        LDA $DA                   
CODE_20B749:        STA $0206                 
CODE_20B74C:        LDA $DC                   
CODE_20B74E:        STA $0207                 
CODE_20B751:        RTS                       

CODE_20B752:        LDA $701FF2               
CODE_20B756:        BNE CODE_20B766           
CODE_20B758:        LDA $7FFC03               
CODE_20B75C:        BMI CODE_20B766           
CODE_20B75E:        DEC A                     
CODE_20B75F:        TAX                       
CODE_20B760:        LDA.l DATA_20B76D,x             
CODE_20B764:        BRA CODE_20B768           

CODE_20B766:        LDA #$01                  
CODE_20B768:        STA $28                   
CODE_20B76A:        INC $BC                   
CODE_20B76C:        RTS                       

DATA_20B76D:        db $5D,$5C

CODE_20B76F:        STZ $A7
CODE_20B771:        STZ $A8                   
CODE_20B773:        STZ $A9                   
CODE_20B775:        STZ $AA                   
CODE_20B777:        LDA #$01                  
CODE_20B779:        STA $A6                   
CODE_20B77B:        LDA #$14                  
CODE_20B77D:        STA $AD                   
CODE_20B77F:        LDA #$3C                  
CODE_20B781:        STA $AE                   
CODE_20B783:        REP #$20                  
CODE_20B785:        LDA #$0000                
CODE_20B788:        STA $1402                 
CODE_20B78B:        LDA #$001F                
CODE_20B78E:        STA $1406                 
CODE_20B791:        SEP #$20                  
CODE_20B793:        LDA #$01                  
CODE_20B795:        STA $1500                 
CODE_20B798:        INC $AC                   
CODE_20B79A:        RTS                       

DATA_20B79B:        db $8F,$9F,$AF

CODE_20B79E:        LDA $F3
CODE_20B7A0:        AND #$C0
CODE_20B7A2:        CMP #$C0                  
CODE_20B7A4:        BNE CODE_20B7AB                  
CODE_20B7A6:        NOP                   
CODE_20B7A7:        NOP                       
CODE_20B7A8:        NOP                       
CODE_20B7A9:        NOP                       
CODE_20B7AA:        NOP                       
CODE_20B7AB:        DEC $AE                   
CODE_20B7AD:        BNE CODE_20B7BB           
CODE_20B7AF:        LDA #$60                  
CODE_20B7B1:        STA $AE                   
CODE_20B7B3:        DEC $AD                   
CODE_20B7B5:        BNE CODE_20B7BB           
CODE_20B7B7:        LDA #$FF                  
CODE_20B7B9:        STA $AF                   
CODE_20B7BB:        JSR CODE_20C520           
CODE_20B7BE:        LDA $701FF2               
CODE_20B7C2:        BEQ CODE_20B7C7           
CODE_20B7C4:        JMP CODE_20B83C           

CODE_20B7C7:        LDA $F6                   
CODE_20B7C9:        ORA $F7                   
CODE_20B7CB:        AND #$2C                  
CODE_20B7CD:        BEQ CODE_20B81E           
CODE_20B7CF:        LDX #$23                  
CODE_20B7D1:        STX $1203                 
CODE_20B7D4:        LDA $7FFC03               
CODE_20B7D8:        BMI CODE_20B7EC           
CODE_20B7DA:        LDA $072B                 
CODE_20B7DD:        CMP #$02                  
CODE_20B7DF:        BNE CODE_20B7E8           
CODE_20B7E1:        LDA $7FFC03               
CODE_20B7E5:        DEC A                     
CODE_20B7E6:        BRA CODE_20B800           

CODE_20B7E8:        LDA #$02                  
CODE_20B7EA:        BRA CODE_20B800           

CODE_20B7EC:        LDA $F6                   
CODE_20B7EE:        ORA $F7                   
CODE_20B7F0:        BIT #$20                  
CODE_20B7F2:        BEQ CODE_20B805           
CODE_20B7F4:        INC $072B                 
CODE_20B7F7:        LDA $072B                 
CODE_20B7FA:        CMP #$03                  
CODE_20B7FC:        BNE CODE_20B800           
CODE_20B7FE:        LDA #$00                  
CODE_20B800:        STA $072B                 
CODE_20B803:        BRA CODE_20B81E           

CODE_20B805:        LDX $072B                 
CODE_20B808:        AND #$08                  
CODE_20B80A:        BEQ CODE_20B812           
CODE_20B80C:        DEX                       
CODE_20B80D:        BPL CODE_20B81B           
CODE_20B80F:        INX                       
CODE_20B810:        BRA CODE_20B818           

CODE_20B812:        INX                       
CODE_20B813:        CPX #$03                  
CODE_20B815:        BNE CODE_20B81B           
CODE_20B817:        DEX                       
CODE_20B818:        STZ $1203                 
CODE_20B81B:        STX $072B                 
CODE_20B81E:        LDX $072B                 
CODE_20B821:        LDA #$48                  
CODE_20B823:        STA $09F0                 
CODE_20B826:        LDA.l DATA_20B79B,x             
CODE_20B82A:        STA $09F1                 
CODE_20B82D:        LDA #$4F                  
CODE_20B82F:        STA $09F2                 
CODE_20B832:        LDA #$20                  
CODE_20B834:        STA $09F3                 
CODE_20B837:        LDA #$00                  
CODE_20B839:        STA $0A9C                 
CODE_20B83C:        JSR CODE_20B25E           
CODE_20B83F:        JSR CODE_20B49D           
CODE_20B842:        JMP CODE_20B850           

CODE_20B845:        LDA $F8                   
CODE_20B847:        AND #$C0                  
CODE_20B849:        BEQ CODE_20B850           
CODE_20B84B:        LDA #$01                  
CODE_20B84D:        STA $078E                 
CODE_20B850:        LDA $7FFB00               
CODE_20B854:        STA $0727                 
CODE_20B857:        LDA $701FF4               
CODE_20B85B:        BNE CODE_20B875           
CODE_20B85D:        LDA $701FF6               
CODE_20B861:        BEQ CODE_20B875           
CODE_20B863:        LDA $F7                   
CODE_20B865:        AND #$10                  
CODE_20B867:        BEQ CODE_20B875           
CODE_20B869:        LDA $072B                 
CODE_20B86C:        BNE CODE_20B895           
CODE_20B86E:        LDA #$2A                  
CODE_20B870:        STA $1203                 
CODE_20B873:        BRA CODE_20B8DA           

CODE_20B875:        LDA $F6                   
CODE_20B877:        ORA $F7                   
CODE_20B879:        AND #$10                  
CODE_20B87B:        BNE CODE_20B895           
CODE_20B87D:        LDA $F4                   
CODE_20B87F:        ORA $F5                   
CODE_20B881:        AND #$40                  
CODE_20B883:        BEQ CODE_20B889           
CODE_20B885:        JML CODE_0080DE           

CODE_20B889:        LDA $F2                   
CODE_20B88B:        ORA $F3                   
CODE_20B88D:        AND #$40                  
CODE_20B88F:        BEQ CODE_20B8DA           
CODE_20B891:        JML CODE_0080DE           

CODE_20B895:        LDA $072B                 
CODE_20B898:        CMP #$02                  
CODE_20B89A:        BNE CODE_20B8AA           
CODE_20B89C:        LDA $701FF4               
CODE_20B8A0:        BNE CODE_20B8DB           
CODE_20B8A2:        LDA $701FF6               
CODE_20B8A6:        CMP #$02                  
CODE_20B8A8:        BNE CODE_20B8DB           
CODE_20B8AA:        LDA #$29                  
CODE_20B8AC:        STA $1203                 
CODE_20B8AF:        LDA $08F1                 
CODE_20B8B2:        STA $BD                   
CODE_20B8B4:        LDA $701FF2               
CODE_20B8B8:        BEQ CODE_20B8BE           
CODE_20B8BA:        JML CODE_0080DE           

CODE_20B8BE:        JSR CODE_20A4B6           
CODE_20B8C1:        INC $AD                   
CODE_20B8C3:        LDY #$F8                  
CODE_20B8C5:        LDA $AD                   
CODE_20B8C7:        AND #$18                  
CODE_20B8C9:        BEQ CODE_20B8CD           
CODE_20B8CB:        LDY $BD                   
CODE_20B8CD:        STY $08F1                 
CODE_20B8D0:        JSR CODE_20B49D           
CODE_20B8D3:        LDA $04E2                 
CODE_20B8D6:        BNE CODE_20B8BE           
CODE_20B8D8:        INC $AC                   
CODE_20B8DA:        RTS                       

CODE_20B8DB:        LDA #$2A                  
CODE_20B8DD:        STA $1203                 
CODE_20B8E0:        RTS                       

CODE_20B8E1:        STZ $0747                 
CODE_20B8E4:        STZ $0748                 
CODE_20B8E7:        INC $072B                 
CODE_20B8EA:        LDA $0727                 
CODE_20B8ED:        ASL A                     
CODE_20B8EE:        TAX                       
CODE_20B8EF:        LDA $E3AD,x               
CODE_20B8F2:        STA $0A                   
CODE_20B8F4:        LDA $E3AE,x               
CODE_20B8F7:        STA $0B                   
CODE_20B8F9:        LDA $E3BD,x               
CODE_20B8FC:        STA $0C                   
CODE_20B8FE:        LDA $E3BE,x               
CODE_20B901:        STA $0D                   
CODE_20B903:        LDA $E3CD,x               
CODE_20B906:        STA $0E                   
CODE_20B908:        LDA $E3CE,x               
CODE_20B90B:        STA $0F                   
CODE_20B90D:        LDA $E3DD,x               
CODE_20B910:        STA $08                   
CODE_20B912:        LDA $E3DE,x               
CODE_20B915:        STA $09                   
CODE_20B917:        LDY #$08                  
CODE_20B919:        LDA ($0A),y               
CODE_20B91B:        STA $1EED,y               
CODE_20B91E:        LDA ($0C),y               
CODE_20B920:        STA $1F09,y               
CODE_20B923:        LDA ($0E),y               
CODE_20B925:        STA $1EFB,y               
CODE_20B928:        LDA ($08),y               
CODE_20B92A:        STA $1F17,y               
CODE_20B92D:        DEY                       
CODE_20B92E:        BPL CODE_20B919           
CODE_20B930:        INC $AC                   
CODE_20B932:        REP #$20                  
CODE_20B934:        LDX #$44                  
CODE_20B936:        LDA #$0000                
CODE_20B939:        STA $1D80,x               
CODE_20B93C:        DEX                       
CODE_20B93D:        DEX                       
CODE_20B93E:        BPL CODE_20B939           
CODE_20B940:        SEP #$20                  
CODE_20B942:        RTS                       

CODE_20B943:        JSR CODE_20C520           
CODE_20B946:        LDA $F3                   
CODE_20B948:        AND #$C1                  
CODE_20B94A:        CMP #$C1                  
CODE_20B94C:        BNE CODE_20B951           
CODE_20B94E:        JMP CODE_20CB96           

CODE_20B951:        LDA $F3                   
CODE_20B953:        AND #$C4                  
CODE_20B955:        CMP #$C4                  
CODE_20B957:        BNE CODE_20B95C           
CODE_20B959:        JMP CODE_20C617           

CODE_20B95C:        LDA $18                   
CODE_20B95E:        AND #$0C                  
CODE_20B960:        BEQ CODE_20B975           
CODE_20B962:        LSR A                     
CODE_20B963:        LSR A                     
CODE_20B964:        LSR A                     
CODE_20B965:        TAX                       
CODE_20B966:        LDA $03FE                 
CODE_20B969:        CLC                       
CODE_20B96A:        ADC.w DATA_20A4B0,x               
CODE_20B96D:        AND #$07                  
CODE_20B96F:        STA $03FE                 
CODE_20B972:        JMP CODE_20BA1F           

CODE_20B975:        LDA $18                   
CODE_20B977:        AND #$20                  
CODE_20B979:        BEQ CODE_20B986           
CODE_20B97B:        INC $072B                 
CODE_20B97E:        LDA $072B                 
CODE_20B981:        AND #$01                  
CODE_20B983:        STA $072B                 
CODE_20B986:        LDY $072B                 
CODE_20B989:        LDA #$48                  
CODE_20B98B:        STA $09F0                 
CODE_20B98E:        LDA DATA_20B79B,y               
CODE_20B991:        STA $09F1                 
CODE_20B994:        LDA #$4F                  
CODE_20B996:        STA $09F2                 
CODE_20B999:        LDA #$20                  
CODE_20B99B:        STA $09F3                 
CODE_20B99E:        LDA #$00                  
CODE_20B9A0:        STA $0A9C                 
CODE_20B9A3:        LDA $18                   
CODE_20B9A5:        AND #$80                  
CODE_20B9A7:        BEQ CODE_20B9D7           
CODE_20B9A9:        LDA $0736                 
CODE_20B9AC:        CMP #$63                  
CODE_20B9AE:        BEQ CODE_20B9B9           
CODE_20B9B0:        LDA $0736                 
CODE_20B9B3:        CLC                       
CODE_20B9B4:        ADC #$05                  
CODE_20B9B6:        STA $0736                 
CODE_20B9B9:        REP #$20                  
CODE_20B9BB:        LDA #$1401                
CODE_20B9BE:        STA $1602                 
CODE_20B9C1:        LDA #$0100                
CODE_20B9C4:        STA $1604                 
CODE_20B9C7:        LDA $0736                 
CODE_20B9CA:        AND #$00FF                
CODE_20B9CD:        STA $1606                 
CODE_20B9D0:        SEP #$20                  
CODE_20B9D2:        LDA #$FF                  
CODE_20B9D4:        STA $1608                 
CODE_20B9D7:        LDA $18                   
CODE_20B9D9:        AND #$10                  
CODE_20B9DB:        BEQ CODE_20BA1F           
CODE_20B9DD:        LDA #$80                  
CODE_20B9DF:        STA $0160                 
CODE_20B9E2:        LDA #$04                  
CODE_20B9E4:        STA $AC                   
CODE_20B9E6:        LDX $072B                 
CODE_20B9E9:        LDY $0736                 
CODE_20B9EC:        TYA                       
CODE_20B9ED:        STA $0736,x               
CODE_20B9F0:        LDA #$00                  
CODE_20B9F2:        STA $0747,x               
CODE_20B9F5:        DEX                       
CODE_20B9F6:        BPL CODE_20B9EC           
CODE_20B9F8:        LDA $03FE                 
CODE_20B9FB:        STA $0727                 
CODE_20B9FE:        LDX #$1B                  
CODE_20BA00:        LDA #$08                  
CODE_20BA02:        STA $1D80,x               
CODE_20BA05:        STA $1DA3,x               
CODE_20BA08:        DEX                       
CODE_20BA09:        BPL CODE_20BA02           
CODE_20BA0B:        LDX #$0D                  
CODE_20BA0D:        LDA #$0C                  
CODE_20BA0F:        STA $1D80,x               
CODE_20BA12:        STA $1DA3,x               
CODE_20BA15:        TXA                       
CODE_20BA16:        STA $1D7F,x               
CODE_20BA19:        STA $1DA2,x               
CODE_20BA1C:        DEX                       
CODE_20BA1D:        BNE CODE_20BA15           
CODE_20BA1F:        LDA $03FE                 
CODE_20BA22:        ASL A                     
CODE_20BA23:        ASL A                     
CODE_20BA24:        ASL A                     
CODE_20BA25:        ASL A                     
CODE_20BA26:        CLC                       
CODE_20BA27:        ADC #$30                  
CODE_20BA29:        STA $0851                 
CODE_20BA2C:        LDA #$6F                  
CODE_20BA2E:        STA $0852                 
CODE_20BA31:        LDA #$00                  
CODE_20BA33:        STA $0853                 
CODE_20BA36:        LDA #$20                  
CODE_20BA38:        STA $0850                 
CODE_20BA3B:        LDA #$00                  
CODE_20BA3D:        STA $0A34                 
CODE_20BA40:        RTS                       

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

CODE_20BB4D:        JSL CODE_22E0A9           
CODE_20BB51:        LDA $0510                 
CODE_20BB54:        AND #$F0                  
CODE_20BB56:        SEC                       
CODE_20BB57:        SBC #$90                  
CODE_20BB59:        STA $0510                 
CODE_20BB5C:        LDA #$10                  
CODE_20BB5E:        STA $91                   
CODE_20BB60:        LDA #$40                  
CODE_20BB62:        STA $92                   
CODE_20BB64:        LDX #$01                  
CODE_20BB66:        STX $9F                   
CODE_20BB68:        LDA $9E                   
CODE_20BB6A:        BEQ CODE_20BB95           
CODE_20BB6C:        LDA #$08                  
CODE_20BB6E:        LDY $0512                 
CODE_20BB71:        BEQ CODE_20BB78           
CODE_20BB73:        DEC $0512                 
CODE_20BB76:        LDA #$00                  
CODE_20BB78:        STA $63,x                 
CODE_20BB7A:        LDA.l DATA_20BB49,x             
CODE_20BB7E:        STA $53,x                 
CODE_20BB80:        LDA #$A0                  
CODE_20BB82:        STA $5B,x                 
CODE_20BB84:        LDA.l DATA_20BB4B,x             
CODE_20BB88:        STA $85,x                 
CODE_20BB8A:        JSR CODE_20BD2F           
CODE_20BB8D:        JSR CODE_20BE94           
CODE_20BB90:        STZ $63,x                 
CODE_20BB92:        JMP CODE_20BBC6           

CODE_20BB95:        JSR CODE_20BBD3           
CODE_20BB98:        JSR CODE_20BC62           
CODE_20BB9B:        JSR CODE_20BD2F           
CODE_20BB9E:        JSR CODE_20C027           
CODE_20BBA1:        JSR CODE_20C059           
CODE_20BBA4:        LDA $0511                 
CODE_20BBA7:        BNE CODE_20BBAC           
CODE_20BBA9:        JSR CODE_20BE94           
CODE_20BBAC:        LDA $43,x                 
CODE_20BBAE:        BEQ CODE_20BBC6           
CODE_20BBB0:        BPL CODE_20BBBC           
CODE_20BBB2:        LDA $53,x                 
CODE_20BBB4:        CMP #$C0                  
CODE_20BBB6:        BCS CODE_20BBC6                   
CODE_20BBB8:        LDA #$C0                  
CODE_20BBBA:        BRA CODE_20BBC4           

CODE_20BBBC:        LDA $53,x                 
CODE_20BBBE:        CMP #$40                  
CODE_20BBC0:        BCC CODE_20BBC6           
CODE_20BBC2:        LDA #$3F                  
CODE_20BBC4:        STA $53,x                 
CODE_20BBC6:        DEX                       
CODE_20BBC7:        BPL CODE_20BB66           
CODE_20BBC9:        JSR CODE_20C0E7           
CODE_20BBCC:        RTS                       

DATA_20BBCD:        db $FF,$00,$01

DATA_20BBD0:        db $60,$E0,$70

CODE_20BBD3:        PHB                       
CODE_20BBD4:        PHK                       
CODE_20BBD5:        PLB                       
CODE_20BBD6:        LDY #$02                  
CODE_20BBD8:        LDA $63,x                 
CODE_20BBDA:        BPL CODE_20BBE3           
CODE_20BBDC:        EOR #$FF                  
CODE_20BBDE:        CLC                       
CODE_20BBDF:        ADC #$01                  
CODE_20BBE1:        LDY #$01                  
CODE_20BBE3:        BNE CODE_20BBE6           
CODE_20BBE5:        TAY                       
CODE_20BBE6:        STA $0E                   
CODE_20BBE8:        STY $87,x                 
CODE_20BBEA:        LDY #$18                  
CODE_20BBEC:        LDA $B8,x                 
CODE_20BBEE:        AND #$40                  
CODE_20BBF0:        BEQ CODE_20BBF4           
CODE_20BBF2:        LDY #$28                  
CODE_20BBF4:        STY $0D                   
CODE_20BBF6:        LDY #$00                  
CODE_20BBF8:        LDA $B8,x                 
CODE_20BBFA:        AND #$03                  
CODE_20BBFC:        BNE CODE_20BC0A           
CODE_20BBFE:        LDA $83,x                 
CODE_20BC00:        BNE CODE_20BC52           
CODE_20BC02:        LDA $63,x                 
CODE_20BC04:        BEQ CODE_20BC52           
CODE_20BC06:        BMI CODE_20BC24           
CODE_20BC08:        BPL CODE_20BC3C           
CODE_20BC0A:        INY                       
CODE_20BC0B:        INY                       
CODE_20BC0C:        AND $87,x                 
CODE_20BC0E:        BNE CODE_20BC1E           
CODE_20BC10:        DEY                       
CODE_20BC11:        LDA $0E                   
CODE_20BC13:        CMP $0D                   
CODE_20BC15:        BEQ CODE_20BC52           
CODE_20BC17:        BMI CODE_20BC1E           
CODE_20BC19:        LDA $83,x                 
CODE_20BC1B:        BNE CODE_20BC52           
CODE_20BC1D:        DEY                       
CODE_20BC1E:        LDA $B8,x                 
CODE_20BC20:        AND #$01                  
CODE_20BC22:        BNE CODE_20BC3C           
CODE_20BC24:        LDA #$00                  
CODE_20BC26:        SEC                       
CODE_20BC27:        SBC DATA_20BBD0,y               
CODE_20BC2A:        STA $00                   
CODE_20BC2C:        LDA DATA_20BBCD,y               
CODE_20BC2F:        EOR #$FF                  
CODE_20BC31:        STA $01                   
CODE_20BC33:        LDA $00                   
CODE_20BC35:        BNE CODE_20BC46           
CODE_20BC37:        INC $01                   
CODE_20BC39:        JMP CODE_20BC46           

CODE_20BC3C:        LDA DATA_20BBD0,y               
CODE_20BC3F:        STA $00                   
CODE_20BC41:        LDA DATA_20BBCD,y               
CODE_20BC44:        STA $01                   
CODE_20BC46:        LDA $00                   
CODE_20BC48:        CLC                       
CODE_20BC49:        ADC $0510                 
CODE_20BC4C:        LDA $63,x                 
CODE_20BC4E:        ADC $01                   
CODE_20BC50:        STA $63,x                 
CODE_20BC52:        JSR CODE_20BCDF           
CODE_20BC55:        PLB                       
CODE_20BC56:        RTS                       

DATA_20BC57:        db $D0,$CE,$CC,$CA,$CA,$CA

DATA_20BC5D:        db $C8

DATA_20BC5E:        db $00,$02,$04,$08                 

CODE_20BC62:        PHB                       
CODE_20BC63:        PHK                       
CODE_20BC64:        PLB                       
CODE_20BC65:        LDA $BA,x                 
CODE_20BC67:        AND #$80                  
CODE_20BC69:        STA $00                   
CODE_20BC6B:        BEQ CODE_20BC90           
CODE_20BC6D:        LDA $83,x                 
CODE_20BC6F:        BNE CODE_20BC90           
CODE_20BC71:        LDA $63,x                 
CODE_20BC73:        BPL CODE_20BC7A           
CODE_20BC75:        EOR #$FF                  
CODE_20BC77:        CLC                       
CODE_20BC78:        ADC #$01                  
CODE_20BC7A:        LSR A                     
CODE_20BC7B:        LSR A                     
CODE_20BC7C:        LSR A                     
CODE_20BC7D:        LSR A                     
CODE_20BC7E:        TAY                       
CODE_20BC7F:        LDA.w DATA_20BC5D             
CODE_20BC82:        SEC                       
CODE_20BC83:        SBC DATA_20BC5E,y               
CODE_20BC86:        STA $6B,x                 
CODE_20BC88:        LDA #$01                  
CODE_20BC8A:        STA $83,x                 
CODE_20BC8C:        LDA #$00                  
CODE_20BC8E:        STA $95,x                 
CODE_20BC90:        LDA $83,x                 
CODE_20BC92:        BEQ CODE_20BCC0           
CODE_20BC94:        LDY #$05                  
CODE_20BC96:        LDA $6B,x                 
CODE_20BC98:        CMP #$E0                  
CODE_20BC9A:        BPL CODE_20BCA4           
CODE_20BC9C:        LDA $B8,x                 
CODE_20BC9E:        AND #$80                  
CODE_20BCA0:        BEQ CODE_20BCA4           
CODE_20BCA2:        LDY #$01                  
CODE_20BCA4:        TYA                       
CODE_20BCA5:        CLC                       
CODE_20BCA6:        ADC $6B,x                 
CODE_20BCA8:        STA $6B,x                 
CODE_20BCAA:        LDA $8F,x                 
CODE_20BCAC:        CMP #$02                  
CODE_20BCAE:        BNE CODE_20BCC0           
CODE_20BCB0:        LDA $B8,x                 
CODE_20BCB2:        AND #$80                  
CODE_20BCB4:        BEQ CODE_20BCC0           
CODE_20BCB6:        LDA $6B,x                 
CODE_20BCB8:        CMP #$08                  
CODE_20BCBA:        BMI CODE_20BCC0           
CODE_20BCBC:        LDA #$08                  
CODE_20BCBE:        STA $6B,x                 
CODE_20BCC0:        JSR CODE_20BD0E           
CODE_20BCC3:        LDA $4B,x                 
CODE_20BCC5:        BEQ CODE_20BCCD           
CODE_20BCC7:        LDA #$20                  
CODE_20BCC9:        STA $6B,x                 
CODE_20BCCB:        BNE CODE_20BCDD           
CODE_20BCCD:        LDA $5B,x                 
CODE_20BCCF:        CMP #$A0                  
CODE_20BCD1:        BCC CODE_20BCDD           
CODE_20BCD3:        LDA #$A0                  
CODE_20BCD5:        STA $5B,x                 
CODE_20BCD7:        LDA #$00                  
CODE_20BCD9:        STA $83,x                 
CODE_20BCDB:        STA $6B,x                 
CODE_20BCDD:        PLB                       
CODE_20BCDE:        RTS                       

CODE_20BCDF:        LDA $63,x                 
CODE_20BCE1:        PHA                       
CODE_20BCE2:        ASL A                     
CODE_20BCE3:        ASL A                     
CODE_20BCE4:        ASL A                     
CODE_20BCE5:        ASL A                     
CODE_20BCE6:        STA $0B                   
CODE_20BCE8:        LDY #$00                  
CODE_20BCEA:        PLA                       
CODE_20BCEB:        LSR A                     
CODE_20BCEC:        LSR A                     
CODE_20BCED:        LSR A                     
CODE_20BCEE:        LSR A                     
CODE_20BCEF:        CMP #$08                  
CODE_20BCF1:        BCC CODE_20BCF6           
CODE_20BCF3:        DEY                       
CODE_20BCF4:        ORA #$F0                  
CODE_20BCF6:        STA $0A                   
CODE_20BCF8:        STY $0C                   
CODE_20BCFA:        LDA $73,x                 
CODE_20BCFC:        CLC                       
CODE_20BCFD:        ADC $0B                   
CODE_20BCFF:        STA $73,x                 
CODE_20BD01:        LDA $53,x                 
CODE_20BD03:        ADC $0A                   
CODE_20BD05:        STA $53,x                 
CODE_20BD07:        LDA $43,x                 
CODE_20BD09:        ADC $0C                   
CODE_20BD0B:        STA $43,x                 
CODE_20BD0D:        RTS                       

CODE_20BD0E:        LDA $6B,x                 
CODE_20BD10:        BMI CODE_20BD1A           
CODE_20BD12:        CMP #$40                  
CODE_20BD14:        BMI CODE_20BD1A           
CODE_20BD16:        LDA #$40                  
CODE_20BD18:        STA $6B,x                 
CODE_20BD1A:        TXA                       
CODE_20BD1B:        PHA                       
CODE_20BD1C:        CLC                       
CODE_20BD1D:        ADC #$08                  
CODE_20BD1F:        TAX                       
CODE_20BD20:        JSR CODE_20BCDF           
CODE_20BD23:        PLA                       
CODE_20BD24:        TAX                       
CODE_20BD25:        RTS                       

DATA_20BD26:        db $07,$06,$05,$04,$03,$02,$01,$01
                    db $01
        
CODE_20BD2F:        PHB             
CODE_20BD30:        PHK                       
CODE_20BD31:        PLB                       
CODE_20BD32:        LDA $63,x                 
CODE_20BD34:        BPL CODE_20BD3B           
CODE_20BD36:        EOR #$FF                  
CODE_20BD38:        CLC                       
CODE_20BD39:        ADC #$01                  
CODE_20BD3B:        LSR A                     
CODE_20BD3C:        LSR A                     
CODE_20BD3D:        LSR A                     
CODE_20BD3E:        TAY                       
CODE_20BD3F:        INC $8B,x                 
CODE_20BD41:        LDA $8B,x                 
CODE_20BD43:        CMP DATA_20BD26,y               
CODE_20BD46:        BMI CODE_20BD58           
CODE_20BD48:        LDA #$00                  
CODE_20BD4A:        STA $8B,x                 
CODE_20BD4C:        INC $89,x                 
CODE_20BD4E:        LDA $89,x                 
CODE_20BD50:        CMP #$04                  
CODE_20BD52:        BMI CODE_20BD58           
CODE_20BD54:        LDA #$00                  
CODE_20BD56:        STA $89,x                 
CODE_20BD58:        LDA $B8,x                 
CODE_20BD5A:        AND #$03                  
CODE_20BD5C:        BNE CODE_20BD66           
CODE_20BD5E:        LDA $63,x                 
CODE_20BD60:        BNE CODE_20BD66           
CODE_20BD62:        LDA #$02                  
CODE_20BD64:        STA $89,x                 
CODE_20BD66:        LDA $85,x                 
CODE_20BD68:        STA $00                   
CODE_20BD6A:        LDA $B8,x                 
CODE_20BD6C:        AND #$03                  
CODE_20BD6E:        BEQ CODE_20BD7A           
CODE_20BD70:        LDY #$00                  
CODE_20BD72:        AND #$02                  
CODE_20BD74:        BNE CODE_20BD78           
CODE_20BD76:        LDY #$40                  
CODE_20BD78:        STY $85,x                 
CODE_20BD7A:        LDA $85,x                 
CODE_20BD7C:        EOR $00                   
CODE_20BD7E:        STA $00                   
CODE_20BD80:        PHX                       
CODE_20BD81:        LDA $8F,x                 
CODE_20BD83:        ASL A                     
CODE_20BD84:        ASL A                     
CODE_20BD85:        ORA $89,x                 
CODE_20BD87:        TAX                       
CODE_20BD88:        LDA.l DATA_20BB21,x             
CODE_20BD8C:        PLX                       
CODE_20BD8D:        STA $8D,x                 
CODE_20BD8F:        LDA $63,x                 
CODE_20BD91:        CLC                       
CODE_20BD92:        ADC #$01                  
CODE_20BD94:        CMP #$03                  
CODE_20BD96:        BCC CODE_20BDA9           
CODE_20BD98:        LDA $87,x                 
CODE_20BD9A:        AND $B8,x                 
CODE_20BD9C:        BEQ CODE_20BDA9           
CODE_20BD9E:        LDY $8F,x                 
CODE_20BDA0:        BEQ CODE_20BDA4           
CODE_20BDA2:        LDY #$01                  
CODE_20BDA4:        LDA $BB34,y               
CODE_20BDA7:        STA $8D,x                 
CODE_20BDA9:        LDA $B8,x                 
CODE_20BDAB:        AND #$04                  
CODE_20BDAD:        BEQ CODE_20BDCA           
CODE_20BDAF:        LDY $8F,x                 
CODE_20BDB1:        LDA $BB31,y               
CODE_20BDB4:        STA $8D,x                 
CODE_20BDB6:        LDA $BA,x                 
CODE_20BDB8:        AND #$04                  
CODE_20BDBA:        BEQ CODE_20BDCA           
CODE_20BDBC:        LDY #$00                  
CODE_20BDBE:        TXA                       
CODE_20BDBF:        BNE CODE_20BDC2           
CODE_20BDC1:        INY                       
CODE_20BDC2:        LDA #$A0                  
CODE_20BDC4:        STA $0083,y               
CODE_20BDC7:        STA $006B,y               
CODE_20BDCA:        LDA $B8,x                 
CODE_20BDCC:        AND #$08                  
CODE_20BDCE:        BEQ CODE_20BDD4           
CODE_20BDD0:        LDA #$17                  
CODE_20BDD2:        STA $8D,x                 
CODE_20BDD4:        LDA $83,x                 
CODE_20BDD6:        BEQ CODE_20BE0E           
CODE_20BDD8:        LDA $8F,x                 
CODE_20BDDA:        BEQ CODE_20BE0E           
CODE_20BDDC:        CMP #$02                  
CODE_20BDDE:        BNE CODE_20BE04           
CODE_20BDE0:        LDA #$15                  
CODE_20BDE2:        LDY $6B,x                 
CODE_20BDE4:        BMI CODE_20BE0C           
CODE_20BDE6:        LDA $95,x                 
CODE_20BDE8:        BEQ CODE_20BDEF           
CODE_20BDEA:        DEC $95,x                 
CODE_20BDEC:        JMP CODE_20BDF9           

CODE_20BDEF:        LDA $B8,x                 
CODE_20BDF1:        AND #$80                  
CODE_20BDF3:        BEQ CODE_20BDF9           
CODE_20BDF5:        LDA #$0A                  
CODE_20BDF7:        STA $95,x                 
CODE_20BDF9:        LDA $95,x                 
CODE_20BDFB:        LSR A                     
CODE_20BDFC:        LSR A                     
CODE_20BDFD:        TAY                       
CODE_20BDFE:        LDA DATA_20BB36,y               
CODE_20BE01:        JMP CODE_20BE0C           

CODE_20BE04:        LDA #$14                  
CODE_20BE06:        LDY $6B,x                 
CODE_20BE08:        BMI CODE_20BE0C           
CODE_20BE0A:        LDA #$00                  
CODE_20BE0C:        STA $8D,x                 
CODE_20BE0E:        LDA $9B,x                 
CODE_20BE10:        BEQ CODE_20BE18           
CODE_20BE12:        DEC $9B,x                 
CODE_20BE14:        LDA #$0D                  
CODE_20BE16:        STA $8D,x                 
CODE_20BE18:        LDA $99,x                 
CODE_20BE1A:        BEQ CODE_20BE22           
CODE_20BE1C:        DEC $99,x                 
CODE_20BE1E:        LDA #$16                  
CODE_20BE20:        STA $8D,x                 
CODE_20BE22:        TXA                       
CODE_20BE23:        BNE CODE_20BE3D           
CODE_20BE25:        LDA $9D                   
CODE_20BE27:        BEQ CODE_20BE3D           
CODE_20BE29:        LSR A                     
CODE_20BE2A:        LSR A                     
CODE_20BE2B:        TAY                       
CODE_20BE2C:        LDA $BB3D,y               
CODE_20BE2F:        STA $8D                   
CODE_20BE31:        LDY #$00                  
CODE_20BE33:        CMP #$11                  
CODE_20BE35:        BEQ CODE_20BE39           
CODE_20BE37:        LDY #$01                  
CODE_20BE39:        STY $8F                   
CODE_20BE3B:        DEC $9D                   
CODE_20BE3D:        LDA $97,x                 
CODE_20BE3F:        BNE CODE_20BE49           
CODE_20BE41:        LDA $BA,x                 
CODE_20BE43:        AND #$20                  
CODE_20BE45:        BEQ CODE_20BE76           
CODE_20BE47:        STA $97,x                 
CODE_20BE49:        LDY $89,x                 
CODE_20BE4B:        LDA $83,x                 
CODE_20BE4D:        BEQ CODE_20BE51           
CODE_20BE4F:        LDY #$00                  
CODE_20BE51:        LDA $BB39,y               
CODE_20BE54:        STA $8D,x                 
CODE_20BE56:        LDA $00                   
CODE_20BE58:        BEQ CODE_20BE5E           
CODE_20BE5A:        LDA #$08                  
CODE_20BE5C:        STA $99,x                 
CODE_20BE5E:        LDA $99,x                 
CODE_20BE60:        BEQ CODE_20BE68           
CODE_20BE62:        DEC $99,x                 
CODE_20BE64:        LDA #$0A                  
CODE_20BE66:        STA $8D,x                 
CODE_20BE68:        LDA $BA,x                 
CODE_20BE6A:        AND #$40                  
CODE_20BE6C:        BEQ CODE_20BE76           
CODE_20BE6E:        STZ $97,x                 
CODE_20BE70:        STZ $99,x                 
CODE_20BE72:        LDA #$0A                  
CODE_20BE74:        STA $9B,x                 
CODE_20BE76:        PLB                       
CODE_20BE77:        RTS                       

DATA_20BE78:        db $10,$08,$00

DATA_20BE7B:        db $00,$02,$04

DATA_20BE7E:        db $06,$08,$0A,$10,$12,$14,$16,$18
                    db $1A

DATA_20BE87:        db $00,$06

DATA_20BE89:        db $0A,$1A

DATA_20BE8B:        db $07,$05

CODE_20BE8D:        PHX                       ;0 S:01FF P:EnvMXdIzc HC:16846 VC:000 FC:00 I:00
CODE_20BE8E:        JSR CODE_20E07C           ;0 S:01FF P:EnvMXdIzc HC:16862 VC:000 FC:00 I:00
CODE_20BE91:        PLX                       ;0 S:01FF P:EnvMXdIzc HC:16878 VC:000 FC:00 I:00
CODE_20BE92:        BRA CODE_20BE99           ;0 S:01FF P:EnvMXdIzc HC:16894 VC:000 FC:00 I:00

CODE_20BE94:        PHX                       
CODE_20BE95:        JSR CODE_20E0A2           
CODE_20BE98:        PLX                       
CODE_20BE99:        PHB                       
CODE_20BE9A:        PHK                       
CODE_20BE9B:        PLB                       
CODE_20BE9C:        LDA #$20                  
CODE_20BE9E:        STA $0B                   
CODE_20BEA0:        LDA $8F,x                 
CODE_20BEA2:        BNE CODE_20BEAC           
CODE_20BEA4:        LDA $B8,x                 
CODE_20BEA6:        AND #$10                  
CODE_20BEA8:        BEQ CODE_20BEAC           
CODE_20BEAA:        STA $0B                   
CODE_20BEAC:        LDA $5B,x                 
CODE_20BEAE:        STA $0E                   
CODE_20BEB0:        LDA $53,x                 
CODE_20BEB2:        STA $0F                   
CODE_20BEB4:        LDA $85,x                 
CODE_20BEB6:        STA $0D                   
CODE_20BEB8:        LDA $93,x                 
CODE_20BEBA:        STA $0C                   
CODE_20BEBC:        PHX                       
CODE_20BEBD:        LDX $9F                   
CODE_20BEBF:        LDA.l DATA_20BE8B,x             
CODE_20BEC3:        ASL A                     
CODE_20BEC4:        STA $08                   
CODE_20BEC6:        PLX                       
CODE_20BEC7:        LDA.w DATA_20BE87,x               
CODE_20BECA:        STA $00                   
CODE_20BECC:        LDA $91,x                 
CODE_20BECE:        TAX                       
CODE_20BECF:        PHX                       
CODE_20BED0:        LDY #$02                  
CODE_20BED2:        PHY                       
CODE_20BED3:        LDY $00                   
CODE_20BED5:        LDA DATA_20BE7B,y               
CODE_20BED8:        STA $081A,x               
CODE_20BEDB:        INC A                     
CODE_20BEDC:        STA $081E,x               
CODE_20BEDF:        LDA DATA_20BE7E,y               
CODE_20BEE2:        STA $0802,x               
CODE_20BEE5:        INC A                     
CODE_20BEE6:        STA $0806,x               
CODE_20BEE9:        PLY                       
CODE_20BEEA:        LDA $0D                   
CODE_20BEEC:        AND #$C0                  
CODE_20BEEE:        ORA $08                   
CODE_20BEF0:        ORA $0B                   
CODE_20BEF2:        STA $0803,x               
CODE_20BEF5:        STA $0807,x               
CODE_20BEF8:        STA $081B,x               
CODE_20BEFB:        STA $081F,x               
CODE_20BEFE:        ASL $0C                   
CODE_20BF00:        BCS CODE_20BF19                   
CODE_20BF02:        LDA $0E                   
CODE_20BF04:        STA $0819,x               
CODE_20BF07:        CLC                       
CODE_20BF08:        ADC #$08                  
CODE_20BF0A:        STA $081D,x               
CODE_20BF0D:        CLC                       
CODE_20BF0E:        ADC #$08                  
CODE_20BF10:        STA $0801,x               
CODE_20BF13:        CLC                       
CODE_20BF14:        ADC #$08                  
CODE_20BF16:        STA $0805,x               
CODE_20BF19:        LDA $0F                   
CODE_20BF1B:        CLC                       
CODE_20BF1C:        ADC DATA_20BE78,y               
CODE_20BF1F:        STA $0800,x               
CODE_20BF22:        STA $0804,x               
CODE_20BF25:        STA $0818,x               
CODE_20BF28:        STA $081C,x               
CODE_20BF2B:        PHX                       
CODE_20BF2C:        TXA                       
CODE_20BF2D:        LSR A                     
CODE_20BF2E:        LSR A                     
CODE_20BF2F:        TAX                       
CODE_20BF30:        LDA #$00                  
CODE_20BF32:        STA $0A20,x               
CODE_20BF35:        STA $0A21,x               
CODE_20BF38:        STA $0A26,x               
CODE_20BF3B:        STA $0A27,x               
CODE_20BF3E:        PLX                       
CODE_20BF3F:        INX                       
CODE_20BF40:        INX                       
CODE_20BF41:        INX                       
CODE_20BF42:        INX                       
CODE_20BF43:        INX                       
CODE_20BF44:        INX                       
CODE_20BF45:        INX                       
CODE_20BF46:        INX                       
CODE_20BF47:        INC $00                   
CODE_20BF49:        DEY                       
CODE_20BF4A:        BPL CODE_20BED2           
CODE_20BF4C:        PLX                       
CODE_20BF4D:        LDA $0D                   
CODE_20BF4F:        AND #$40                  
CODE_20BF51:        BEQ CODE_20BF9D           
CODE_20BF53:        LDA $0802,x               
CODE_20BF56:        PHA                       
CODE_20BF57:        LDA $080A,x               
CODE_20BF5A:        STA $0802,x               
CODE_20BF5D:        PLA                       
CODE_20BF5E:        STA $080A,x               
CODE_20BF61:        LDA $0806,x               
CODE_20BF64:        PHA                       
CODE_20BF65:        LDA $080E,x               
CODE_20BF68:        STA $0806,x               
CODE_20BF6B:        PLA                       
CODE_20BF6C:        STA $080E,x               
CODE_20BF6F:        LDA $0810,x               
CODE_20BF72:        CLC                       
CODE_20BF73:        ADC #$E8                  
CODE_20BF75:        STA $0810,x               
CODE_20BF78:        STA $0814,x               
CODE_20BF7B:        STA $0828,x               
CODE_20BF7E:        STA $082C,x               
CODE_20BF81:        LDA $081A,x               
CODE_20BF84:        PHA                       
CODE_20BF85:        LDA $0822,x               
CODE_20BF88:        STA $081A,x               
CODE_20BF8B:        PLA                       
CODE_20BF8C:        STA $0822,x               
CODE_20BF8F:        LDA $081E,x               
CODE_20BF92:        PHA                       
CODE_20BF93:        LDA $0826,x               
CODE_20BF96:        STA $081E,x               
CODE_20BF99:        PLA                       
CODE_20BF9A:        STA $0826,x               
CODE_20BF9D:        REP #$20                  
CODE_20BF9F:        LDY #$0C                  
CODE_20BFA1:        LDA $9F                   
CODE_20BFA3:        AND #$00FF                
CODE_20BFA6:        BNE CODE_20BFAA           
CODE_20BFA8:        LDY #$00                  
CODE_20BFAA:        LDA $0226,y               
CODE_20BFAD:        CMP $0228,y               
CODE_20BFB0:        BNE CODE_20BFD3           
CODE_20BFB2:        SEP #$20                  
CODE_20BFB4:        LDA $081B,x               
CODE_20BFB7:        AND #$BF                  
CODE_20BFB9:        STA $0803,x               
CODE_20BFBC:        STA $0807,x               
CODE_20BFBF:        STA $081B,x               
CODE_20BFC2:        STA $081F,x               
CODE_20BFC5:        ORA #$40                  
CODE_20BFC7:        STA $080B,x               
CODE_20BFCA:        STA $080F,x               
CODE_20BFCD:        STA $0823,x               
CODE_20BFD0:        STA $0827,x               
CODE_20BFD3:        SEP #$20                  
CODE_20BFD5:        LDY $9F                   
CODE_20BFD7:        LDA $008D,y               
CODE_20BFDA:        CMP #$0D                  
CODE_20BFDC:        BNE CODE_20C011           
CODE_20BFDE:        LDA $0801,x               
CODE_20BFE1:        STA $0811,x               
CODE_20BFE4:        LDA $0805,x               
CODE_20BFE7:        STA $0815,x               
CODE_20BFEA:        LDA #$F8                  
CODE_20BFEC:        LDY $0D                   
CODE_20BFEE:        BEQ CODE_20BFF2           
CODE_20BFF0:        LDA #$10                  
CODE_20BFF2:        CLC                       
CODE_20BFF3:        ADC $0818,x               
CODE_20BFF6:        STA $0810,x               
CODE_20BFF9:        STA $0814,x               
CODE_20BFFC:        LDY $9F                   
CODE_20BFFE:        LDA DATA_20BE89,y               
CODE_20C001:        STA $0812,x               
CODE_20C004:        INC A                     
CODE_20C005:        STA $0816,x               
CODE_20C008:        LDA $081B,x               
CODE_20C00B:        STA $0813,x               
CODE_20C00E:        STA $0817,x               
CODE_20C011:        LDX $9F                   
CODE_20C013:        PLB                       
CODE_20C014:        RTS                       

DATA_20C015:        db $00,$00,$00,$00,$00,$FF

DATA_20C01B:        db $00,$08,$10,$00,$08,$F8

DATA_20C021:        db $80,$40,$20,$80,$40,$20

CODE_20C027:        PHB       
CODE_20C028:        PHK         
CODE_20C029:        PLB                       
CODE_20C02A:        LDA #$00                  
CODE_20C02C:        STA $93,x                 
CODE_20C02E:        LDY #$02                  
CODE_20C030:        LDA $85,x                 
CODE_20C032:        AND #$40                  
CODE_20C034:        BEQ CODE_20C038           
CODE_20C036:        LDY #$05                  
CODE_20C038:        LDA $53,x                 
CODE_20C03A:        CLC                       
CODE_20C03B:        ADC DATA_20C01B,y               
CODE_20C03E:        LDA $43,x                 
CODE_20C040:        ADC DATA_20C015,y               
CODE_20C043:        BEQ CODE_20C04C           
CODE_20C045:        LDA $93,x                 
CODE_20C047:        ORA DATA_20C021,y               
CODE_20C04A:        STA $93,x                 
CODE_20C04C:        DEY                       
CODE_20C04D:        BMI CODE_20C053           
CODE_20C04F:        CPY #$02                  
CODE_20C051:        BNE CODE_20C038           
CODE_20C053:        PLB                       
CODE_20C054:        RTS                       

DATA_20C055:        db $86,$84,$82,$80

CODE_20C059:        PHX
CODE_20C05A:        TXA                       
CODE_20C05B:        BNE CODE_20C062           
CODE_20C05D:        LDA $0511                 
CODE_20C060:        BNE CODE_20C065           
CODE_20C062:        BRL CODE_20C0E5           

CODE_20C065:        DEC $0511                 
CODE_20C068:        AND #$0C                  
CODE_20C06A:        LSR A                     
CODE_20C06B:        LSR A                     
CODE_20C06C:        TAX                       
CODE_20C06D:        LDA.l DATA_20C055,x             
CODE_20C071:        STA $01                   
CODE_20C073:        LDY $91                   
CODE_20C075:        LDA #$C0                  
CODE_20C077:        STA $00                   
CODE_20C079:        LDA $5B                   
CODE_20C07B:        CLC                       
CODE_20C07C:        ADC #$08                  
CODE_20C07E:        STA $0801,y               
CODE_20C081:        CLC                       
CODE_20C082:        ADC #$08                  
CODE_20C084:        STA $0805,y               
CODE_20C087:        LDA $01                   
CODE_20C089:        STA $0802,y               
CODE_20C08C:        INC A                     
CODE_20C08D:        STA $0806,y               
CODE_20C090:        LDA $00                   
CODE_20C092:        ORA #$24                  
CODE_20C094:        STA $0803,y               
CODE_20C097:        STA $0807,y               
CODE_20C09A:        LDA $53                   
CODE_20C09C:        STA $0800,y               
CODE_20C09F:        STA $0804,y               
CODE_20C0A2:        LDA $00                   
CODE_20C0A4:        AND #$F0                  
CODE_20C0A6:        BEQ CODE_20C0C2           
CODE_20C0A8:        LDA $0800,y               
CODE_20C0AB:        CLC                       
CODE_20C0AC:        ADC #$08                  
CODE_20C0AE:        STA $0800,y               
CODE_20C0B1:        STA $0804,y               
CODE_20C0B4:        LDA $0801,y               
CODE_20C0B7:        PHA                       
CODE_20C0B8:        LDA $0805,y               
CODE_20C0BB:        STA $0801,y               
CODE_20C0BE:        PLA                       
CODE_20C0BF:        STA $0805,y               
CODE_20C0C2:        PHY                       
CODE_20C0C3:        TYA                       
CODE_20C0C4:        LSR A                     
CODE_20C0C5:        LSR A                     
CODE_20C0C6:        TAY                       
CODE_20C0C7:        LDA #$00                  
CODE_20C0C9:        STA $0A20,y               
CODE_20C0CC:        STA $0A21,y               
CODE_20C0CF:        PLY                       
CODE_20C0D0:        INY                       
CODE_20C0D1:        INY                       
CODE_20C0D2:        INY                       
CODE_20C0D3:        INY                       
CODE_20C0D4:        INY                       
CODE_20C0D5:        INY                       
CODE_20C0D6:        INY                       
CODE_20C0D7:        INY                       
CODE_20C0D8:        LDA $00                   
CODE_20C0DA:        SEC                       
CODE_20C0DB:        SBC #$C0                  
CODE_20C0DD:        STA $00                   
CODE_20C0DF:        BCS CODE_20C079                   
CODE_20C0E1:        STZ $6B                   
CODE_20C0E3:        STZ $63                   
CODE_20C0E5:        PLX                       
CODE_20C0E6:        RTS                       

CODE_20C0E7:        LDX #$05                  
CODE_20C0E9:        LDA $A6,x                 
CODE_20C0EB:        BEQ CODE_20C0FA           
CODE_20C0ED:        CMP #$01                  
CODE_20C0EF:        BNE CODE_20C0F7           
CODE_20C0F1:        JSR CODE_20C10C           
CODE_20C0F4:        JMP CODE_20C0FA           

CODE_20C0F7:        JSR CODE_20C140           
CODE_20C0FA:        LDA $0513,x               
CODE_20C0FD:        BEQ CODE_20C102           
CODE_20C0FF:        DEC $0513,x               
CODE_20C102:        DEX                       
CODE_20C103:        BPL CODE_20C0E9           
CODE_20C105:        RTS                       

DATA_20C106:        db $D0,$20,$60,$43,$B0,$78

CODE_20C10C:        LDA.l DATA_20C106,x             
CODE_20C110:        STA $55,x                 
CODE_20C112:        STZ $5D,x                 
CODE_20C114:        STZ $65,x                 
CODE_20C116:        STZ $6D,x                 
CODE_20C118:        INC $A6,x                 
CODE_20C11A:        TXA                       
CODE_20C11B:        JSL CODE_20FB1F           

PNTR_20C11F:          dw CODE_20C139
               dw CODE_20C139
               dw CODE_20C12B
               dw CODE_20C13A
               dw CODE_20C139
               dw CODE_20C139

CODE_20C12B:        STZ $65,x
CODE_20C12D:        STZ $0519,x
CODE_20C130:        LDA #$10
CODE_20C132:        STA $0513,x      
CODE_20C135:        LDA #$04                  
CODE_20C137:        STA $6D,x                 
CODE_20C139:        RTS                       

CODE_20C13A:        LDA #$B9                  
CODE_20C13C:        STA $0519,x               
CODE_20C13F:        RTS                       

CODE_20C140:        TXA                       
CODE_20C141:        JSL CODE_20FB1F           

PNTR_20C145:          dw CODE_20C151
               dw CODE_20C164
               dw CODE_20C17A
               dw CODE_20C1DD
               dw CODE_20C229
               dw CODE_20C273

CODE_20C151:        JSR CODE_20C3B2           
CODE_20C154:        BNE CODE_20C15E           
CODE_20C156:        LDA #$20                  
CODE_20C158:        STA $65,x                 
CODE_20C15A:        LDA #$B0                  
CODE_20C15C:        STA $6D,x                 
CODE_20C15E:        JSR CODE_20C418           
CODE_20C161:        JMP CODE_20C3CE           

CODE_20C164:        JSR CODE_20C3B2           
CODE_20C167:        BNE CODE_20C16D           
CODE_20C169:        LDA #$F0                  
CODE_20C16B:        STA $65,x                 
CODE_20C16D:        JSR CODE_20C418           
CODE_20C170:        JMP CODE_20C3CE           

DATA_20C173:        db $02,$FE

DATA_20C175:        db $20,$E0

DATA_20C177:        db $0A,$F6,$08

CODE_20C17A:        PHB                       
CODE_20C17B:        PHK                       
CODE_20C17C:        PLB                       
CODE_20C17D:        LDA $0513,x               
CODE_20C180:        BEQ CODE_20C18E           
CODE_20C182:        JSR CODE_20C508           
CODE_20C185:        INC $6D,x                 
CODE_20C187:        LDA $6D,x                 
CODE_20C189:        BNE CODE_20C1B7           
CODE_20C18B:        STZ $0513,x               
CODE_20C18E:        LDA $0519,x               
CODE_20C191:        AND #$01                  
CODE_20C193:        TAY                       
CODE_20C194:        LDA DATA_20C173,y               
CODE_20C197:        CLC                       
CODE_20C198:        ADC $65,x                 
CODE_20C19A:        STA $65,x                 
CODE_20C19C:        CMP DATA_20C175,y               
CODE_20C19F:        BNE CODE_20C1A4           
CODE_20C1A1:        INC $0519,x               
CODE_20C1A4:        LDA $65,x                 
CODE_20C1A6:        BPL CODE_20C1A9           
CODE_20C1A8:        INY                       
CODE_20C1A9:        LDA DATA_20C177,y               
CODE_20C1AC:        CLC                       
CODE_20C1AD:        ADC #$06                  
CODE_20C1AF:        STA $6D,x                 
CODE_20C1B1:        JSR CODE_20C500           
CODE_20C1B4:        JSR CODE_20C508           
CODE_20C1B7:        LDA #$40                  
CODE_20C1B9:        LDY $65,x                 
CODE_20C1BB:        BEQ CODE_20C1C3           
CODE_20C1BD:        BPL CODE_20C1C1           
CODE_20C1BF:        LDA #$00                  
CODE_20C1C1:        STA $A0,x                 
CODE_20C1C3:        JSR CODE_20C418           
CODE_20C1C6:        LDA $5D,x                 
CODE_20C1C8:        AND #$F0                  
CODE_20C1CA:        CMP #$50                  
CODE_20C1CC:        BNE CODE_20C1DB           
CODE_20C1CE:        LDA #$00                  
CODE_20C1D0:        STA $A6,x                 
CODE_20C1D2:        LDA #$13                  
CODE_20C1D4:        STA $0511                 
CODE_20C1D7:        LDA #$02                  
CODE_20C1D9:        STA $8F                   
CODE_20C1DB:        PLB                       
CODE_20C1DC:        RTS                       

CODE_20C1DD:        JSR CODE_20C3B2           
CODE_20C1E0:        BNE CODE_20C21D           
CODE_20C1E2:        LDA $0519,x               
CODE_20C1E5:        BEQ CODE_20C1ED           
CODE_20C1E7:        DEC $0519,x               
CODE_20C1EA:        JMP CODE_20C418           

CODE_20C1ED:        LDA $55,x                 
CODE_20C1EF:        CMP #$30                  
CODE_20C1F1:        BCS CODE_20C219                  
CODE_20C1F3:        LDA $0513,x               
CODE_20C1F6:        BNE CODE_20C1FD           
CODE_20C1F8:        LDA #$10                  
CODE_20C1FA:        STA $0513,x               
CODE_20C1FD:        CMP #$01                  
CODE_20C1FF:        BNE CODE_20C205           
CODE_20C201:        LDA #$00                  
CODE_20C203:        STA $A6,x                 
CODE_20C205:        LDA $65,x                 
CODE_20C207:        BEQ CODE_20C211           
CODE_20C209:        LDA #$00                  
CODE_20C20B:        STA $65,x                 
CODE_20C20D:        LDA #$D0                  
CODE_20C20F:        STA $6B                   
CODE_20C211:        LDA #$01                  
CODE_20C213:        STA $051F,x               
CODE_20C216:        JMP CODE_20C418           

CODE_20C219:        LDA #$F8                  
CODE_20C21B:        STA $65,x                 
CODE_20C21D:        LDA $15                   
CODE_20C21F:        AND #$08                  
CODE_20C221:        ASL A                     
CODE_20C222:        ASL A                     
CODE_20C223:        ASL A                     
CODE_20C224:        STA $A0,x                 
CODE_20C226:        JMP CODE_20C418           

CODE_20C229:        LDA $0519,x               
CODE_20C22C:        BNE CODE_20C23A           
CODE_20C22E:        LDA $55,x                 
CODE_20C230:        SEC                       
CODE_20C231:        SBC $5A                   
CODE_20C233:        CMP #$10                  
CODE_20C235:        BCS CODE_20C260                  
CODE_20C237:        INC $0519,x               
CODE_20C23A:        LDA $65,x                 
CODE_20C23C:        BNE CODE_20C24A           
CODE_20C23E:        LDA #$10                  
CODE_20C240:        STA $65,x                 
CODE_20C242:        LDA #$C0                  
CODE_20C244:        STA $6D,x                 
CODE_20C246:        LDA #$80                  
CODE_20C248:        STA $A0,x                 
CODE_20C24A:        LDA $6D,x                 
CODE_20C24C:        CLC                       
CODE_20C24D:        ADC #$04                  
CODE_20C24F:        STA $6D,x                 
CODE_20C251:        JSR CODE_20C500           
CODE_20C254:        JSR CODE_20C508           
CODE_20C257:        LDA $4D,x                 
CODE_20C259:        BEQ CODE_20C270           
CODE_20C25B:        LDA #$00                  
CODE_20C25D:        STA $A6,x                 
CODE_20C25F:        RTS                       

CODE_20C260:        JSR CODE_20C3B2           
CODE_20C263:        BNE CODE_20C270           
CODE_20C265:        LDA #$20                  
CODE_20C267:        SEC                       
CODE_20C268:        SBC $6D,x                 
CODE_20C26A:        BCC CODE_20C26E           
CODE_20C26C:        LDA #$00                  
CODE_20C26E:        STA $6D,x                 
CODE_20C270:        JMP CODE_20C418           

CODE_20C273:        LDA $A6,x                 
CODE_20C275:        SEC                       
CODE_20C276:        SBC #$02                  
CODE_20C278:        JSL CODE_20FB1F           

PNTR_20C27C:          dw CODE_20C286
               dw CODE_20C2A8
               dw CODE_20C2CA
               dw CODE_20C2F3
               dw CODE_20C31A

CODE_20C286:        JSR CODE_20C3B2
CODE_20C289:        BNE CODE_20C291           
CODE_20C28B:        INC $A6,x                 
CODE_20C28D:        STZ $65,x                 
CODE_20C28F:        BRA CODE_20C2A5           

CODE_20C291:        LDA $5D,x                 
CODE_20C293:        CMP #$90                  
CODE_20C295:        BCC CODE_20C2A5           
CODE_20C297:        LDA $65,x                 
CODE_20C299:        BNE CODE_20C2A5           
CODE_20C29B:        LDA #$E8                  
CODE_20C29D:        STA $65,x                 
CODE_20C29F:        STA $6D,x                 
CODE_20C2A1:        LDA #$10                  
CODE_20C2A3:        STA $99                   
CODE_20C2A5:        JMP CODE_20C342           

CODE_20C2A8:        JSR CODE_20C3B2           
CODE_20C2AB:        LDA $BA                   
CODE_20C2AD:        AND #$10                  
CODE_20C2AF:        BEQ CODE_20C2B9           
CODE_20C2B1:        LDA #$0A                  
CODE_20C2B3:        STA $9B                   
CODE_20C2B5:        LDA #$30                  
CODE_20C2B7:        STA $65,x                 
CODE_20C2B9:        LDA $45,x                 
CODE_20C2BB:        BEQ CODE_20C2C1           
CODE_20C2BD:        LDA #$00                  
CODE_20C2BF:        STA $65,x                 
CODE_20C2C1:        LDA $98                   
CODE_20C2C3:        BEQ CODE_20C2C7           
CODE_20C2C5:        INC $A6,x                 
CODE_20C2C7:        JMP CODE_20C342           

CODE_20C2CA:        LDA $98                   
CODE_20C2CC:        BEQ CODE_20C2D7           
CODE_20C2CE:        LDA #$D0                  
CODE_20C2D0:        STA $65,x                 
CODE_20C2D2:        LDY #$01                  
CODE_20C2D4:        JMP CODE_20C36F           

CODE_20C2D7:        JSR CODE_20C3B2           
CODE_20C2DA:        LDA $55,x                 
CODE_20C2DC:        CMP #$38                  
CODE_20C2DE:        BCS CODE_20C2EA                
CODE_20C2E0:        LDA $65,x                 
CODE_20C2E2:        BEQ CODE_20C2EA           
CODE_20C2E4:        STZ $65,x                 
CODE_20C2E6:        LDA #$D0                  
CODE_20C2E8:        STA $6B                   
CODE_20C2EA:        LDA $97                   
CODE_20C2EC:        BEQ CODE_20C2F0           
CODE_20C2EE:        INC $A6,x                 
CODE_20C2F0:        JMP CODE_20C342           

CODE_20C2F3:        LDA $97                   
CODE_20C2F5:        BEQ CODE_20C2FC           
CODE_20C2F7:        LDY #$00                  
CODE_20C2F9:        JMP CODE_20C36F           

CODE_20C2FC:        JSR CODE_20C3B2           
CODE_20C2FF:        LDA #$30                  
CODE_20C301:        STA $65,x                 
CODE_20C303:        LDA $45,x                 
CODE_20C305:        BEQ CODE_20C317           
CODE_20C307:        LDA #$FF                  
CODE_20C309:        STA $45,x                 
CODE_20C30B:        LDA #$F0                  
CODE_20C30D:        STA $55,x                 
CODE_20C30F:        LDA #$30                  
CODE_20C311:        STA $0513,x               
CODE_20C314:        INC $A6,x                 
CODE_20C316:        RTS                       

CODE_20C317:        JMP CODE_20C342           

CODE_20C31A:        LDA $0513,x               
CODE_20C31D:        BNE CODE_20C341           
CODE_20C31F:        LDA $9D                   
CODE_20C321:        BNE CODE_20C33B           
CODE_20C323:        JSR CODE_20C3B2           
CODE_20C326:        LDA $45,x                 
CODE_20C328:        BNE CODE_20C33B           
CODE_20C32A:        LDA $8F                   
CODE_20C32C:        BEQ CODE_20C33B           
CODE_20C32E:        LDA $53                   
CODE_20C330:        SEC                       
CODE_20C331:        SBC $55,x                 
CODE_20C333:        CMP #$10                  
CODE_20C335:        BCS CODE_20C33B                   
CODE_20C337:        LDA #$2C                  
CODE_20C339:        STA $9D                   
CODE_20C33B:        JSR CODE_20C3CE           
CODE_20C33E:        JSR CODE_20C342           
CODE_20C341:        RTS                       

CODE_20C342:        LDA $65,x                 
CODE_20C344:        BEQ CODE_20C35C           
CODE_20C346:        LDA $9D                   
CODE_20C348:        BNE CODE_20C35C           
CODE_20C34A:        LDA $15                   
CODE_20C34C:        AND #$06                  
CODE_20C34E:        PHA                       
CODE_20C34F:        LSR A                     
CODE_20C350:        STA $051F,x               
CODE_20C353:        PLA                       
CODE_20C354:        AND #$04                  
CODE_20C356:        ASL A                     
CODE_20C357:        ASL A                     
CODE_20C358:        ASL A                     
CODE_20C359:        ASL A                     
CODE_20C35A:        STA $A0,x                 
CODE_20C35C:        JMP CODE_20C418           

DATA_20C35F:        db $F4,$F6,$FA,$FE,$02,$06,$0A,$0C
                    db $0C,$0A,$06,$02,$FE,$FA,$F6,$F4

CODE_20C36F:        LDA $0053,y                 
CODE_20C372:        STA $55,x                  
CODE_20C374:        LDA $0043,y               
CODE_20C377:        STA $45,x                 
CODE_20C379:        LDA $005B,y               
CODE_20C37C:        CLC                       
CODE_20C37D:        ADC #$0D                  
CODE_20C37F:        STA $5D,x                 
CODE_20C381:        LDA $0085,y               
CODE_20C384:        PHP                       
CODE_20C385:        LDA $0099,y               
CODE_20C388:        PLP                       
CODE_20C389:        PHA                       
CODE_20C38A:        BEQ CODE_20C38F           
CODE_20C38C:        CLC                       
CODE_20C38D:        ADC #$08                  
CODE_20C38F:        STX $0F                   
CODE_20C391:        TAX                       
CODE_20C392:        LDA.l DATA_20C35F,x             
CODE_20C396:        BPL CODE_20C39C           
CODE_20C398:        LDX $0F                   
CODE_20C39A:        DEC $45,x                 
CODE_20C39C:        LDX $0F                   
CODE_20C39E:        CLC                       
CODE_20C39F:        ADC $55,x                 
CODE_20C3A1:        STA $55,x                 
CODE_20C3A3:        BCC CODE_20C3A7           
CODE_20C3A5:        INC $45,x                 
CODE_20C3A7:        PLA                       
CODE_20C3A8:        BNE CODE_20C3AD           
CODE_20C3AA:        JMP CODE_20C418           

CODE_20C3AD:        LDA #$00                  
CODE_20C3AF:        JMP CODE_20C41C           

CODE_20C3B2:        LDA $6D,x                 
CODE_20C3B4:        CLC                       
CODE_20C3B5:        ADC #$04                  
CODE_20C3B7:        STA $6D,x                 
CODE_20C3B9:        JSR CODE_20C508           
CODE_20C3BC:        JSR CODE_20C500           
CODE_20C3BF:        LDA $5D,x                 
CODE_20C3C1:        AND #$F0                  
CODE_20C3C3:        CMP #$B0                  
CODE_20C3C5:        BNE CODE_20C3C9           
CODE_20C3C7:        STA $5D,x                 
CODE_20C3C9:        RTS                       

DATA_20C3CA:        db $F0,$30

DATA_20C3CC:        db $FF,$00

CODE_20C3CE:        PHX          
CODE_20C3CF:        TXY         
CODE_20C3D0:        LDX #$00                  
CODE_20C3D2:        LDA $0045,y               
CODE_20C3D5:        BEQ CODE_20C3F0           
CODE_20C3D7:        BPL CODE_20C3DA           
CODE_20C3D9:        INX                       
CODE_20C3DA:        LDA $0055,y               
CODE_20C3DD:        CLC                       
CODE_20C3DE:        ADC.l DATA_20C3CA,x             
CODE_20C3E2:        LDA $0045,y               
CODE_20C3E5:        ADC.l DATA_20C3CC,x             
CODE_20C3E9:        BEQ CODE_20C3F0           
CODE_20C3EB:        LDA #$00                  
CODE_20C3ED:        STA $00A6,y               
CODE_20C3F0:        PLX                       
CODE_20C3F1:        RTS                       

DATA_20C3F2:        db $F8,$F8,$F4,$F4,$F0,$F2,$FA,$FC
                    db $FE,$FE,$DC,$DC,$D4,$D4,$D6,$D8
                    db $DA,$DA,$D6,$D8

DATA_20C406:        db $00,$02,$04,$06,$0A,$0C

DATA_20C40C:        db $00,$10,$20,$50,$40,$30

DATA_20C412:        db $01,$01,$01,$01,$02,$02

CODE_20C418:        LDA.l DATA_20C40C,x
CODE_20C41C:        PHA                       
CODE_20C41D:        LDA.l DATA_20C412,x             
CODE_20C421:        ASL A                     
CODE_20C422:        STA $02                   
CODE_20C424:        PHX                       
CODE_20C425:        LDA $051F,x               
CODE_20C428:        ASL A                     
CODE_20C429:        CLC                       
CODE_20C42A:        ADC.l DATA_20C406,x             
CODE_20C42E:        TAX                       
CODE_20C42F:        LDA.l DATA_20C3F2,x             
CODE_20C433:        STA $00                   
CODE_20C435:        LDA.l DATA_20C3F2+1,x             
CODE_20C439:        STA $01                   
CODE_20C43B:        PLX                       
CODE_20C43C:        PLA                       
CODE_20C43D:        TAY                       
CODE_20C43E:        LDA $5D,x                 
CODE_20C440:        CMP #$E8                  
CODE_20C442:        BCC CODE_20C445           
CODE_20C444:        RTS                       

CODE_20C445:        STA $0901,y               
CODE_20C448:        STA $0905,y               
CODE_20C44B:        CLC                       
CODE_20C44C:        ADC #$08                  
CODE_20C44E:        STA $0909,y               
CODE_20C451:        STA $090D,y               
CODE_20C454:        LDA $55,x                 
CODE_20C456:        STA $0900,y               
CODE_20C459:        STA $0908,y               
CODE_20C45C:        CLC                       
CODE_20C45D:        ADC #$08                  
CODE_20C45F:        STA $0904,y               
CODE_20C462:        STA $090C,y               
CODE_20C465:        LDA $02                   
CODE_20C467:        ORA $A0,x                 
CODE_20C469:        ORA #$30                  
CODE_20C46B:        STA $0903,y               
CODE_20C46E:        STA $0907,y               
CODE_20C471:        STA $090B,y               
CODE_20C474:        STA $090F,y               
CODE_20C477:        LDA $00                   
CODE_20C479:        PHA                       
CODE_20C47A:        STA $0902,y               
CODE_20C47D:        INC A                     
CODE_20C47E:        STA $090A,y               
CODE_20C481:        LDA $01                   
CODE_20C483:        STA $0906,y               
CODE_20C486:        INC A                     
CODE_20C487:        STA $090E,y               
CODE_20C48A:        LDA $A0,x                 
CODE_20C48C:        BEQ CODE_20C4A0           
CODE_20C48E:        LDA $01                   
CODE_20C490:        STA $0902,y               
CODE_20C493:        INC A                     
CODE_20C494:        STA $090A,y               
CODE_20C497:        LDA $00                   
CODE_20C499:        STA $0906,y               
CODE_20C49C:        INC A                     
CODE_20C49D:        STA $090E,y               
CODE_20C4A0:        LDA $A0,x                 
CODE_20C4A2:        AND #$80                  
CODE_20C4A4:        BEQ CODE_20C4B8           
CODE_20C4A6:        LDA $01                   
CODE_20C4A8:        STA $090A,y               
CODE_20C4AB:        INC A                     
CODE_20C4AC:        STA $0902,y               
CODE_20C4AF:        LDA $00                   
CODE_20C4B1:        STA $090E,y               
CODE_20C4B4:        INC A                     
CODE_20C4B5:        STA $0906,y               
CODE_20C4B8:        PLA                       
CODE_20C4B9:        CMP $01                   
CODE_20C4BB:        BNE CODE_20C4D0           
CODE_20C4BD:        LDA $0903,y               
CODE_20C4C0:        AND #$BF                  
CODE_20C4C2:        STA $0903,y               
CODE_20C4C5:        STA $090B,y               
CODE_20C4C8:        ORA #$40                  
CODE_20C4CA:        STA $0907,y               
CODE_20C4CD:        STA $090F,y               
CODE_20C4D0:        STZ $D8                   
CODE_20C4D2:        STZ $D9                   
CODE_20C4D4:        LDA $45,x                 
CODE_20C4D6:        BEQ CODE_20C4DA           
CODE_20C4D8:        INC $D8                   
CODE_20C4DA:        LDA $55,x                 
CODE_20C4DC:        CLC                       
CODE_20C4DD:        ADC #$08                  
CODE_20C4DF:        LDA #$00                  
CODE_20C4E1:        ADC $45,x                 
CODE_20C4E3:        BEQ CODE_20C4E7           
CODE_20C4E5:        INC $D9                   
CODE_20C4E7:        TYA                       
CODE_20C4E8:        LSR A                     
CODE_20C4E9:        LSR A                     
CODE_20C4EA:        TAY                       
CODE_20C4EB:        LDA $D8                   
CODE_20C4ED:        AND #$01                  
CODE_20C4EF:        STA $0A60,y               
CODE_20C4F2:        STA $0A62,y               
CODE_20C4F5:        LDA $D9                   
CODE_20C4F7:        AND #$01                  
CODE_20C4F9:        STA $0A61,y               
CODE_20C4FC:        STA $0A63,y               
CODE_20C4FF:        RTS                       

CODE_20C500:        INX                       
CODE_20C501:        INX                       
CODE_20C502:        JSR CODE_20BCDF           
CODE_20C505:        DEX                       
CODE_20C506:        DEX                       
CODE_20C507:        RTS                       

CODE_20C508:        LDA $6D,x                 
CODE_20C50A:        BMI CODE_20C514           
CODE_20C50C:        CMP #$60                  
CODE_20C50E:        BMI CODE_20C514           
CODE_20C510:        LDA #$60                  
CODE_20C512:        STA $6D,x                 
CODE_20C514:        INX                       
CODE_20C515:        INX                       
CODE_20C516:        JSR CODE_20BD1A           
CODE_20C519:        DEX                       
CODE_20C51A:        DEX                       
CODE_20C51B:        RTS                       

DATA_20C51C:        db $00,$30,$60,$90

CODE_20C520:        JSL CODE_22E0A9
CODE_20C524:        LDX #$03
CODE_20C526:        LDA $A6,x
CODE_20C528:        BEQ CODE_20C536
CODE_20C52A:        CMP #$01
CODE_20C52C:        BNE CODE_20C533           
CODE_20C52E:        JSR CODE_20C53A           
CODE_20C531:        BRA CODE_20C536           

CODE_20C533:        JSR CODE_20C568           
CODE_20C536:        DEX                       
CODE_20C537:        BPL CODE_20C526           
CODE_20C539:        RTS                       

CODE_20C53A:        INC $A6,x                 
CODE_20C53C:        LDA #$FF                  
CODE_20C53E:        STA $45,x                 
CODE_20C540:        LDA #$F0                  
CODE_20C542:        STA $55,x                 
CODE_20C544:        LDA #$08                  
CODE_20C546:        CPX #$03                  
CODE_20C548:        BNE CODE_20C54C           
CODE_20C54A:        LDA #$12                  
CODE_20C54C:        STA $65,x                 
CODE_20C54E:        RTS                       

DATA_20C54F:        db $E0,$F0,$00

DATA_20C552:        db $20,$20,$90,$00

DATA_20C556:        db $44,$44,$44

DATA_20C559:        db $44,$44,$44

DATA_20C55C:        db $B0,$E4,$E8,$B0,$E4,$EE

DATA_20C562:        db $E0,$E2,$E6,$E0,$EA,$EC

CODE_20C568:        JSR CODE_20C500
CODE_20C56B:        JSR CODE_20C3CE
CODE_20C56E:        LDA $45,x
CODE_20C570:        BNE CODE_20C584                 
CODE_20C572:        LDA.l DATA_20C552,x
CODE_20C576:        BEQ CODE_20C584
CODE_20C578:        CMP $55,x                 
CODE_20C57A:        BCS CODE_20C584                   
CODE_20C57C:        INX                       
CODE_20C57D:        LDA $A6,x                 
CODE_20C57F:        BNE CODE_20C583           
CODE_20C581:        INC $A6,x                 
CODE_20C583:        DEX                       
CODE_20C584:        LDA $15                   
CODE_20C586:        LSR A                     
CODE_20C587:        LSR A                     
CODE_20C588:        CPX #$03                  
CODE_20C58A:        BEQ CODE_20C58D           
CODE_20C58C:        LSR A                     
CODE_20C58D:        AND #$01                  
CODE_20C58F:        BEQ CODE_20C593           
CODE_20C591:        LDA #$03                  
CODE_20C593:        STA $051F,x               
CODE_20C596:        STX $02                   
CODE_20C598:        LDA $55,x                 
CODE_20C59A:        STA $00                   
CODE_20C59C:        LDA $051F,x               
CODE_20C59F:        STA $01                   
CODE_20C5A1:        LDA.l DATA_20C51C,x             
CODE_20C5A5:        TAY                       
CODE_20C5A6:        LDX #$02                  
CODE_20C5A8:        LDA #$BA                  
CODE_20C5AA:        CLC                       
CODE_20C5AB:        ADC.l DATA_20C54F,x             
CODE_20C5AF:        STA $0901,y               
CODE_20C5B2:        STA $0905,y               
CODE_20C5B5:        CLC                       
CODE_20C5B6:        ADC #$08                  
CODE_20C5B8:        STA $0909,y               
CODE_20C5BB:        STA $090D,y               
CODE_20C5BE:        TXA                       
CODE_20C5BF:        PHA                       
CODE_20C5C0:        CLC                       
CODE_20C5C1:        ADC $01                   
CODE_20C5C3:        TAX                       
CODE_20C5C4:        LDA.l DATA_20C55C,x             
CODE_20C5C8:        STA $0902,y               
CODE_20C5CB:        INC A                     
CODE_20C5CC:        STA $090A,y               
CODE_20C5CF:        LDA.l DATA_20C562,x             
CODE_20C5D3:        STA $0906,y               
CODE_20C5D6:        INC A                     
CODE_20C5D7:        STA $090E,y               
CODE_20C5DA:        PHY                       
CODE_20C5DB:        LDX $02                   
CODE_20C5DD:        JSR CODE_20C4D0           
CODE_20C5E0:        PLY                       
CODE_20C5E1:        PLA                       
CODE_20C5E2:        TAX                       
CODE_20C5E3:        LDA.l DATA_20C556,x             
CODE_20C5E7:        ORA #$20                  
CODE_20C5E9:        STA $0903,y               
CODE_20C5EC:        STA $090B,y               
CODE_20C5EF:        LDA.l DATA_20C559,x             
CODE_20C5F3:        ORA #$20                  
CODE_20C5F5:        STA $0907,y               
CODE_20C5F8:        STA $090F,y               
CODE_20C5FB:        LDA $00                   
CODE_20C5FD:        STA $0900,y               
CODE_20C600:        STA $0908,y               
CODE_20C603:        CLC                       
CODE_20C604:        ADC #$08                  
CODE_20C606:        STA $0904,y               
CODE_20C609:        STA $090C,y               
CODE_20C60C:        TYA                       
CODE_20C60D:        CLC                       
CODE_20C60E:        ADC #$10                  
CODE_20C610:        TAY                       
CODE_20C611:        DEX                       
CODE_20C612:        BPL CODE_20C5A8           
CODE_20C614:        LDX $02                   
CODE_20C616:        RTS                       

CODE_20C617:        STZ $1EBF                 
CODE_20C61A:        STZ $4200                 
CODE_20C61D:        JSL CODE_008B63           
CODE_20C621:        REP #$20                  
CODE_20C623:        LDX #$80                  
CODE_20C625:        STX $2115                 
CODE_20C628:        LDA #$2000                
CODE_20C62B:        STA $2116                 
CODE_20C62E:        LDA #$1801                
CODE_20C631:        STA $4300                 
CODE_20C634:        LDA #$E000                
CODE_20C637:        STA $4302                 
CODE_20C63A:        LDX #$35                  
CODE_20C63C:        STX $4304                 
CODE_20C63F:        LDA #$2000                
CODE_20C642:        STA $4305                 
CODE_20C645:        LDX #$01                  
CODE_20C647:        STX $420B                 
CODE_20C64A:        LDA #$3400                
CODE_20C64D:        STA $2116                 
CODE_20C650:        LDA #$1801                
CODE_20C653:        STA $4300                 
CODE_20C656:        LDA #$9000                
CODE_20C659:        STA $4302                 
CODE_20C65C:        LDX #$32                  
CODE_20C65E:        STX $4304                 
CODE_20C661:        LDA #$1000                
CODE_20C664:        STA $4305                 
CODE_20C667:        LDX #$01                  
CODE_20C669:        STX $420B                 
CODE_20C66C:        REP #$10                  
CODE_20C66E:        PHB                       
CODE_20C66F:        LDX #$A120                
CODE_20C672:        LDY #$1320                
CODE_20C675:        LDA #$00DF                
CODE_20C678:        MVN $3C00                 
CODE_20C67B:        LDX #$A8C0                
CODE_20C67E:        LDY #$1320                
CODE_20C681:        LDA #$001F                
CODE_20C684:        MVN $3C00                 
CODE_20C687:        LDX #$8800                
CODE_20C68A:        LDY #$1400                
CODE_20C68D:        LDA #$009F                
CODE_20C690:        MVN $3C00                 
CODE_20C693:        LDX #$8BE0                
CODE_20C696:        LDY #$14A0                
CODE_20C699:        LDA #$001F                
CODE_20C69C:        MVN $3C00                 
CODE_20C69F:        PLB                       
CODE_20C6A0:        PHB                       
CODE_20C6A1:        LDX #$88A0                
CODE_20C6A4:        LDA $0726                 
CODE_20C6A7:        AND #$00FF                
CODE_20C6AA:        BEQ CODE_20C6AF           
CODE_20C6AC:        LDX #$88E0                
CODE_20C6AF:        LDY #$14E0                
CODE_20C6B2:        LDA #$001F                
CODE_20C6B5:        MVN $3C00                 
CODE_20C6B8:        PLB                       
CODE_20C6B9:        SEP #$30                  
CODE_20C6BB:        REP #$20                  
CODE_20C6BD:        LDX #$00                  
CODE_20C6BF:        LDA #$00FF                
CODE_20C6C2:        STA $7F9000,x             
CODE_20C6C6:        STA $7F9070,x             
CODE_20C6CA:        STA $7F90E0,x             
CODE_20C6CE:        STA $7F9150,x             
CODE_20C6D2:        STA $7F9200,x             
CODE_20C6D6:        STA $7F9270,x             
CODE_20C6DA:        STA $7F92E0,x             
CODE_20C6DE:        STA $7F9350,x             
CODE_20C6E2:        INX                       
CODE_20C6E3:        INX                       
CODE_20C6E4:        CPX #$70                  
CODE_20C6E6:        BNE CODE_20C6C2           
CODE_20C6E8:        LDA #$2641                
CODE_20C6EB:        STA $4370                 
CODE_20C6EE:        LDA #$F859                
CODE_20C6F1:        STA $4372                 
CODE_20C6F4:        LDX #$2A                  
CODE_20C6F6:        STX $4374                 
CODE_20C6F9:        LDX #$7F                  
CODE_20C6FB:        STX $4377                 
CODE_20C6FE:        LDA #$2841                
CODE_20C701:        STA $4360                 
CODE_20C704:        LDA #$F860                
CODE_20C707:        STA $4362                 
CODE_20C70A:        LDX #$2A                  
CODE_20C70C:        STX $4364                 
CODE_20C70F:        LDX #$7F                  
CODE_20C711:        STX $4367                 
CODE_20C714:        STZ $212A                 
CODE_20C717:        SEP #$20                  
CODE_20C719:        LDA #$25                  
CODE_20C71B:        STA $0205                 
CODE_20C71E:        LDA #$45                  
CODE_20C720:        STA $0206                 
CODE_20C723:        LDA #$85                  
CODE_20C725:        STA $0207                 
CODE_20C728:        LDA #$A0                  
CODE_20C72A:        STA $0202                 
CODE_20C72D:        LDA #$10                  
CODE_20C72F:        STA $0203                 
CODE_20C732:        LDA #$32                  
CODE_20C734:        STA $0204                 
CODE_20C737:        LDX #$01                  
CODE_20C739:        STX $1500                 
CODE_20C73C:        LDA #$FF                  
CODE_20C73E:        STA $00                   
CODE_20C740:        STZ $01                   
CODE_20C742:        JSR CODE_20FA0A           
CODE_20C745:        LDA #$80                  
CODE_20C747:        STA $0101                 
CODE_20C74A:        LDX #$F5                  
CODE_20C74C:        STZ $00,x                 
CODE_20C74E:        DEX                       
CODE_20C74F:        BNE CODE_20C74C           
CODE_20C751:        LDA #$EF                  
CODE_20C753:        STA $0216                 
CODE_20C756:        LDA #$B0                  
CODE_20C758:        STA $0218                 
CODE_20C75B:        JSR CODE_20B328           
CODE_20C75E:        LDA #$51                  
CODE_20C760:        ASL A                     
CODE_20C761:        TAX                       
CODE_20C762:        LDA.l PNTR_20D301,x             
CODE_20C766:        STA $36                   
CODE_20C768:        LDA.l PNTR_20D301+1,x             
CODE_20C76C:        STA $37                   
CODE_20C76E:        LDA #$20                  
CODE_20C770:        STA $38                   
CODE_20C772:        JSL CODE_29E8AB           
CODE_20C776:        LDA #$22                  
CODE_20C778:        STA $0350                 
CODE_20C77B:        JSL CODE_2A8DB6           
CODE_20C77F:        LDA #$20                  
CODE_20C781:        STA $0612                 
CODE_20C784:        JSL CODE_2AB48E           
CODE_20C788:        LDA #$C0                  
CODE_20C78A:        STA $0293                 
CODE_20C78D:        STZ $0249                 
CODE_20C790:        STZ $024A                 
CODE_20C793:        LDA #$01                  
CODE_20C795:        STA $020E                 
CODE_20C798:        LDA #$11                  
CODE_20C79A:        STA $020F                 
CODE_20C79D:        LDA #$00                  
CODE_20C79F:        STA $16                   
CODE_20C7A1:        STA $2100                 
CODE_20C7A4:        LDA #$09                  
CODE_20C7A6:        STA $020C                 
CODE_20C7A9:        STA $2105                 
CODE_20C7AC:        LDA #$03                  
CODE_20C7AE:        STA $021E                 
CODE_20C7B1:        LDA #$17                  
CODE_20C7B3:        STA $0208                 
CODE_20C7B6:        LDA #$80                  
CODE_20C7B8:        STA $4200                 
CODE_20C7BB:        JSR CODE_20A4B6           
CODE_20C7BE:        JSR CODE_20C7CA           
CODE_20C7C1:        LDA $A3                   
CODE_20C7C3:        CMP #$07                  
CODE_20C7C5:        BNE CODE_20C7BB           
CODE_20C7C7:        JMP CODE_20CB96           

CODE_20C7CA:        JSL CODE_22E0A9           
CODE_20C7CE:        LDA #$10                  
CODE_20C7D0:        STA $91                   
CODE_20C7D2:        LDA #$40                  
CODE_20C7D4:        STA $92                   
CODE_20C7D6:        LDX #$02                  
CODE_20C7D8:        LDA $A0,x                 
CODE_20C7DA:        BEQ CODE_20C7DE           
CODE_20C7DC:        DEC $A0,x                 
CODE_20C7DE:        DEX                       
CODE_20C7DF:        BPL CODE_20C7D8           
CODE_20C7E1:        JSR CODE_20C809           
CODE_20C7E4:        LDX #$00                  
CODE_20C7E6:        STX $9F                   
CODE_20C7E8:        JSR CODE_20BE8D           
CODE_20C7EB:        LDA $0726                 
CODE_20C7EE:        BEQ CODE_20C802           
CODE_20C7F0:        LDY #$24                  
CODE_20C7F2:        LDA $0803,y               
CODE_20C7F5:        ORA #$02                  
CODE_20C7F7:        STA $0803,y               
CODE_20C7FA:        DEY                       
CODE_20C7FB:        DEY                       
CODE_20C7FC:        DEY                       
CODE_20C7FD:        DEY                       
CODE_20C7FE:        CPY #$10                  
CODE_20C800:        BPL CODE_20C7F2           
CODE_20C802:        INX                       
CODE_20C803:        STX $9F                   
CODE_20C805:        JSR CODE_20BE99           
CODE_20C808:        RTS                       

CODE_20C809:        LDA $A3                   
CODE_20C80B:        JSL CODE_20FB1F           

PNTR_20C80F:          dw CODE_20C81F
               dw CODE_20C856
               dw CODE_20C863
               dw CODE_20C895
               dw CODE_20C8B5
               dw CODE_20C986
               dw CODE_20C9C6
               dw CODE_20C9CE    

CODE_20C81F:        LDA #$EC
CODE_20C821:        STA $53                
CODE_20C823:        LDA #$FF                  
CODE_20C825:        STA $43                   
CODE_20C827:        LDA #$C8                  
CODE_20C829:        STA $54                   
CODE_20C82B:        LDA #$A0                  
CODE_20C82D:        STA $5B                   
CODE_20C82F:        STA $5C                   
CODE_20C831:        LDA #$18                  
CODE_20C833:        STA $8D                   
CODE_20C835:        LDA #$19                  
CODE_20C837:        STA $8E                   
CODE_20C839:        LDA #$40                  
CODE_20C83B:        STA $85                   
CODE_20C83D:        STA $86                   
CODE_20C83F:        LDA #$01                  
CODE_20C841:        STA $8F                   
CODE_20C843:        LDA #$0F                  
CODE_20C845:        STA $A0                   
CODE_20C847:        INC $A3                   
CODE_20C849:        LDA #$00                  
CODE_20C84B:        STA $A6                   
CODE_20C84D:        LDA #$50                  
CODE_20C84F:        STA $A5                   
CODE_20C851:        LDA #$C7                  
CODE_20C853:        STA $A4                   
CODE_20C855:        RTS                       

CODE_20C856:        LDA $A0                   
CODE_20C858:        EOR #$0F                  
CODE_20C85A:        STA $16                   
CODE_20C85C:        CMP #$0F                  
CODE_20C85E:        BNE CODE_20C862           
CODE_20C860:        INC $A3                   
CODE_20C862:        RTS                       

CODE_20C863:        LDA $53                   
CODE_20C865:        CLC                       
CODE_20C866:        ADC #$01                  
CODE_20C868:        STA $53                   
CODE_20C86A:        LDA $43                   
CODE_20C86C:        ADC #$00                  
CODE_20C86E:        STA $43                   
CODE_20C870:        PHX                       
CODE_20C871:        LDA $15                   
CODE_20C873:        AND #$0C                  
CODE_20C875:        LSR A                     
CODE_20C876:        LSR A                     
CODE_20C877:        TAX                       
CODE_20C878:        LDA.l DATA_20BB25,x             
CODE_20C87C:        STA $8D                   
CODE_20C87E:        LDX #$00                  
CODE_20C880:        JSR CODE_20C027           
CODE_20C883:        PLX                       
CODE_20C884:        LDA $53                   
CODE_20C886:        CMP #$20                  
CODE_20C888:        BNE CODE_20C894           
CODE_20C88A:        LDA #$02                  
CODE_20C88C:        STA $8D                   
CODE_20C88E:        INC $A3                   
CODE_20C890:        LDA #$30                  
CODE_20C892:        STA $A0                   
CODE_20C894:        RTS                       

CODE_20C895:        LDA $A0                   
CODE_20C897:        CMP #$01                  
CODE_20C899:        BNE CODE_20C8A8           
CODE_20C89B:        LDA #$02                  
CODE_20C89D:        STA $8D                   
CODE_20C89F:        LDA #$80                  
CODE_20C8A1:        STA $A1                   
CODE_20C8A3:        LDA #$01                  
CODE_20C8A5:        STA $1202                 
CODE_20C8A8:        LDA $A1                   
CODE_20C8AA:        CMP #$01                  
CODE_20C8AC:        BNE CODE_20C8B4           
CODE_20C8AE:        LDA #$13                  
CODE_20C8B0:        STA $A0                   
CODE_20C8B2:        INC $A3                   
CODE_20C8B4:        RTS                       

CODE_20C8B5:        LDA $A0                   
CODE_20C8B7:        BEQ CODE_20C916           
CODE_20C8B9:        LDY #$30                  
CODE_20C8BB:        STY $A1                   
CODE_20C8BD:        AND #$FE                  
CODE_20C8BF:        TAX                       
CODE_20C8C0:        LDA #$2A                  
CODE_20C8C2:        STA $DA                   
CODE_20C8C4:        REP #$20                  
CODE_20C8C6:        LDA.l PNTR_20C972,x             
CODE_20C8CA:        BEQ CODE_20C914           
CODE_20C8CC:        STA $D8                   
CODE_20C8CE:        LDY #$00                  
CODE_20C8D0:        LDA [$D8],y               
CODE_20C8D2:        STA $1320,y               
CODE_20C8D5:        INY                       
CODE_20C8D6:        INY                       
CODE_20C8D7:        CPY #$20                  
CODE_20C8D9:        BNE CODE_20C8D0           
CODE_20C8DB:        LDY #$01                  
CODE_20C8DD:        STY $1500                 
CODE_20C8E0:        LDY $A0                   
CODE_20C8E2:        CPY #$09                  
CODE_20C8E4:        BPL CODE_20C914           
CODE_20C8E6:        PHB                       
CODE_20C8E7:        LDY #$7F                  
CODE_20C8E9:        PHY                       
CODE_20C8EA:        PLB                       
CODE_20C8EB:        REP #$10                  
CODE_20C8ED:        LDY #$0000                
CODE_20C8F0:        LDA $000249               
CODE_20C8F4:        TAX                       
CODE_20C8F5:        LDA $2AEEB1,x             
CODE_20C8F9:        STA $9000,x               
CODE_20C8FC:        LDA $2AF031,x             
CODE_20C900:        STA $9200,x               
CODE_20C903:        INX                       
CODE_20C904:        INX                       
CODE_20C905:        INY                       
CODE_20C906:        INY                       
CODE_20C907:        CPY #$0030                
CODE_20C90A:        BNE CODE_20C8F5           
CODE_20C90C:        TXA                       
CODE_20C90D:        STA $000249               
CODE_20C911:        SEP #$10                  
CODE_20C913:        PLB                       
CODE_20C914:        SEP #$20                  
CODE_20C916:        LDA $A1                   
CODE_20C918:        BNE CODE_20C971           
CODE_20C91A:        INC $A3                   
CODE_20C91C:        LDA #$80                  
CODE_20C91E:        STA $A0                   
CODE_20C920:        LDA #$1A                  
CODE_20C922:        STA $8E                   
CODE_20C924:        BRA CODE_20C971           

CODE_20C926:        PHX                       
CODE_20C927:        LDX #$00                  
CODE_20C929:        LDA $0726                 
CODE_20C92C:        BEQ CODE_20C930           
CODE_20C92E:        LDX #$23                  
CODE_20C930:        LDA $0715                 
CODE_20C933:        STA $1D9F,x               
CODE_20C936:        LDA $0716                 
CODE_20C939:        STA $1DA0,x               
CODE_20C93C:        LDA $0717                 
CODE_20C93F:        STA $1DA1,x               
CODE_20C942:        REP #$20                  
CODE_20C944:        LDX #$08                  
CODE_20C946:        LDA $E43C,x               
CODE_20C949:        STA $1EED,x               
CODE_20C94C:        LDA $E484,x               
CODE_20C94F:        STA $1F09,x               
CODE_20C952:        LDA $E4CC,x               
CODE_20C955:        STA $1EFB,x               
CODE_20C958:        LDA $E514,x               
CODE_20C95B:        STA $1F17,x               
CODE_20C95E:        DEX                       
CODE_20C95F:        DEX                       
CODE_20C960:        BPL CODE_20C946           
CODE_20C962:        SEP #$20                  
CODE_20C964:        LDX #$7F                  
CODE_20C966:        STZ $1D00,x               
CODE_20C969:        DEX                       
CODE_20C96A:        BPL CODE_20C966           
CODE_20C96C:        JSL CODE_00922D           
CODE_20C970:        PLX                       
CODE_20C971:        RTS                       

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

CODE_20C986:        LDA $A0                   
CODE_20C988:        BEQ CODE_20C993           
CODE_20C98A:        CMP #$60                  
CODE_20C98C:        BCS CODE_20C992                   
CODE_20C98E:        LDA #$00                  
CODE_20C990:        STA $86                   
CODE_20C992:        RTS                       

CODE_20C993:        LDA $53                   
CODE_20C995:        CMP #$68                  
CODE_20C997:        BCC CODE_20C9A8           
CODE_20C999:        LDA #$02                  
CODE_20C99B:        STA $8D                   
CODE_20C99D:        LDA #$1A                  
CODE_20C99F:        STA $8E                   
CODE_20C9A1:        INC $A3                   
CODE_20C9A3:        LDA #$B0                  
CODE_20C9A5:        STA $A0                   
CODE_20C9A7:        RTS                       

CODE_20C9A8:        LDA #$50                  
CODE_20C9AA:        STA $A1                   
CODE_20C9AC:        INC $53                   
CODE_20C9AE:        DEC $54                   
CODE_20C9B0:        PHX                       
CODE_20C9B1:        LDA $15                   
CODE_20C9B3:        AND #$0C                  
CODE_20C9B5:        LSR A                     
CODE_20C9B6:        LSR A                     
CODE_20C9B7:        TAX                       
CODE_20C9B8:        LDA.l DATA_20BB25,x             
CODE_20C9BC:        STA $8D                   
CODE_20C9BE:        LDA.l DATA_20BB2D,x             
CODE_20C9C2:        STA $8E                   
CODE_20C9C4:        PLX                       
CODE_20C9C5:        RTS                       

CODE_20C9C6:        LDA $A0                   
CODE_20C9C8:        BNE CODE_20C9CD           
CODE_20C9CA:        JMP CODE_20C9E3           

CODE_20C9CD:        RTS                       

CODE_20C9CE:        LDA $A0                   
CODE_20C9D0:        BNE CODE_20C9DB           
CODE_20C9D2:        STA $16                   
CODE_20C9D4:        LDA $A1                   
CODE_20C9D6:        BNE CODE_20C9DA           
CODE_20C9D8:        INC $A3                   
CODE_20C9DA:        RTS                       

CODE_20C9DB:        STA $16                   
CODE_20C9DD:        LDA #$10                  
CODE_20C9DF:        STA $00A1                 
CODE_20C9E2:        RTS                       

CODE_20C9E3:        LDA $A7                   
CODE_20C9E5:        JSL CODE_20FB1F           

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

CODE_20CA69:        PHB
CODE_20CA6A:        PHK         
CODE_20CA6B:        PLB                       
CODE_20CA6C:        LDX $1600                 
CODE_20CA6F:        LDA $A5                   
CODE_20CA71:        STA $1602,x               
CODE_20CA74:        LDA $A4                   
CODE_20CA76:        STA $1603,x               
CODE_20CA79:        CLC                       
CODE_20CA7A:        ADC #$20                  
CODE_20CA7C:        STA $A4                   
CODE_20CA7E:        BCC CODE_20CA82           
CODE_20CA80:        INC $A5                   
CODE_20CA82:        LDA #$00                  
CODE_20CA84:        STA $1604,x               
CODE_20CA87:        LDA #$25                  
CODE_20CA89:        STA $1605,x               
CODE_20CA8C:        STA $00                   
CODE_20CA8E:        LDY $A6                   
CODE_20CA90:        LDA DATA_20CA61,y               
CODE_20CA93:        TAY                       
CODE_20CA94:        LDA DATA_20C9EF,y               
CODE_20CA97:        STA $1606,x               
CODE_20CA9A:        INY                       
CODE_20CA9B:        INX                       
CODE_20CA9C:        DEC $00                   
CODE_20CA9E:        BPL CODE_20CA94           
CODE_20CAA0:        LDA #$FF                  
CODE_20CAA2:        STA $1606,x               
CODE_20CAA5:        INX                       
CODE_20CAA6:        INX                       
CODE_20CAA7:        INX                       
CODE_20CAA8:        INX                       
CODE_20CAA9:        STX $1600                 
CODE_20CAAC:        INC $A6                   
CODE_20CAAE:        LDA $A6                   
CODE_20CAB0:        CMP #$08                  
CODE_20CAB2:        BCC CODE_20CAC9           
CODE_20CAB4:        LDY #$00                  
CODE_20CAB6:        LDA DATA_20CB25,y               
CODE_20CAB9:        STA $A6                   
CODE_20CABB:        LDA #$50                  
CODE_20CABD:        STA $A5                   
CODE_20CABF:        LDA #$E9                  
CODE_20CAC1:        STA $A4                   
CODE_20CAC3:        LDA #$10                  
CODE_20CAC5:        STA $A2                   
CODE_20CAC7:        INC $A7                   
CODE_20CAC9:        PLB                       
CODE_20CACA:        RTS                       

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

CODE_20CB26:        PHB
CODE_20CB27:        PHK                       
CODE_20CB28:        PLB                       
CODE_20CB29:        LDA $A2                   
CODE_20CB2B:        BNE CODE_20CB89           
CODE_20CB2D:        LDX $1600                 
CODE_20CB30:        LDY $A6                   
CODE_20CB32:        LDA $A5                   
CODE_20CB34:        STA $1602,x               
CODE_20CB37:        LDA #$00                  
CODE_20CB39:        STA $1604,x               
CODE_20CB3C:        LDA #$01                  
CODE_20CB3E:        STA $1605,x               
CODE_20CB41:        LDA DATA_20CACB,y               
CODE_20CB44:        STA $1606,x               
CODE_20CB47:        LDA #$21                  
CODE_20CB49:        STA $1607,x               
CODE_20CB4C:        LDA #$FF                  
CODE_20CB4E:        STA $1608,x               
CODE_20CB51:        TXA                       
CODE_20CB52:        CLC                       
CODE_20CB53:        ADC #$06                  
CODE_20CB55:        STA $1600                 
CODE_20CB58:        LDA $A4                   
CODE_20CB5A:        STA $1603,x               
CODE_20CB5D:        INC $A6                   
CODE_20CB5F:        INC $A4                   
CODE_20CB61:        AND #$1F                  
CODE_20CB63:        CMP #$17                  
CODE_20CB65:        BNE CODE_20CB7C           
CODE_20CB67:        LDA $A4                   
CODE_20CB69:        CLC                       
CODE_20CB6A:        ADC #$11                  
CODE_20CB6C:        STA $A4                   
CODE_20CB6E:        BCC CODE_20CB72           
CODE_20CB70:        INC $A5                   
CODE_20CB72:        CMP #$A9                  
CODE_20CB74:        BNE CODE_20CB7C           
CODE_20CB76:        INC $A7                   
CODE_20CB78:        LDA #$4A                  
CODE_20CB7A:        STA $A1                   
CODE_20CB7C:        LDX #$10                  
CODE_20CB7E:        LDA DATA_20CACB,y               
CODE_20CB81:        CMP #$FE                  
CODE_20CB83:        BNE CODE_20CB87           
CODE_20CB85:        LDX #$01                  
CODE_20CB87:        STX $A0                   
CODE_20CB89:        PLB                       
CODE_20CB8A:        RTS                       

CODE_20CB8B:        LDA $A1                   
CODE_20CB8D:        BNE CODE_20CB95           
CODE_20CB8F:        LDA #$0F                  
CODE_20CB91:        STA $A0                   
CODE_20CB93:        INC $A3                   
CODE_20CB95:        RTS                       

CODE_20CB96:        LDA #$0F                  
CODE_20CB98:        STA $16                   
CODE_20CB9A:        JSR CODE_20A4B6           
CODE_20CB9D:        DEC $16                   
CODE_20CB9F:        BNE CODE_20CB9A           
CODE_20CBA1:        STZ $4200                 
CODE_20CBA4:        STZ $16                   
CODE_20CBA6:        STZ $0293                 
CODE_20CBA9:        STZ $420C                 
CODE_20CBAC:        LDA #$80                  
CODE_20CBAE:        STA $2100                 
CODE_20CBB1:        LDA #$02                  
CODE_20CBB3:        STA $2107                 
CODE_20CBB6:        LDA #$0A                  
CODE_20CBB8:        STA $2108                 
CODE_20CBBB:        LDA #$13                  
CODE_20CBBD:        STA $2109                 
CODE_20CBC0:        JSL CODE_22E0A9           
CODE_20CBC4:        LDA #$5C                  
CODE_20CBC6:        STA $00                   
CODE_20CBC8:        STZ $01                   
CODE_20CBCA:        JSR CODE_20FA0A           
CODE_20CBCD:        REP #$20                  
CODE_20CBCF:        LDX #$80                  
CODE_20CBD1:        STX $2115                 
CODE_20CBD4:        LDA #$2000                
CODE_20CBD7:        STA $2116                 
CODE_20CBDA:        LDA #$1801                
CODE_20CBDD:        STA $4300                 
CODE_20CBE0:        STA $4310                 
CODE_20CBE3:        STA $4320                 
CODE_20CBE6:        STA $4330                 
CODE_20CBE9:        LDA #$E000                
CODE_20CBEC:        STA $4302                 
CODE_20CBEF:        LDA #$B000                
CODE_20CBF2:        STA $4312                 
CODE_20CBF5:        LDA #$D000                
CODE_20CBF8:        STA $4322                 
CODE_20CBFB:        LDA #$B000                
CODE_20CBFE:        STA $4332                 
CODE_20CC01:        LDX #$37                  
CODE_20CC03:        STX $4304                 
CODE_20CC06:        STX $4314                 
CODE_20CC09:        LDX #$0C                  
CODE_20CC0B:        STX $4324                 
CODE_20CC0E:        LDX #$3A                  
CODE_20CC10:        STX $4334                 
CODE_20CC13:        LDA #$1000                
CODE_20CC16:        STA $4305                 
CODE_20CC19:        STA $4315                 
CODE_20CC1C:        STA $4335                 
CODE_20CC1F:        LDA #$2800                
CODE_20CC22:        STA $4325                 
CODE_20CC25:        LDX #$01                  
CODE_20CC27:        STX $420B                 
CODE_20CC2A:        INX                       
CODE_20CC2B:        STX $420B                 
CODE_20CC2E:        LDA #$6000                
CODE_20CC31:        STA $2116                 
CODE_20CC34:        LDX #$04                  
CODE_20CC36:        STX $420B                 
CODE_20CC39:        LDA #$3000                
CODE_20CC3C:        STA $2116                 
CODE_20CC3F:        LDX #$08                  
CODE_20CC41:        STX $420B                 
CODE_20CC44:        LDX $0726                 
CODE_20CC47:        BEQ CODE_20CC7F           
CODE_20CC49:        LDA #$E000                
CODE_20CC4C:        STA $4302                 
CODE_20CC4F:        LDA #$F000                
CODE_20CC52:        STA $4312                 
CODE_20CC55:        LDX #$3D                  
CODE_20CC57:        STX $4304                 
CODE_20CC5A:        STX $4314                 
CODE_20CC5D:        LDA #$1000                
CODE_20CC60:        STA $4305                 
CODE_20CC63:        LDA #$0800                
CODE_20CC66:        STA $4315                 
CODE_20CC69:        LDA #$6000                
CODE_20CC6C:        STA $2116                 
CODE_20CC6F:        LDX #$01                  
CODE_20CC71:        STX $420B                 
CODE_20CC74:        LDA #$6C00                
CODE_20CC77:        STA $2116                 
CODE_20CC7A:        LDX #$02                  
CODE_20CC7C:        STX $420B                 
CODE_20CC7F:        SEP #$20                  
CODE_20CC81:        LDA #$05                  
CODE_20CC83:        STA $0350                 
CODE_20CC86:        JSL CODE_2A8DB6           
CODE_20CC8A:        JSL CODE_2A84B0           
CODE_20CC8E:        REP #$20                  
CODE_20CC90:        LDA #$00FF                
CODE_20CC93:        STA $00                   
CODE_20CC95:        STZ $2115                 
CODE_20CC98:        LDA #$0400                
CODE_20CC9B:        STA $2116                 
CODE_20CC9E:        LDA #$1808                
CODE_20CCA1:        STA $4300                 
CODE_20CCA4:        STZ $4302                 
CODE_20CCA7:        STZ $4304                 
CODE_20CCAA:        LDA #$0800                
CODE_20CCAD:        STA $4305                 
CODE_20CCB0:        LDY #$01                  
CODE_20CCB2:        STY $420B                 
CODE_20CCB5:        STZ $2115                 
CODE_20CCB8:        LDA #$0800                
CODE_20CCBB:        STA $2116                 
CODE_20CCBE:        LDA #$1808                
CODE_20CCC1:        STA $4300                 
CODE_20CCC4:        STZ $4302                 
CODE_20CCC7:        STZ $4304                 
CODE_20CCCA:        LDA #$0800                
CODE_20CCCD:        STA $4305                 
CODE_20CCD0:        STY $420B                 
CODE_20CCD3:        SEP #$20                  
CODE_20CCD5:        LDA #$01                  
CODE_20CCD7:        STA $7E3955               
CODE_20CCDB:        LDA #$20                  
CODE_20CCDD:        STA $0101                 
CODE_20CCE0:        STZ $0238                 
CODE_20CCE3:        STZ $0239                 
CODE_20CCE6:        LDX #$F4                  
CODE_20CCE8:        LDA #$00                  
CODE_20CCEA:        STA $00,x                 
CODE_20CCEC:        DEX                       
CODE_20CCED:        CPX #$6B                  
CODE_20CCEF:        BCC CODE_20CCF5           
CODE_20CCF1:        CPX #$75                  
CODE_20CCF3:        BCC CODE_20CCEC           
CODE_20CCF5:        CPX #$FF                  
CODE_20CCF7:        BNE CODE_20CCE8           
CODE_20CCF9:        LDX #$15                  
CODE_20CCFB:        LDA #$00                  
CODE_20CCFD:        STA $0510,x               
CODE_20CD00:        DEX                       
CODE_20CD01:        BPL CODE_20CCFB           
CODE_20CD03:        JSR CODE_20B328           
CODE_20CD06:        JSR CODE_20B09A           
CODE_20CD09:        JSL CODE_29CE10           
CODE_20CD0D:        REP #$20                  
CODE_20CD0F:        LDX #$1E                  
CODE_20CD11:        LDA #$0000                
CODE_20CD14:        STA $1340,x               
CODE_20CD17:        DEX                       
CODE_20CD18:        DEX                       
CODE_20CD19:        BPL CODE_20CD14           
CODE_20CD1B:        SEP #$20                  
CODE_20CD1D:        LDA #$20                  
CODE_20CD1F:        ASL A                     
CODE_20CD20:        TAX                       
CODE_20CD21:        LDA.l PNTR_20D301,x             
CODE_20CD25:        STA $36                   
CODE_20CD27:        LDA.l PNTR_20D301+1,x             
CODE_20CD2B:        STA $37                   
CODE_20CD2D:        LDA #$20                  
CODE_20CD2F:        STA $38                   
CODE_20CD31:        JSL CODE_29E8AB           
CODE_20CD35:        LDA #$B0                  
CODE_20CD37:        STA $0216                 
CODE_20CD3A:        STZ $0218                 
CODE_20CD3D:        STZ $0219                 
CODE_20CD40:        STZ $021A                 
CODE_20CD43:        STZ $021B                 
CODE_20CD46:        LDA #$00                  
CODE_20CD48:        STA $7E3955               
CODE_20CD4C:        LDA #$1F                  
CODE_20CD4E:        ASL A                     
CODE_20CD4F:        TAX                       
CODE_20CD50:        LDA.l PNTR_20D301,x             
CODE_20CD54:        STA $36                   
CODE_20CD56:        LDA.l PNTR_20D301+1,x             
CODE_20CD5A:        STA $37                   
CODE_20CD5C:        LDA #$20                  
CODE_20CD5E:        STA $38                   
CODE_20CD60:        JSL CODE_29E8AB           
CODE_20CD64:        LDA #$13                  
CODE_20CD66:        STA $0208                 
CODE_20CD69:        LDA #$04                  
CODE_20CD6B:        STA $0209                 
CODE_20CD6E:        LDA #$02                  
CODE_20CD70:        STA $0203                 
CODE_20CD73:        LDA #$20                  
CODE_20CD75:        STA $0204                 
CODE_20CD78:        LDA #$00                  
CODE_20CD7A:        LDX #$C6                  
CODE_20CD7C:        LDY #$3C                  
CODE_20CD7E:        JSL CODE_20A1D2           
CODE_20CD82:        LDA #$00                  
CODE_20CD84:        LDX #$D0                  
CODE_20CD86:        LDY #$3C                  
CODE_20CD88:        JSL CODE_20A1E6           
CODE_20CD8C:        LDA #$01                  
CODE_20CD8E:        STA $02BF                 
CODE_20CD91:        LDA #$1E                  
CODE_20CD93:        STA $02C1                 
CODE_20CD96:        REP #$20                  
CODE_20CD98:        JSL CODE_22E1C5           
CODE_20CD9C:        REP #$20                  
CODE_20CD9E:        LDA #$B800                
CODE_20CDA1:        STA $0D                   
CODE_20CDA3:        LDX #$32                  
CODE_20CDA5:        STX $0F                   
CODE_20CDA7:        LDA #$0800                
CODE_20CDAA:        STA $0B                   
CODE_20CDAC:        LDA #$4400                
CODE_20CDAF:        JSR CODE_20AFF0           
CODE_20CDB2:        LDA #$E000                
CODE_20CDB5:        STA $0D                   
CODE_20CDB7:        LDX #$37                  
CODE_20CDB9:        STX $0F                   
CODE_20CDBB:        LDA #$1000                
CODE_20CDBE:        STA $0B                   
CODE_20CDC0:        LDA #$4800                
CODE_20CDC3:        JSR CODE_20AFF0           
CODE_20CDC6:        LDA #$B000                
CODE_20CDC9:        STA $0D                   
CODE_20CDCB:        LDX #$3A                  
CODE_20CDCD:        STX $0F                   
CODE_20CDCF:        LDA #$0800                
CODE_20CDD2:        STA $0B                   
CODE_20CDD4:        LDA #$3C00                
CODE_20CDD7:        JSR CODE_20AFF0           
CODE_20CDDA:        SEP #$20                  
CODE_20CDDC:        LDA #$07                  
CODE_20CDDE:        STA $0243                 
CODE_20CDE1:        LDA #$01                  
CODE_20CDE3:        STA $0245                 
CODE_20CDE6:        JSR CODE_20A07B           
CODE_20CDE9:        LDA #$81                  
CODE_20CDEB:        STA $4200                 
CODE_20CDEE:        STA $02D9                 
CODE_20CDF1:        LDA #$0F                  
CODE_20CDF3:        STA $16                   
CODE_20CDF5:        LDA #$58                  
CODE_20CDF7:        STA $BD                   
CODE_20CDF9:        LDA #$05                  
CODE_20CDFB:        STA $B1                   
CODE_20CDFD:        JSR CODE_20A4B6           
CODE_20CE00:        DEC $B1                   
CODE_20CE02:        BPL CODE_20CDFD           
CODE_20CE04:        LDA #$03                  
CODE_20CE06:        STA $B1                   
CODE_20CE08:        LDA $BD                   
CODE_20CE0A:        STA $0028                 
CODE_20CE0D:        INC $BD                   
CODE_20CE0F:        LDA $BD                   
CODE_20CE11:        CMP #$5B                  
CODE_20CE13:        BNE CODE_20CDFD           
CODE_20CE15:        LDA #$14                  
CODE_20CE17:        STA $4B                   
CODE_20CE19:        LDA #$20                  
CODE_20CE1B:        STA $4C                   
CODE_20CE1D:        LDA #$00                  
CODE_20CE1F:        STA $BD                   
CODE_20CE21:        JSR CODE_20A4B6           
CODE_20CE24:        LDA $BD                   
CODE_20CE26:        BNE CODE_20CE35           
CODE_20CE28:        LDA $0216                 
CODE_20CE2B:        SEC                       
CODE_20CE2C:        SBC #$01                  
CODE_20CE2E:        STA $0216                 
CODE_20CE31:        BNE CODE_20CE35           
CODE_20CE33:        INC $BD                   
CODE_20CE35:        LDA $4C                   
CODE_20CE37:        SEC                       
CODE_20CE38:        SBC #$01                  
CODE_20CE3A:        STA $4C                   
CODE_20CE3C:        BCS CODE_20CE21                   
CODE_20CE3E:        LDA #$16                  
CODE_20CE40:        STA $4C                   
CODE_20CE42:        DEC $4B                   
CODE_20CE44:        BPL CODE_20CE21           
CODE_20CE46:        JSR CODE_20A4B6           
CODE_20CE49:        JSR CODE_20D0BA           
CODE_20CE4C:        LDA $4D                   
CODE_20CE4E:        CMP #$08                  
CODE_20CE50:        BNE CODE_20CE46           
CODE_20CE52:        LDA #$00                  
CODE_20CE54:        STA $4D                   
CODE_20CE56:        STZ $02D3                 
CODE_20CE59:        LDA #$B0                  
CODE_20CE5B:        STA $0216                 
CODE_20CE5E:        STZ $0217                 
CODE_20CE61:        REP #$30                  
CODE_20CE63:        LDA #$0000                
CODE_20CE66:        LDX #$001E                
CODE_20CE69:        STA $7F94E0,x             
CODE_20CE6D:        DEX                       
CODE_20CE6E:        DEX                       
CODE_20CE6F:        BPL CODE_20CE69           
CODE_20CE71:        PHB                       
CODE_20CE72:        LDX #$A4C0                
CODE_20CE75:        LDY #$13E0                
CODE_20CE78:        LDA #$001F                
CODE_20CE7B:        MVN $3C00                 
CODE_20CE7E:        PLB                       
CODE_20CE7F:        SEP #$30                  
CODE_20CE81:        INC $1500                 
CODE_20CE84:        JSL CODE_22E0A9           
CODE_20CE88:        JSR CODE_20A4B6           
CODE_20CE8B:        DEC $0216                 
CODE_20CE8E:        LDA $0216                 
CODE_20CE91:        BNE CODE_20CE88           
CODE_20CE93:        LDA #$55                  
CODE_20CE95:        STA $B1                   
CODE_20CE97:        JSR CODE_20A4B6           
CODE_20CE9A:        DEC $B1                   
CODE_20CE9C:        BPL CODE_20CE97           
CODE_20CE9E:        LDA #$1B                  
CODE_20CEA0:        STA $071E                 
CODE_20CEA3:        LDA #$00                  
CODE_20CEA5:        STA $7FC587               
CODE_20CEA9:        JSR CODE_20CEAE           
CODE_20CEAC:        BRA CODE_20CEE5           

CODE_20CEAE:        LDX #$00                  
CODE_20CEB0:        TXY                       
CODE_20CEB1:        TXA                       
CODE_20CEB2:        AND #$03                  
CODE_20CEB4:        ASL A                     
CODE_20CEB5:        ASL A                     
CODE_20CEB6:        ASL A                     
CODE_20CEB7:        ASL A                     
CODE_20CEB8:        CLC                       
CODE_20CEB9:        ADC #$60                  
CODE_20CEBB:        STA $0800,y               
CODE_20CEBE:        LDA #$60                  
CODE_20CEC0:        STA $0801,y               
CODE_20CEC3:        TXA                       
CODE_20CEC4:        AND #$03                  
CODE_20CEC6:        ASL A                     
CODE_20CEC7:        CLC                       
CODE_20CEC8:        ADC #$C0                  
CODE_20CECA:        STA $0802,y               
CODE_20CECD:        LDA #$04                  
CODE_20CECF:        ORA $7FC587               
CODE_20CED3:        STA $0803,y               
CODE_20CED6:        LDA #$02                  
CODE_20CED8:        STA $0A20,x               
CODE_20CEDB:        INY                       
CODE_20CEDC:        INY                       
CODE_20CEDD:        INY                       
CODE_20CEDE:        INY                       
CODE_20CEDF:        INX                       
CODE_20CEE0:        CPX #$04                  
CODE_20CEE2:        BNE CODE_20CEB1           
CODE_20CEE4:        RTS                       

CODE_20CEE5:        JSL CODE_29CFB6           
CODE_20CEE9:        LDA #$03                  
CODE_20CEEB:        STA $B1                   
CODE_20CEED:        LDA #$03                  
CODE_20CEEF:        STA $BD                   
CODE_20CEF1:        JSR CODE_20A4B6           
CODE_20CEF4:        JSL CODE_29D09A           
CODE_20CEF8:        LDA $7FC587               
CODE_20CEFC:        CLC                       
CODE_20CEFD:        ADC #$03                  
CODE_20CEFF:        CMP #$30                  
CODE_20CF01:        BCC CODE_20CF05           
CODE_20CF03:        LDA #$30                  
CODE_20CF05:        STA $7FC587               
CODE_20CF09:        PHA                       
CODE_20CF0A:        AND #$30                  
CODE_20CF0C:        STA $7FC587               
CODE_20CF10:        JSR CODE_20CEAE           
CODE_20CF13:        PLA                       
CODE_20CF14:        STA $7FC587               
CODE_20CF18:        LDA $02B3                 
CODE_20CF1B:        CMP #$02                  
CODE_20CF1D:        BNE CODE_20CEF1           
CODE_20CF1F:        LDA #$C0                  
CODE_20CF21:        STA $1CFC                 
CODE_20CF24:        JSR CODE_20A4B6           
CODE_20CF27:        DEC $1CFC                 
CODE_20CF2A:        BNE CODE_20CF24           
CODE_20CF2C:        LDA #$15                  
CODE_20CF2E:        STA $1203                 
CODE_20CF31:        JSR CODE_20A4B6           
CODE_20CF34:        LDA $02E5                 
CODE_20CF37:        BNE CODE_20CF62           
CODE_20CF39:        JSL CODE_2AFE63           
CODE_20CF3D:        LDX $0726                 
CODE_20CF40:        LDA $F6,x                 
CODE_20CF42:        AND #$10                  
CODE_20CF44:        BEQ CODE_20CF31           
CODE_20CF46:        REP #$10                  
CODE_20CF48:        LDX #$0000                
CODE_20CF4B:        LDA #$F0                  
CODE_20CF4D:        STA $0801,x               
CODE_20CF50:        INX                       
CODE_20CF51:        INX                       
CODE_20CF52:        INX                       
CODE_20CF53:        INX                       
CODE_20CF54:        CPX #$0200                
CODE_20CF57:        BCC CODE_20CF4D           
CODE_20CF59:        SEP #$10                  
CODE_20CF5B:        JSL CODE_29EBB7           
CODE_20CF5F:        INC $02E5                 
CODE_20CF62:        JSL CODE_29EBF7           
CODE_20CF66:        JMP CODE_20CF31           

CODE_20CF69:        DEC $C2                   
CODE_20CF6B:        LDA $C2                   
CODE_20CF6D:        JSL CODE_20FB1F           

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

CODE_20CFDC:        LDA $02D3                 
CODE_20CFDF:        CMP #$FF                  
CODE_20CFE1:        BEQ CODE_20D026           
CODE_20CFE3:        BPL CODE_20D026           
CODE_20CFE5:        AND #$7F                  
CODE_20CFE7:        CMP #$05                  
CODE_20CFE9:        BEQ CODE_20D027           
CODE_20CFEB:        CMP #$06                  
CODE_20CFED:        BNE CODE_20CFF2           
CODE_20CFEF:        JMP CODE_20D06F           

CODE_20CFF2:        TAX                       
CODE_20CFF3:        ASL A                     
CODE_20CFF4:        STA $00                   
CODE_20CFF6:        LDA.l DATA_20CFC5,x             
CODE_20CFFA:        CLC                       
CODE_20CFFB:        ADC $004D                 
CODE_20CFFE:        TAX                       
CODE_20CFFF:        LDA.l DATA_20CF75,x             
CODE_20D003:        STA $0F                   
CODE_20D005:        LDA.l DATA_20CF9D,x             
CODE_20D009:        STA $0E                   
CODE_20D00B:        STZ $0D                   
CODE_20D00D:        REP #$20                  
CODE_20D00F:        LDA #$0800                
CODE_20D012:        STA $0B                   
CODE_20D014:        LDX $00                   
CODE_20D016:        LDA #$2000                
CODE_20D019:        CLC                       
CODE_20D01A:        ADC.l DATA_20CFCA,x             
CODE_20D01E:        JSR CODE_20AFF0           
CODE_20D021:        SEP #$20                  
CODE_20D023:        INC $02D3                 
CODE_20D026:        RTS                       

CODE_20D027:        INC $02D3                 
CODE_20D02A:        REP #$20                  
CODE_20D02C:        LDX #$80                  
CODE_20D02E:        STX $2115                 
CODE_20D031:        LDA #$1801                
CODE_20D034:        STA $4300                 
CODE_20D037:        LDA #$0800                
CODE_20D03A:        STA $4305                 
CODE_20D03D:        LDA #$6000                
CODE_20D040:        LDY $004D                 
CODE_20D043:        CPY #$04                  
CODE_20D045:        BCC CODE_20D04A           
CODE_20D047:        LDA #$8000                
CODE_20D04A:        STA $00                   
CODE_20D04C:        TYA                       
CODE_20D04D:        AND #$0003                
CODE_20D050:        ASL A                     
CODE_20D051:        TAX                       
CODE_20D052:        LDA.l DATA_20CFD4,x             
CODE_20D056:        CLC                       
CODE_20D057:        ADC $00                   
CODE_20D059:        STA $4302                 
CODE_20D05C:        LDX #$7E                  
CODE_20D05E:        STX $4304                 
CODE_20D061:        LDA #$0400                
CODE_20D064:        STA $2116                 
CODE_20D067:        LDX #$01                  
CODE_20D069:        STX $420B                 
CODE_20D06C:        SEP #$20                  
CODE_20D06E:        RTS                       

CODE_20D06F:        LDA #$FF                  
CODE_20D071:        STA $02D3                 
CODE_20D074:        REP #$20                  
CODE_20D076:        LDA #$0800                
CODE_20D079:        STA $2116                 
CODE_20D07C:        LDX #$80                  
CODE_20D07E:        STX $2115                 
CODE_20D081:        LDA #$1801                
CODE_20D084:        STA $4300                 
CODE_20D087:        LDA #$2000                
CODE_20D08A:        STA $4302                 
CODE_20D08D:        LDX #$7F                  
CODE_20D08F:        STX $4304                 
CODE_20D092:        LDA #$0600                
CODE_20D095:        STA $4305                 
CODE_20D098:        LDX #$01                  
CODE_20D09A:        STX $420B                 
CODE_20D09D:        SEP #$20                  
CODE_20D09F:        RTS                       

CODE_20D0A0:        LDA $15                   
CODE_20D0A2:        AND #$18                  
CODE_20D0A4:        LSR A                     
CODE_20D0A5:        LSR A                     
CODE_20D0A6:        LSR A                     
CODE_20D0A7:        TAX                       
CODE_20D0A8:        LDA $C9DF,x               
CODE_20D0AB:        CMP $0245                 
CODE_20D0AE:        BEQ CODE_20D0B3           
CODE_20D0B0:        STZ $0243                 
CODE_20D0B3:        STA $0245                 
CODE_20D0B6:        JSR CODE_20A07B           
CODE_20D0B9:        RTS                       

CODE_20D0BA:        LDA #$00                  
CODE_20D0BC:        STA $C2                   
CODE_20D0BE:        LDA $43                   
CODE_20D0C0:        JSL CODE_20FB1F           

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

CODE_20D0DA:        INC $43
CODE_20D0DC:        NOP
CODE_20D0DD:        NOP                       
CODE_20D0DE:        RTS                       

CODE_20D0DF:        LDY #$01                  
CODE_20D0E1:        INC $0216                 
CODE_20D0E4:        LDA $0216                 
CODE_20D0E7:        CMP #$D0                  
CODE_20D0E9:        BEQ CODE_20D0EF           
CODE_20D0EB:        DEY                       
CODE_20D0EC:        BPL CODE_20D0E1           
CODE_20D0EE:        RTS                       

CODE_20D0EF:        INC $43                   
CODE_20D0F1:        LDA #$10                  
CODE_20D0F3:        STA $0216                 
CODE_20D0F6:        LDA #$01                  
CODE_20D0F8:        STA $0217                 
CODE_20D0FB:        STZ $0218                 
CODE_20D0FE:        STZ $0219                 
CODE_20D101:        RTS                       

CODE_20D102:        LDA #$03                  
CODE_20D104:        STA $46                   
CODE_20D106:        LDA #$20                  
CODE_20D108:        STA $47                   
CODE_20D10A:        LDA #$06                  
CODE_20D10C:        STA $44                   
CODE_20D10E:        LDA #$5C                  
CODE_20D110:        STA $45                   
CODE_20D112:        INC $43                   
CODE_20D114:        RTS                       

CODE_20D115:        LDA #$01                  
CODE_20D117:        STA $C2                   
CODE_20D119:        RTS                       

CODE_20D11A:        REP #$20                  
CODE_20D11C:        LDX #$80                  
CODE_20D11E:        STX $2115                 
CODE_20D121:        LDA $46                   
CODE_20D123:        XBA                       
CODE_20D124:        STA $2116                 
CODE_20D127:        LDY #$1F                  
CODE_20D129:        LDA #$085C                
CODE_20D12C:        STA $2118                 
CODE_20D12F:        DEY                       
CODE_20D130:        BPL CODE_20D12C           
CODE_20D132:        SEP #$20                  
CODE_20D134:        DEC $44                   
CODE_20D136:        BPL CODE_20D13B           
CODE_20D138:        INC $43                   
CODE_20D13A:        RTS                       

CODE_20D13B:        JSR CODE_20D2C1           
CODE_20D13E:        RTS                       

CODE_20D13F:        INC $43                   
CODE_20D141:        LDA $47                   
CODE_20D143:        CLC                       
CODE_20D144:        ADC #$08                  
CODE_20D146:        STA $47                   
CODE_20D148:        RTS                       

CODE_20D149:        INC $43                   
CODE_20D14B:        LDA #$0C                  
CODE_20D14D:        STA $44                   
CODE_20D14F:        STZ $48                   
CODE_20D151:        RTS                       

CODE_20D152:        LDA #$02                  
CODE_20D154:        STA $C2                   
CODE_20D156:        RTS                       

CODE_20D157:        INC $43                   
CODE_20D159:        LDA #$80                  
CODE_20D15B:        STA $02D3                 
CODE_20D15E:        RTS                       

CODE_20D15F:        INC $43                   
CODE_20D161:        RTS                       

CODE_20D162:        JSL CODE_22E0A9           
CODE_20D166:        PHB                       
CODE_20D167:        LDA #$22                  
CODE_20D169:        PHA                       
CODE_20D16A:        PLB                       
CODE_20D16B:        LDX $4D                   
CODE_20D16D:        LDA $923E,x               
CODE_20D170:        XBA                       
CODE_20D171:        LDA $9246,x               
CODE_20D174:        REP #$10                  
CODE_20D176:        TAX                       
CODE_20D177:        LDY #$0000                
CODE_20D17A:        LDA $9256,x               
CODE_20D17D:        CMP #$FF                  
CODE_20D17F:        BEQ CODE_20D1C5           
CODE_20D181:        STA $0800,y               
CODE_20D184:        STA $0804,y               
CODE_20D187:        INX                       
CODE_20D188:        LDA $9256,x               
CODE_20D18B:        SEC                       
CODE_20D18C:        SBC #$10                  
CODE_20D18E:        STA $0801,y               
CODE_20D191:        CLC                       
CODE_20D192:        ADC #$08                  
CODE_20D194:        STA $0805,y               
CODE_20D197:        INX                       
CODE_20D198:        LDA $9256,x               
CODE_20D19B:        STA $0802,y               
CODE_20D19E:        INC A                     
CODE_20D19F:        STA $0806,y               
CODE_20D1A2:        INX                       
CODE_20D1A3:        LDA $9256,x               
CODE_20D1A6:        STA $0803,y               
CODE_20D1A9:        STA $0807,y               
CODE_20D1AC:        INX                       
CODE_20D1AD:        PHY                       
CODE_20D1AE:        REP #$20                  
CODE_20D1B0:        TYA                       
CODE_20D1B1:        LSR A                     
CODE_20D1B2:        LSR A                     
CODE_20D1B3:        TAY                       
CODE_20D1B4:        LDA #$0000                
CODE_20D1B7:        STA $0A20,y               
CODE_20D1BA:        PLY                       
CODE_20D1BB:        TYA                       
CODE_20D1BC:        CLC                       
CODE_20D1BD:        ADC #$0008                
CODE_20D1C0:        TAY                       
CODE_20D1C1:        SEP #$20                  
CODE_20D1C3:        BRA CODE_20D17A           
CODE_20D1C5:        SEP #$10                  
CODE_20D1C7:        LDA $4D                   
CODE_20D1C9:        CMP #$03                  
CODE_20D1CB:        BNE CODE_20D1DA           
CODE_20D1CD:        LDA #$34                  
CODE_20D1CF:        STA $0897                 
CODE_20D1D2:        STA $089F                 
CODE_20D1D5:        LDA #$74                  
CODE_20D1D7:        STA $08A7                 
CODE_20D1DA:        INC $43                   
CODE_20D1DC:        LDA #$03                  
CODE_20D1DE:        STA $49                   
CODE_20D1E0:        PLB                       
CODE_20D1E1:        JSL CODE_29CE95           
CODE_20D1E5:        STZ $02B3                 
CODE_20D1E8:        RTS                       

CODE_20D1E9:        JSR CODE_20D0A0           
CODE_20D1EC:        JSL CODE_29D09A           
CODE_20D1F0:        JSL CODE_29D232           
CODE_20D1F4:        LDA $02B3                 
CODE_20D1F7:        CMP #$02                  
CODE_20D1F9:        BNE CODE_20D205           
CODE_20D1FB:        INC $43                   
CODE_20D1FD:        LDA #$0F                  
CODE_20D1FF:        STA $4B                   
CODE_20D201:        LDA #$16                  
CODE_20D203:        STA $4C                   
CODE_20D205:        RTS                       

CODE_20D206:        JSR CODE_20D0A0           
CODE_20D209:        LDA $4C                   
CODE_20D20B:        SEC                       
CODE_20D20C:        SBC #$01                  
CODE_20D20E:        STA $4C                   
CODE_20D210:        BCS CODE_20D25F                   
CODE_20D212:        LDA $4B                   
CODE_20D214:        BEQ CODE_20D24D           
CODE_20D216:        DEC A                     
CODE_20D217:        BEQ CODE_20D22E           
CODE_20D219:        DEC A                     
CODE_20D21A:        BNE CODE_20D251           
CODE_20D21C:        LDX $004D                 
CODE_20D21F:        LDA.l DATA_20D260,x             
CODE_20D223:        STA $0350                 
CODE_20D226:        BEQ CODE_20D251           
CODE_20D228:        JSL CODE_2A8DB6           
CODE_20D22C:        BRA CODE_20D251           

CODE_20D22E:        LDA $004D                 
CODE_20D231:        CMP #$06                  
CODE_20D233:        BNE CODE_20D251           
CODE_20D235:        PHB                       
CODE_20D236:        PHK                       
CODE_20D237:        PLB                       
CODE_20D238:        LDA #$00                  
CODE_20D23A:        XBA                       
CODE_20D23B:        REP #$10                  
CODE_20D23D:        LDY #$00B0                
CODE_20D240:        LDX #$00F0                
CODE_20D243:        LDA #$BF                  
CODE_20D245:        MVN $7F7F                 
CODE_20D248:        SEP #$10                  
CODE_20D24A:        PLB                       
CODE_20D24B:        BRA CODE_20D251           
CODE_20D24D:        JSL CODE_2A84B0           
CODE_20D251:        LDA #$16                  
CODE_20D253:        STA $4C                   
CODE_20D255:        DEC $4B                   
CODE_20D257:        BPL CODE_20D25F           
CODE_20D259:        INC $43                   
CODE_20D25B:        LDA #$03                  
CODE_20D25D:        STA $49                   
CODE_20D25F:        RTS                       

DATA_20D260:        db $0E,$01,$0C,$00,$18,$0A,$1B,$00

CODE_20D268:        JSR CODE_20D0A0         
CODE_20D26B:        JSL CODE_29D09A           
CODE_20D26F:        JSL CODE_29D232           
CODE_20D273:        LDA $02B3                 
CODE_20D276:        BNE CODE_20D2C0           
CODE_20D278:        LDA #$01                  
CODE_20D27A:        STA $43                   
CODE_20D27C:        INC $4D                   
CODE_20D27E:        LDA $4D                   
CODE_20D280:        CMP #$02                  
CODE_20D282:        BNE CODE_20D29E           
CODE_20D284:        LDA #$EF                  
CODE_20D286:        STA $021A                 
CODE_20D289:        LDA #$00                  
CODE_20D28B:        STA $021B                 
CODE_20D28E:        LDA #$17                  
CODE_20D290:        STA $0208                 
CODE_20D293:        LDA #$13                  
CODE_20D295:        STA $0209                 
CODE_20D298:        LDA #$64                  
CODE_20D29A:        STA $0204                 
CODE_20D29D:        RTS                       

CODE_20D29E:        STZ $021A                 
CODE_20D2A1:        STZ $021B                 
CODE_20D2A4:        LDA #$13                  
CODE_20D2A6:        STA $0208                 
CODE_20D2A9:        LDA #$04                  
CODE_20D2AB:        STA $0209                 
CODE_20D2AE:        LDA #$20                  
CODE_20D2B0:        STA $0204                 
CODE_20D2B3:        LDA #$20                  
CODE_20D2B5:        STA $0205                 
CODE_20D2B8:        ASL A                     
CODE_20D2B9:        STA $0206                 
CODE_20D2BC:        ASL A                     
CODE_20D2BD:        STA $0207                 
CODE_20D2C0:        RTS                       

CODE_20D2C1:        LDA $47                   
CODE_20D2C3:        CLC                       
CODE_20D2C4:        ADC #$20                  
CODE_20D2C6:        STA $47                   
CODE_20D2C8:        LDA $46                   
CODE_20D2CA:        ADC #$00                  
CODE_20D2CC:        STA $46                   
CODE_20D2CE:        CMP #$18                  
CODE_20D2D0:        BCS CODE_20D2E0                   
CODE_20D2D2:        CMP #$14                  
CODE_20D2D4:        BCC CODE_20D2E0           
CODE_20D2D6:        LDA #$18                  
CODE_20D2D8:        STA $46                   
CODE_20D2DA:        LDA $47                   
CODE_20D2DC:        AND #$1F                  
CODE_20D2DE:        STA $47                   
CODE_20D2E0:        RTS                       

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

CODE_20E07C:        LDA $0726                 
CODE_20E07F:        BEQ CODE_20E0A2           
CODE_20E081:        LDX $8D                   
CODE_20E083:        LDA.l DATA_20BB05,x             
CODE_20E087:        LDX $8F                   
CODE_20E089:        CMP #$F0                  
CODE_20E08B:        BCC CODE_20E093           
CODE_20E08D:        SEC                       
CODE_20E08E:        SBC #$F0                  
CODE_20E090:        TAX                       
CODE_20E091:        LDA #$00                  
CODE_20E093:        CLC                       
CODE_20E094:        ADC.l DATA_20E06A,x             
CODE_20E098:        STA $01                   
CODE_20E09A:        STZ $00                   
CODE_20E09C:        LDA.l DATA_20E076,x             
CODE_20E0A0:        BRA CODE_20E0C1           

CODE_20E0A2:        LDX $8D                   
CODE_20E0A4:        LDA.l DATA_20BB05,x             
CODE_20E0A8:        LDX $8F                   
CODE_20E0AA:        CMP #$F0                  
CODE_20E0AC:        BCC CODE_20E0B4           
CODE_20E0AE:        SEC                       
CODE_20E0AF:        SBC #$F0                  
CODE_20E0B1:        TAX                       
CODE_20E0B2:        LDA #$00                  
CODE_20E0B4:        CLC                       
CODE_20E0B5:        ADC.l DATA_20E064,x             
CODE_20E0B9:        STA $01                   
CODE_20E0BB:        STZ $00                   
CODE_20E0BD:        LDA.l DATA_20E070,x             
CODE_20E0C1:        STA $0238                 
CODE_20E0C4:        LDA #$20                  
CODE_20E0C6:        STA $06                   
CODE_20E0C8:        REP #$30                  
CODE_20E0CA:        LDA #$BA5D                
CODE_20E0CD:        STA $04                   
CODE_20E0CF:        LDA $8D                   
CODE_20E0D1:        AND #$00FF                
CODE_20E0D4:        TAX                       
CODE_20E0D5:        LDA.l DATA_20BA41,x             
CODE_20E0D9:        AND #$00FF                
CODE_20E0DC:        TAY                       
CODE_20E0DD:        LDA [$04],y               
CODE_20E0DF:        AND #$00FF                
CODE_20E0E2:        TAX                       
CODE_20E0E3:        LDA $89E7,x               
CODE_20E0E6:        CLC                       
CODE_20E0E7:        ADC $00                   
CODE_20E0E9:        STA $0220                 
CODE_20E0EC:        INY                       
CODE_20E0ED:        LDA [$04],y               
CODE_20E0EF:        AND #$00FF                
CODE_20E0F2:        TAX                       
CODE_20E0F3:        LDA $89E7,x               
CODE_20E0F6:        CLC                       
CODE_20E0F7:        ADC $00                   
CODE_20E0F9:        STA $0222                 
CODE_20E0FC:        INY                       
CODE_20E0FD:        LDA [$04],y               
CODE_20E0FF:        AND #$00FF                
CODE_20E102:        TAX                       
CODE_20E103:        LDA $89E7,x               
CODE_20E106:        CLC                       
CODE_20E107:        ADC $00                   
CODE_20E109:        STA $0224                 
CODE_20E10C:        INY                       
CODE_20E10D:        LDA [$04],y               
CODE_20E10F:        AND #$00FF                
CODE_20E112:        TAX                       
CODE_20E113:        LDA $89E7,x               
CODE_20E116:        CLC                       
CODE_20E117:        ADC $00                   
CODE_20E119:        STA $0226                 
CODE_20E11C:        INY                       
CODE_20E11D:        LDA [$04],y               
CODE_20E11F:        AND #$00FF                
CODE_20E122:        TAX                       
CODE_20E123:        LDA $89E7,x               
CODE_20E126:        CLC                       
CODE_20E127:        ADC $00                   
CODE_20E129:        STA $0228                 
CODE_20E12C:        INY                       
CODE_20E12D:        LDA [$04],y               
CODE_20E12F:        AND #$00FF                
CODE_20E132:        TAX                       
CODE_20E133:        LDA $89E7,x               
CODE_20E136:        CLC                       
CODE_20E137:        ADC $00                   
CODE_20E139:        STA $022A                 
CODE_20E13C:        SEP #$30                  
CODE_20E13E:        LDX $8E                   
CODE_20E140:        LDA.l DATA_20BB05,x             
CODE_20E144:        LDX $90                   
CODE_20E146:        CMP #$F0                  
CODE_20E148:        BCC CODE_20E150           
CODE_20E14A:        SEC                       
CODE_20E14B:        SBC #$F0                  
CODE_20E14D:        TAX                       
CODE_20E14E:        LDA #$00                  
CODE_20E150:        CLC                       
CODE_20E151:        ADC.l DATA_20E06A,x             
CODE_20E155:        STA $01                   
CODE_20E157:        STZ $00                   
CODE_20E159:        LDA.l DATA_20E076,x             
CODE_20E15D:        STA $0239                 
CODE_20E160:        REP #$30                  
CODE_20E162:        LDA $8E                   
CODE_20E164:        AND #$00FF                
CODE_20E167:        TAX                       
CODE_20E168:        LDA.l DATA_20BA41,x             
CODE_20E16C:        AND #$00FF                
CODE_20E16F:        TAY                       
CODE_20E170:        LDA [$04],y               
CODE_20E172:        AND #$00FF                
CODE_20E175:        TAX                       
CODE_20E176:        LDA $89E7,x               
CODE_20E179:        CLC                       
CODE_20E17A:        ADC $00                   
CODE_20E17C:        STA $022C                 
CODE_20E17F:        INY                       
CODE_20E180:        LDA [$04],y               
CODE_20E182:        AND #$00FF                
CODE_20E185:        TAX                       
CODE_20E186:        LDA $89E7,x               
CODE_20E189:        CLC                       
CODE_20E18A:        ADC $00                   
CODE_20E18C:        STA $022E                 
CODE_20E18F:        INY                       
CODE_20E190:        LDA [$04],y               
CODE_20E192:        AND #$00FF                
CODE_20E195:        TAX                       
CODE_20E196:        LDA $89E7,x               
CODE_20E199:        CLC                       
CODE_20E19A:        ADC $00                   
CODE_20E19C:        STA $0230                 
CODE_20E19F:        INY                       
CODE_20E1A0:        LDA [$04],y               
CODE_20E1A2:        AND #$00FF                
CODE_20E1A5:        TAX                       
CODE_20E1A6:        LDA $89E7,x               
CODE_20E1A9:        CLC                       
CODE_20E1AA:        ADC $00                   
CODE_20E1AC:        STA $0232                 
CODE_20E1AF:        INY                       
CODE_20E1B0:        LDA [$04],y               
CODE_20E1B2:        AND #$00FF                
CODE_20E1B5:        TAX                       
CODE_20E1B6:        LDA $89E7,x               
CODE_20E1B9:        CLC                       
CODE_20E1BA:        ADC $00                   
CODE_20E1BC:        STA $0234                 
CODE_20E1BF:        INY                       
CODE_20E1C0:        LDA [$04],y               
CODE_20E1C2:        AND #$00FF                
CODE_20E1C5:        TAX                       
CODE_20E1C6:        LDA $89E7,x               
CODE_20E1C9:        CLC                       
CODE_20E1CA:        ADC $00                   
CODE_20E1CC:        STA $0236                 
CODE_20E1CF:        SEP #$30                  
CODE_20E1D1:        RTS                       

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

CODE_20E237:        PHX
CODE_20E238:        JSL CODE_22E000           
CODE_20E23C:        PLX                       
CODE_20E23D:        LDX $BC                   
CODE_20E23F:        LDA $5E                   
CODE_20E241:        STA $00                   
CODE_20E243:        LDA $43                   
CODE_20E245:        STA $01                   
CODE_20E247:        REP #$20                  
CODE_20E249:        LDA $00                   
CODE_20E24B:        SEC                       
CODE_20E24C:        SBC $0210                 
CODE_20E24F:        STA $D8                   
CODE_20E251:        CLC                       
CODE_20E252:        ADC #$0008                
CODE_20E255:        STA $DA                   
CODE_20E257:        CLC                       
CODE_20E258:        ADC #$0008                
CODE_20E25B:        STA $DC                   
CODE_20E25D:        SEP #$20                  
CODE_20E25F:        LDA $D8                   
CODE_20E261:        STA $79                   
CODE_20E263:        LDA $0425                 
CODE_20E266:        BEQ CODE_20E26E           
CODE_20E268:        STZ $D9                   
CODE_20E26A:        STZ $DB                   
CODE_20E26C:        STZ $DD                   
CODE_20E26E:        LDA $70                   
CODE_20E270:        SEC                       
CODE_20E271:        SBC $0543                 
CODE_20E274:        STA $82                   
CODE_20E276:        LDA $55                   
CODE_20E278:        SBC $0542                 
CODE_20E27B:        STA $0544                 
CODE_20E27E:        LDA $0552                 
CODE_20E281:        BEQ CODE_20E28D           
CODE_20E283:        DEC $0552                 
CODE_20E286:        AND #$02                  
CODE_20E288:        BEQ CODE_20E28D           
CODE_20E28A:        JMP CODE_20E5EA           
CODE_20E28D:        LDA $0555                 
CODE_20E290:        BNE CODE_20E2A0           
CODE_20E292:        LDA $0553                 
CODE_20E295:        BEQ CODE_20E2C1           
CODE_20E297:        LDA $15                   
CODE_20E299:        AND #$01                  
CODE_20E29B:        BEQ CODE_20E2A0           
CODE_20E29D:        DEC $0553                 
CODE_20E2A0:        LDA $15                   
CODE_20E2A2:        AND #$0F                  
CODE_20E2A4:        LDY $0555                 
CODE_20E2A7:        BNE CODE_20E2BD           
CODE_20E2A9:        LDY $0553                 
CODE_20E2AC:        CPY #$20                  
CODE_20E2AE:        BNE CODE_20E2BB           
CODE_20E2B0:        LDY $0567                 
CODE_20E2B3:        BNE CODE_20E2BB           
CODE_20E2B5:        LDY $1062                 
CODE_20E2B8:        STY $1202                 
CODE_20E2BB:        BCS CODE_20E2BF                   
CODE_20E2BD:        LSR A                     
CODE_20E2BE:        LSR A                     
CODE_20E2BF:        AND #$03                  
CODE_20E2C1:        ASL A                     
CODE_20E2C2:        ORA #$20                  
CODE_20E2C4:        CMP #$20                  
CODE_20E2C6:        BNE CODE_20E2CA           
CODE_20E2C8:        ORA #$0E                  
CODE_20E2CA:        STA $00                   
CODE_20E2CC:        LDA $0553                 
CODE_20E2CF:        BEQ CODE_20E2DD           
CODE_20E2D1:        JSL CODE_29CD83           
CODE_20E2D5:        LDA $00                   
CODE_20E2D7:        AND #$F1                  
CODE_20E2D9:        ORA #$0E                  
CODE_20E2DB:        STA $00                   
CODE_20E2DD:        LDA $0588                 
CODE_20E2E0:        ORA $058A                 
CODE_20E2E3:        BEQ CODE_20E2ED           
CODE_20E2E5:        LDA $00                   
CODE_20E2E7:        AND #$CF                  
CODE_20E2E9:        ORA #$10                  
CODE_20E2EB:        STA $00                   
CODE_20E2ED:        REP #$10                  
CODE_20E2EF:        LDX $C4                   
CODE_20E2F1:        LDA #$00                  
CODE_20E2F3:        STA $081A,x               
CODE_20E2F6:        INC A                     
CODE_20E2F7:        STA $081E,x               
CODE_20E2FA:        INC A                     
CODE_20E2FB:        STA $0822,x               
CODE_20E2FE:        INC A                     
CODE_20E2FF:        STA $0826,x               
CODE_20E302:        INC A                     
CODE_20E303:        STA $082A,x               
CODE_20E306:        INC A                     
CODE_20E307:        STA $082E,x               
CODE_20E30A:        INC A                     
CODE_20E30B:        STA $0802,x               
CODE_20E30E:        INC A                     
CODE_20E30F:        STA $0806,x               
CODE_20E312:        INC A                     
CODE_20E313:        STA $080A,x               
CODE_20E316:        INC A                     
CODE_20E317:        STA $080E,x               
CODE_20E31A:        INC A                     
CODE_20E31B:        STA $0812,x               
CODE_20E31E:        INC A                     
CODE_20E31F:        STA $0816,x               
CODE_20E322:        LDA $BD                   
CODE_20E324:        AND #$C0                  
CODE_20E326:        ORA $00                   
CODE_20E328:        STA $0803,x               
CODE_20E32B:        STA $0807,x               
CODE_20E32E:        STA $080B,x               
CODE_20E331:        STA $080F,x               
CODE_20E334:        STA $0813,x               
CODE_20E337:        STA $0817,x               
CODE_20E33A:        STA $081B,x               
CODE_20E33D:        STA $081F,x               
CODE_20E340:        STA $0823,x               
CODE_20E343:        STA $0827,x               
CODE_20E346:        STA $082B,x               
CODE_20E349:        STA $082F,x               
CODE_20E34C:        REP #$20                  
CODE_20E34E:        LDA $0226                 
CODE_20E351:        CMP $0228                 
CODE_20E354:        BNE CODE_20E377           
CODE_20E356:        SEP #$20                  
CODE_20E358:        LDA $081B,x               
CODE_20E35B:        AND #$BF                  
CODE_20E35D:        STA $081B,x               
CODE_20E360:        STA $081F,x               
CODE_20E363:        STA $0803,x               
CODE_20E366:        STA $0807,x               
CODE_20E369:        ORA #$40                  
CODE_20E36B:        STA $080B,x               
CODE_20E36E:        STA $080F,x               
CODE_20E371:        STA $0823,x               
CODE_20E374:        STA $0827,x               
CODE_20E377:        SEP #$20                  
CODE_20E379:        LDA $82                   
CODE_20E37B:        STA $0819,x               
CODE_20E37E:        STA $0821,x               
CODE_20E381:        STA $0829,x               
CODE_20E384:        CLC                       
CODE_20E385:        ADC #$08                  
CODE_20E387:        STA $081D,x               
CODE_20E38A:        STA $0825,x               
CODE_20E38D:        STA $082D,x               
CODE_20E390:        CLC                       
CODE_20E391:        ADC #$08                  
CODE_20E393:        STA $0801,x               
CODE_20E396:        STA $0809,x               
CODE_20E399:        STA $0811,x               
CODE_20E39C:        CLC                       
CODE_20E39D:        ADC #$08                  
CODE_20E39F:        STA $0805,x               
CODE_20E3A2:        STA $080D,x               
CODE_20E3A5:        STA $0815,x               
CODE_20E3A8:        LDA $79                   
CODE_20E3AA:        STA $0800,x               
CODE_20E3AD:        STA $0804,x               
CODE_20E3B0:        STA $0818,x               
CODE_20E3B3:        STA $081C,x               
CODE_20E3B6:        CLC                       
CODE_20E3B7:        ADC #$08                  
CODE_20E3B9:        STA $0808,x               
CODE_20E3BC:        STA $080C,x               
CODE_20E3BF:        STA $0820,x               
CODE_20E3C2:        STA $0824,x               
CODE_20E3C5:        CLC                       
CODE_20E3C6:        ADC #$08                  
CODE_20E3C8:        STA $0810,x               
CODE_20E3CB:        STA $0814,x               
CODE_20E3CE:        STA $0828,x               
CODE_20E3D1:        STA $082C,x               
CODE_20E3D4:        PHX                       
CODE_20E3D5:        REP #$20                  
CODE_20E3D7:        TXA                       
CODE_20E3D8:        LSR A                     
CODE_20E3D9:        LSR A                     
CODE_20E3DA:        TAX                       
CODE_20E3DB:        SEP #$20                  
CODE_20E3DD:        LDA $D9                   
CODE_20E3DF:        AND #$01                  
CODE_20E3E1:        STA $0A20,x               
CODE_20E3E4:        STA $0A21,x               
CODE_20E3E7:        STA $0A26,x               
CODE_20E3EA:        STA $0A27,x               
CODE_20E3ED:        LDA $DB                   
CODE_20E3EF:        AND #$01                  
CODE_20E3F1:        STA $0A22,x               
CODE_20E3F4:        STA $0A23,x               
CODE_20E3F7:        STA $0A28,x               
CODE_20E3FA:        STA $0A29,x               
CODE_20E3FD:        LDA $DD                   
CODE_20E3FF:        AND #$01                  
CODE_20E401:        STA $0A24,x               
CODE_20E404:        STA $0A25,x               
CODE_20E407:        STA $0A2A,x               
CODE_20E40A:        STA $0A2B,x               
CODE_20E40D:        PLX                       
CODE_20E40E:        LDA $BD                   
CODE_20E410:        AND #$40                  
CODE_20E412:        BNE CODE_20E417           
CODE_20E414:        BRL CODE_20E4C3           

CODE_20E417:        LDA $0802,x               
CODE_20E41A:        PHA                       
CODE_20E41B:        LDA $080A,x               
CODE_20E41E:        STA $0802,x               
CODE_20E421:        PLA                       
CODE_20E422:        STA $080A,x               
CODE_20E425:        LDA $0806,x               
CODE_20E428:        PHA                       
CODE_20E429:        LDA $080E,x               
CODE_20E42C:        STA $0806,x               
CODE_20E42F:        PLA                       
CODE_20E430:        STA $080E,x               
CODE_20E433:        LDA $0810,x               
CODE_20E436:        CLC                       
CODE_20E437:        ADC #$E8                  
CODE_20E439:        STA $0810,x               
CODE_20E43C:        STA $0814,x               
CODE_20E43F:        STA $0828,x               
CODE_20E442:        STA $082C,x               
CODE_20E445:        LDA $0425                 
CODE_20E448:        BNE CODE_20E46C           
CODE_20E44A:        PHX                       
CODE_20E44B:        REP #$20                  
CODE_20E44D:        LDA $DC                   
CODE_20E44F:        SEC                       
CODE_20E450:        SBC #$0018                
CODE_20E453:        STA $DC                   
CODE_20E455:        TXA                       
CODE_20E456:        LSR A                     
CODE_20E457:        LSR A                     
CODE_20E458:        TAX                       
CODE_20E459:        SEP #$20                  
CODE_20E45B:        LDA $DD                   
CODE_20E45D:        AND #$01                  
CODE_20E45F:        STA $0A24,x               
CODE_20E462:        STA $0A25,x               
CODE_20E465:        STA $0A2A,x               
CODE_20E468:        STA $0A2B,x               
CODE_20E46B:        PLX                       
CODE_20E46C:        LDA $081A,x               
CODE_20E46F:        PHA                       
CODE_20E470:        LDA $0822,x               
CODE_20E473:        STA $081A,x               
CODE_20E476:        PLA                       
CODE_20E477:        STA $0822,x               
CODE_20E47A:        LDA $081E,x               
CODE_20E47D:        PHA                       
CODE_20E47E:        LDA $0826,x               
CODE_20E481:        STA $081E,x               
CODE_20E484:        PLA                       
CODE_20E485:        STA $0826,x               
CODE_20E488:        LDA $054F                 
CODE_20E48B:        BEQ CODE_20E4C3           
CODE_20E48D:        LDA $0800,x               
CODE_20E490:        CLC                       
CODE_20E491:        ADC #$08                  
CODE_20E493:        STA $0800,x               
CODE_20E496:        STA $0804,x               
CODE_20E499:        STA $0818,x               
CODE_20E49C:        STA $081C,x               
CODE_20E49F:        LDA $0808,x               
CODE_20E4A2:        CLC                       
CODE_20E4A3:        ADC #$08                  
CODE_20E4A5:        STA $0808,x               
CODE_20E4A8:        STA $080C,x               
CODE_20E4AB:        STA $0820,x               
CODE_20E4AE:        STA $0824,x               
CODE_20E4B1:        LDA $0810,x               
CODE_20E4B4:        CLC                       
CODE_20E4B5:        ADC #$08                  
CODE_20E4B7:        STA $0810,x               
CODE_20E4BA:        STA $0814,x               
CODE_20E4BD:        STA $0828,x               
CODE_20E4C0:        STA $082C,x               
CODE_20E4C3:        LDA $0577                 
CODE_20E4C6:        BNE CODE_20E4CB           
CODE_20E4C8:        BRL CODE_20E559           

CODE_20E4CB:        LDY #$0000                
CODE_20E4CE:        LDA $BB                   
CODE_20E4D0:        BNE CODE_20E4D5           
CODE_20E4D2:        LDY #$0006                
CODE_20E4D5:        STY $00                   
CODE_20E4D7:        LDA $A6                   
CODE_20E4D9:        BEQ CODE_20E4EE           
CODE_20E4DB:        LDA $9D                   
CODE_20E4DD:        BPL CODE_20E4E1           
CODE_20E4DF:        EOR #$FF                  
CODE_20E4E1:        LSR A                     
CODE_20E4E2:        LSR A                     
CODE_20E4E3:        LSR A                     
CODE_20E4E4:        LSR A                     
CODE_20E4E5:        SEC                       
CODE_20E4E6:        SBC #$03                  
CODE_20E4E8:        EOR #$FF                  
CODE_20E4EA:        BPL CODE_20E4EE           
CODE_20E4EC:        LDA #$00                  
CODE_20E4EE:        CLC                       
CODE_20E4EF:        ADC $00                   
CODE_20E4F1:        CLC                       
CODE_20E4F2:        ADC $82                   
CODE_20E4F4:        STA $0819,x               
CODE_20E4F7:        STA $0821,x               
CODE_20E4FA:        STA $0829,x               
CODE_20E4FD:        CLC                       
CODE_20E4FE:        ADC #$08                  
CODE_20E500:        STA $081D,x               
CODE_20E503:        STA $0825,x               
CODE_20E506:        STA $082D,x               
CODE_20E509:        LDA #$28                  
CODE_20E50B:        STA $0802,x               
CODE_20E50E:        LDA #$29                  
CODE_20E510:        STA $0806,x               
CODE_20E513:        LDY #$002A                
CODE_20E516:        LDA $15                   
CODE_20E518:        AND #$08                  
CODE_20E51A:        BEQ CODE_20E51E           
CODE_20E51C:        INY                       
CODE_20E51D:        INY                       
CODE_20E51E:        TYA                       
CODE_20E51F:        STA $080A,x               
CODE_20E522:        INC A                     
CODE_20E523:        STA $080E,x               
CODE_20E526:        LDA $0803,x               
CODE_20E529:        AND #$F0                  
CODE_20E52B:        ORA #$05                  
CODE_20E52D:        STA $0803,x               
CODE_20E530:        STA $0807,x               
CODE_20E533:        STA $080B,x               
CODE_20E536:        STA $080F,x               
CODE_20E539:        AND #$40                  
CODE_20E53B:        BEQ CODE_20E559           
CODE_20E53D:        LDA $080A,x               
CODE_20E540:        PHA                       
CODE_20E541:        LDA $0802,x               
CODE_20E544:        STA $080A,x               
CODE_20E547:        PLA                       
CODE_20E548:        STA $0802,x               
CODE_20E54B:        LDA $080E,x               
CODE_20E54E:        PHA                       
CODE_20E54F:        LDA $0806,x               
CODE_20E552:        STA $080E,x               
CODE_20E555:        PLA                       
CODE_20E556:        STA $0806,x               
CODE_20E559:        LDA $BC                   
CODE_20E55B:        CMP #$5A                  
CODE_20E55D:        BNE CODE_20E5B4           
CODE_20E55F:        LDA $054F                 
CODE_20E562:        BNE CODE_20E5B4           
CODE_20E564:        LDA $0801,x               
CODE_20E567:        STA $0829,x               
CODE_20E56A:        LDA $0805,x               
CODE_20E56D:        STA $082D,x               
CODE_20E570:        REP #$20                  
CODE_20E572:        LDA $BD                   
CODE_20E574:        AND #$00FF                
CODE_20E577:        TAY                       
CODE_20E578:        SEP #$20                  
CODE_20E57A:        LDA #$F8                  
CODE_20E57C:        CPY #$0000                
CODE_20E57F:        BEQ CODE_20E583           
CODE_20E581:        LDA #$10                  
CODE_20E583:        CLC                       
CODE_20E584:        ADC $0818,x               
CODE_20E587:        STA $0828,x               
CODE_20E58A:        STA $082C,x               
CODE_20E58D:        PHX                       
CODE_20E58E:        REP #$20                  
CODE_20E590:        LDA $BB                   
CODE_20E592:        AND #$00FF                
CODE_20E595:        TAX                       
CODE_20E596:        SEP #$20                  
CODE_20E598:        LDA.l DATA_20E230,x             
CODE_20E59C:        PLX                       
CODE_20E59D:        STA $082A,x               
CODE_20E5A0:        INC A                     
CODE_20E5A1:        STA $082E,x               
CODE_20E5A4:        LDA $081B,x               
CODE_20E5A7:        ORA #$01                  
CODE_20E5A9:        STA $082B,x               
CODE_20E5AC:        LDA $081F,x               
CODE_20E5AF:        ORA #$01                  
CODE_20E5B1:        STA $082F,x               
CODE_20E5B4:        LDA $BD                   
CODE_20E5B6:        AND #$80                  
CODE_20E5B8:        BEQ CODE_20E5EA           
CODE_20E5BA:        LDA $0801,x               
CODE_20E5BD:        STA $081D,x               
CODE_20E5C0:        STA $0825,x               
CODE_20E5C3:        STA $082D,x               
CODE_20E5C6:        CLC                       
CODE_20E5C7:        ADC #$F8                  
CODE_20E5C9:        STA $0801,x               
CODE_20E5CC:        STA $0809,x               
CODE_20E5CF:        STA $0811,x               
CODE_20E5D2:        LDA $0805,x               
CODE_20E5D5:        STA $0819,x               
CODE_20E5D8:        STA $0821,x               
CODE_20E5DB:        STA $0829,x               
CODE_20E5DE:        CLC                       
CODE_20E5DF:        ADC #$E8                  
CODE_20E5E1:        STA $0805,x               
CODE_20E5E4:        STA $080D,x               
CODE_20E5E7:        STA $0815,x               
CODE_20E5EA:        REP #$10                  
CODE_20E5EC:        STZ $0583                 
CODE_20E5EF:        LDY #$00F0                
CODE_20E5F2:        LDA $0544                 
CODE_20E5F5:        BPL CODE_20E63A           
CODE_20E5F7:        LDA $82                   
CODE_20E5F9:        CLC                       
CODE_20E5FA:        ADC #$10                  
CODE_20E5FC:        LDA #$00                  
CODE_20E5FE:        ADC $0544                 
CODE_20E601:        BEQ CODE_20E638           
CODE_20E603:        INC $0583                 
CODE_20E606:        TYA                       
CODE_20E607:        STA $0819,x               
CODE_20E60A:        STA $0821,x               
CODE_20E60D:        STA $0829,x               
CODE_20E610:        STA $081D,x               
CODE_20E613:        STA $0825,x               
CODE_20E616:        STA $082D,x               
CODE_20E619:        LDA $82                   
CODE_20E61B:        CLC                       
CODE_20E61C:        ADC #$20                  
CODE_20E61E:        LDA #$00                  
CODE_20E620:        ADC $0544                 
CODE_20E623:        BEQ CODE_20E638           
CODE_20E625:        TYA                       
CODE_20E626:        STA $0801,x               
CODE_20E629:        STA $0809,x               
CODE_20E62C:        STA $0811,x               
CODE_20E62F:        STA $0805,x               
CODE_20E632:        STA $080D,x               
CODE_20E635:        STA $0815,x               
CODE_20E638:        BRA CODE_20E671           

CODE_20E63A:        BNE CODE_20E648           
CODE_20E63C:        LDA $82                   
CODE_20E63E:        CMP #$C0                  
CODE_20E640:        BCS CODE_20E648                   
CODE_20E642:        CMP #$B0                  
CODE_20E644:        BCS CODE_20E65E                   
CODE_20E646:        BCC CODE_20E671           
CODE_20E648:        INC $0583                 
CODE_20E64B:        TYA                       
CODE_20E64C:        STA $0819,x               
CODE_20E64F:        STA $0821,x               
CODE_20E652:        STA $0829,x               
CODE_20E655:        STA $081D,x               
CODE_20E658:        STA $0825,x               
CODE_20E65B:        STA $082D,x               
CODE_20E65E:        TYA                       
CODE_20E65F:        STA $0801,x               
CODE_20E662:        STA $0809,x               
CODE_20E665:        STA $0811,x               
CODE_20E668:        STA $0805,x               
CODE_20E66B:        STA $080D,x               
CODE_20E66E:        STA $0815,x               
CODE_20E671:        SEP #$10                  
CODE_20E673:        LDA $52                   
CODE_20E675:        CMP $53                   
CODE_20E677:        BNE CODE_20E67C           
CODE_20E679:        INC A                     
CODE_20E67A:        BEQ CODE_20E681           
CODE_20E67C:        LDA $0571                 
CODE_20E67F:        BNE CODE_20E684           
CODE_20E681:        BRL CODE_20E761           

CODE_20E684:        LDA $0350                 
CODE_20E687:        CMP #$03                  
CODE_20E689:        BEQ CODE_20E681           
CODE_20E68B:        LDA #$00                  
CODE_20E68D:        STA $7FC522               
CODE_20E691:        STA $7FC523               
CODE_20E695:        LDA $52                   
CODE_20E697:        SEC                       
CODE_20E698:        SBC $0210                 
CODE_20E69B:        STA $0800                 
CODE_20E69E:        STA $0804                 
CODE_20E6A1:        STA $0808                 
CODE_20E6A4:        STA $080C                 
CODE_20E6A7:        CLC                       
CODE_20E6A8:        ADC #$08                  
CODE_20E6AA:        STA $0810                 
CODE_20E6AD:        STA $0814                 
CODE_20E6B0:        STA $0818                 
CODE_20E6B3:        STA $081C                 
CODE_20E6B6:        LDA $53                   
CODE_20E6B8:        SEC                       
CODE_20E6B9:        SBC $0543                 
CODE_20E6BC:        PHA                       
CODE_20E6BD:        CMP #$F0                  
CODE_20E6BF:        BCC CODE_20E6C3           
CODE_20E6C1:        LDA #$00                  
CODE_20E6C3:        STA $0801                 
CODE_20E6C6:        STA $0811                 
CODE_20E6C9:        CLC                       
CODE_20E6CA:        ADC #$08                  
CODE_20E6CC:        STA $0805                 
CODE_20E6CF:        STA $0815                 
CODE_20E6D2:        PLA                       
CODE_20E6D3:        CLC                       
CODE_20E6D4:        ADC #$10                  
CODE_20E6D6:        STA $0809                 
CODE_20E6D9:        STA $0819                 
CODE_20E6DC:        CLC                       
CODE_20E6DD:        ADC #$07                  
CODE_20E6DF:        STA $080D                 
CODE_20E6E2:        STA $081D                 
CODE_20E6E5:        LDA #$FE                  
CODE_20E6E7:        STA $0802                 
CODE_20E6EA:        STA $0806                 
CODE_20E6ED:        STA $080A                 
CODE_20E6F0:        STA $080E                 
CODE_20E6F3:        STA $0812                 
CODE_20E6F6:        STA $0816                 
CODE_20E6F9:        STA $081A                 
CODE_20E6FC:        STA $081E                 
CODE_20E6FF:        LDA #$11                  
CODE_20E701:        STA $0803                 
CODE_20E704:        STA $0807                 
CODE_20E707:        STA $080B                 
CODE_20E70A:        STA $080F                 
CODE_20E70D:        STA $0813                 
CODE_20E710:        STA $0817                 
CODE_20E713:        STA $081B                 
CODE_20E716:        STA $081F                 
CODE_20E719:        LDA #$00                  
CODE_20E71B:        STA $0A20                 
CODE_20E71E:        STA $0A21                 
CODE_20E721:        STA $0A22                 
CODE_20E724:        STA $0A23                 
CODE_20E727:        LDA $0571                 
CODE_20E72A:        CMP #$10                  
CODE_20E72C:        BNE CODE_20E742           
CODE_20E72E:        LDA $0819                 
CODE_20E731:        DEC A                     
CODE_20E732:        DEC A                     
CODE_20E733:        STA $0819                 
CODE_20E736:        STA $081D                 
CODE_20E739:        LDA #$EE                  
CODE_20E73B:        STA $081E                 
CODE_20E73E:        LDA #$02                  
CODE_20E740:        BRA CODE_20E752           

CODE_20E742:        LDA $1EBB                 
CODE_20E745:        CMP #$A4                  
CODE_20E747:        BNE CODE_20E750           
CODE_20E749:        LDA $1EBC                 
CODE_20E74C:        CMP #$B7                  
CODE_20E74E:        BEQ CODE_20E72E           
CODE_20E750:        LDA #$00                  
CODE_20E752:        STA $0A24                 
CODE_20E755:        STA $0A25                 
CODE_20E758:        STA $0A26                 
CODE_20E75B:        STA $0A27                 
CODE_20E75E:        BRL CODE_20E802           

CODE_20E761:        LDX $C4                   
CODE_20E763:        LDA $0425                 
CODE_20E766:        BEQ CODE_20E783           
CODE_20E768:        LDY #$00                  
CODE_20E76A:        LDA $0800,x               
CODE_20E76D:        CMP #$F8                  
CODE_20E76F:        BCS CODE_20E785                   
CODE_20E771:        LDY #$08                  
CODE_20E773:        LDA $0808,x               
CODE_20E776:        CMP #$F8                  
CODE_20E778:        BCS CODE_20E785                   
CODE_20E77A:        LDY #$10                  
CODE_20E77C:        LDA $0810,x               
CODE_20E77F:        CMP #$F8                  
CODE_20E781:        BCS CODE_20E785                   
CODE_20E783:        BRA CODE_20E802           
CODE_20E785:        STY $D8                   
CODE_20E787:        TXA                       
CODE_20E788:        CLC                       
CODE_20E789:        ADC $D8                   
CODE_20E78B:        TAY                       
CODE_20E78C:        LDA $0800,y               
CODE_20E78F:        STA $0800                 
CODE_20E792:        STA $0804                 
CODE_20E795:        STA $0808                 
CODE_20E798:        STA $080C                 
CODE_20E79B:        LDA $0801,y               
CODE_20E79E:        STA $0801                 
CODE_20E7A1:        LDA $0805,y               
CODE_20E7A4:        STA $0805                 
CODE_20E7A7:        LDA $0819,y               
CODE_20E7AA:        STA $0809                 
CODE_20E7AD:        LDA $081D,y               
CODE_20E7B0:        STA $080D                 
CODE_20E7B3:        LDA $0802,y               
CODE_20E7B6:        STA $0802                 
CODE_20E7B9:        LDA $0806,y               
CODE_20E7BC:        STA $0806                 
CODE_20E7BF:        LDA $081A,y               
CODE_20E7C2:        STA $080A                 
CODE_20E7C5:        LDA $081E,y               
CODE_20E7C8:        STA $080E                 
CODE_20E7CB:        LDA $0803,y               
CODE_20E7CE:        STA $0803                 
CODE_20E7D1:        LDA $0807,y               
CODE_20E7D4:        STA $0807                 
CODE_20E7D7:        LDA $081B,y               
CODE_20E7DA:        STA $080B                 
CODE_20E7DD:        LDA $081F,y               
CODE_20E7E0:        STA $080F                 
CODE_20E7E3:        TYA                       
CODE_20E7E4:        LSR A                     
CODE_20E7E5:        LSR A                     
CODE_20E7E6:        TAY                       
CODE_20E7E7:        LDA #$01                  
CODE_20E7E9:        STA $0A20,y               
CODE_20E7EC:        STA $0A21,y               
CODE_20E7EF:        STA $0A26,y               
CODE_20E7F2:        STA $0A27,y               
CODE_20E7F5:        DEC A                     
CODE_20E7F6:        STA $0A20                 
CODE_20E7F9:        STA $0A21                 
CODE_20E7FC:        STA $0A22                 
CODE_20E7FF:        STA $0A23                 
CODE_20E802:        RTL                       

CODE_20E803:        LDA #$84                  
CODE_20E805:        SEC                       
CODE_20E806:        SBC $0602                 
CODE_20E809:        CMP #$04                  
CODE_20E80B:        BCS CODE_20E853                   
CODE_20E80D:        LDY #$00                  
CODE_20E80F:        LDA $5E                   
CODE_20E811:        CMP #$60                  
CODE_20E813:        BCC CODE_20E81B           
CODE_20E815:        INY                       
CODE_20E816:        CMP #$90                  
CODE_20E818:        BCC CODE_20E81B           
CODE_20E81A:        INY                       
CODE_20E81B:        LDA #$80                  
CODE_20E81D:        STA $052B                 
CODE_20E820:        LDA #$01                  
CODE_20E822:        STA $052A                 
CODE_20E825:        LSR A                     
CODE_20E826:        STA $0528                 
CODE_20E829:        LDA $8AA7,y               
CODE_20E82C:        STA $0529                 
CODE_20E82F:        LDA #$14                  
CODE_20E831:        STA $037B                 
CODE_20E834:        STA $0564                 
CODE_20E837:        LDX $0421                 
CODE_20E83A:        DEX                       
CODE_20E83B:        CPX #$05                  
CODE_20E83D:        BMI CODE_20E84D           
CODE_20E83F:        LDA $0783                 
CODE_20E842:        AND #$0F                  
CODE_20E844:        TAY                       
CODE_20E845:        LDA $8A97,y               
CODE_20E848:        CLC                       
CODE_20E849:        ADC $8A8D,x               
CODE_20E84C:        TAX                       
CODE_20E84D:        LDA $8A7E,x               
CODE_20E850:        TAX                       
CODE_20E851:        INX                       
CODE_20E852:        RTL                       

CODE_20E853:        LDX #$00                  
CODE_20E855:        RTL                       

CODE_20E856:        LDA $0556                 
CODE_20E859:        BEQ CODE_20E86C           
CODE_20E85B:        DEC $0556                 
CODE_20E85E:        JSL CODE_20E237           
CODE_20E862:        LDA $05FC                 
CODE_20E865:        BEQ CODE_20E86B           
CODE_20E867:        JSL CODE_23D10E           
CODE_20E86B:        RTL                       

CODE_20E86C:        LDA $BF                   
CODE_20E86E:        BEQ CODE_20E874           
CODE_20E870:        JSR CODE_20EE03           
CODE_20E873:        RTL                       

CODE_20E874:        LDA $0572                 
CODE_20E877:        BPL CODE_20E8A4           
CODE_20E879:        LDA #$00                  
CODE_20E87B:        STA $06A4                 
CODE_20E87E:        STA $8B                   
CODE_20E880:        INC $0572                 
CODE_20E883:        LDA $0572                 
CODE_20E886:        STA $9D                   
CODE_20E888:        BNE CODE_20E88D           
CODE_20E88A:        INC $0572                 
CODE_20E88D:        LDA $55                   
CODE_20E88F:        BPL CODE_20E8A4           
CODE_20E891:        LDA #$01                  
CODE_20E893:        STA $55                   
CODE_20E895:        LDA #$B0                  
CODE_20E897:        STA $70                   
CODE_20E899:        LDA #$D0                  
CODE_20E89B:        STA $0572                 
CODE_20E89E:        LDA #$03                  
CODE_20E8A0:        STA $0414                 
CODE_20E8A3:        RTL                       

CODE_20E8A4:        LDA $0554                 
CODE_20E8A7:        BEQ CODE_20E8AD           
CODE_20E8A9:        JSR CODE_20EF39           
CODE_20E8AC:        RTL                       

CODE_20E8AD:        LDA $0555                 
CODE_20E8B0:        BEQ CODE_20E8C4           
CODE_20E8B2:        CMP #$1F                  
CODE_20E8B4:        BNE CODE_20E8BC           
CODE_20E8B6:        DEC $0555                 
CODE_20E8B9:        JMP CODE_20E8C4           
CODE_20E8BC:        JSL CODE_20E237           
CODE_20E8C0:        DEC $0555                 
CODE_20E8C3:        RTL                       

CODE_20E8C4:        LDA $0551                 
CODE_20E8C7:        BEQ CODE_20E8F3           
CODE_20E8C9:        LSR A                     
CODE_20E8CA:        LSR A                     
CODE_20E8CB:        TAX                       
CODE_20E8CC:        LDY $BB                   
CODE_20E8CE:        BNE CODE_20E8D8           
CODE_20E8D0:        STX $00                   
CODE_20E8D2:        LDA #$0B                  
CODE_20E8D4:        SEC                       
CODE_20E8D5:        SBC $00                   
CODE_20E8D7:        TAX                       
CODE_20E8D8:        AND #$01                  
CODE_20E8DA:        PHP                       
CODE_20E8DB:        LDA $E974,x               
CODE_20E8DE:        STA $BC                   
CODE_20E8E0:        PLP                       
CODE_20E8E1:        LDA $BB                   
CODE_20E8E3:        PHA                       
CODE_20E8E4:        LDA #$01                  
CODE_20E8E6:        STA $BB                   
CODE_20E8E8:        JSL CODE_20E237           
CODE_20E8EC:        PLA                       
CODE_20E8ED:        STA $BB                   
CODE_20E8EF:        DEC $0551                 
CODE_20E8F2:        RTL                       

CODE_20E8F3:        LDA $0559                 
CODE_20E8F6:        BEQ CODE_20E928           
CODE_20E8F8:        LDA $0577                 
CODE_20E8FB:        BEQ CODE_20E905           
CODE_20E8FD:        STZ $0577                 
CODE_20E900:        LDA #$18                  
CODE_20E902:        STA $0554                 
CODE_20E905:        LDA #$41                  
CODE_20E907:        STA $BD                   
CODE_20E909:        JSL CODE_20E237           
CODE_20E90D:        LDA $A6                   
CODE_20E90F:        BNE CODE_20E928           
CODE_20E911:        DEC $0559                 
CODE_20E914:        LDA #$14                  
CODE_20E916:        STA $8B                   
CODE_20E918:        JSR CODE_20EB60           
CODE_20E91B:        LDA $057A                 
CODE_20E91E:        BEQ CODE_20E927           
CODE_20E920:        STZ $057A                 
CODE_20E923:        JSL CODE_23C463           
CODE_20E927:        RTL                       

CODE_20E928:        LDA $055A                 
CODE_20E92B:        BNE CODE_20E930           
CODE_20E92D:        BRL CODE_20EA0C           
CODE_20E930:        PHA                       
CODE_20E931:        LDA #$00                  
CODE_20E933:        STA $25                   
CODE_20E935:        INC $0210                 
CODE_20E938:        BNE CODE_20E93F           
CODE_20E93A:        INC $12                   
CODE_20E93C:        INC $0211                 
CODE_20E93F:        REP #$20                  
CODE_20E941:        LDA $0210                 
CODE_20E944:        LSR A                     
CODE_20E945:        LSR A                     
CODE_20E946:        STA $0212                 
CODE_20E949:        SEP #$20                  
CODE_20E94B:        LDA $12                   
CODE_20E94D:        BNE CODE_20E956           
CODE_20E94F:        LDA $0210                 
CODE_20E952:        CMP #$60                  
CODE_20E954:        BCC CODE_20E970           
CODE_20E956:        INC $0550                 
CODE_20E959:        LDA $0550                 
CODE_20E95C:        CLC                       
CODE_20E95D:        ADC $055C                 
CODE_20E960:        BCC CODE_20E970           
CODE_20E962:        INC $0216                 
CODE_20E965:        LDA $75                   
CODE_20E967:        SEC                       
CODE_20E968:        SBC #$01                  
CODE_20E96A:        STA $75                   
CODE_20E96C:        BCS CODE_20E970                   
CODE_20E96E:        DEC $5A                   
CODE_20E970:        PLA                       
CODE_20E971:        JSR CODE_20E975           
CODE_20E974:        RTL                       

CODE_20E975:        JSL CODE_20FB1F           

PNTR_20E979:          dw CODE_20E983
               dw CODE_20E984
               dw CODE_20E9A2
               dw CODE_20E9CD
               dw CODE_20E9E8

CODE_20E983:        RTS

CODE_20E984:        LDA #$EF                  
CODE_20E986:        STA $0543                 
CODE_20E989:        LDA $0210                 
CODE_20E98C:        CMP #$80                  
CODE_20E98E:        BCC CODE_20E997           
CODE_20E990:        LDA #$A0                  
CODE_20E992:        STA $9D                   
CODE_20E994:        INC $055A                 
CODE_20E997:        LDA #$01                  
CODE_20E999:        STA $BD                   
CODE_20E99B:        LDA #$20                  
CODE_20E99D:        STA $8B                   
CODE_20E99F:        JMP CODE_20EB60           

CODE_20E9A2:        LDA $5E                   
CODE_20E9A4:        CMP #$36                  
CODE_20E9A6:        BCC CODE_20E9CA           
CODE_20E9A8:        JSL CODE_23DEA3           
CODE_20E9AC:        JSL CODE_23DE53           
CODE_20E9B0:        LDA $9D                   
CODE_20E9B2:        CLC                       
CODE_20E9B3:        ADC #$04                  
CODE_20E9B5:        STA $9D                   
CODE_20E9B7:        CMP #$0F                  
CODE_20E9B9:        BMI CODE_20E9BE           
CODE_20E9BB:        INC $055A                 
CODE_20E9BE:        LDY $BB                   
CODE_20E9C0:        LDA $E9E5,y               
CODE_20E9C3:        STA $BC                   
CODE_20E9C5:        JSL CODE_20E237           
CODE_20E9C9:        RTS                       

CODE_20E9CA:        JMP CODE_20EB60           

CODE_20E9CD:        LDA #$02                  
CODE_20E9CF:        STA $BD                   
CODE_20E9D1:        LDA #$EC                  
CODE_20E9D3:        STA $9D                   
CODE_20E9D5:        JSR CODE_20EB60           
CODE_20E9D8:        LDA $0216                 
CODE_20E9DB:        CMP #$70                  
CODE_20E9DD:        BCC CODE_20E9E7           
CODE_20E9DF:        LDA #$03                  
CODE_20E9E1:        STA $0414                 
CODE_20E9E4:        INC $055A                 
CODE_20E9E7:        RTS                       

CODE_20E9E8:        LDA $05FC                 
CODE_20E9EB:        BEQ CODE_20EA0B           
CODE_20E9ED:        JSL CODE_23DEA3           
CODE_20E9F1:        LDA $9D                   
CODE_20E9F3:        BMI CODE_20E9FD           
CODE_20E9F5:        LDA #$00                  
CODE_20E9F7:        STA $055A                 
CODE_20E9FA:        STA $05F3                 
CODE_20E9FD:        LDA $9D                   
CODE_20E9FF:        CLC                       
CODE_20EA00:        ADC #$04                  
CODE_20EA02:        STA $9D                   
CODE_20EA04:        JSL CODE_23CFCA           
CODE_20EA08:        JSR CODE_20E9BE           
CODE_20EA0B:        RTS                       

CODE_20EA0C:        LDA $07BE                 
CODE_20EA0F:        CMP #$03                  
CODE_20EA11:        BMI CODE_20EA31           
CODE_20EA13:        CMP #$07                  
CODE_20EA15:        BMI CODE_20EA22           
CODE_20EA17:        LDA $70                   
CODE_20EA19:        CLC                       
CODE_20EA1A:        ADC #$02                  
CODE_20EA1C:        STA $70                   
CODE_20EA1E:        BCC CODE_20EA22           
CODE_20EA20:        INC $55                   
CODE_20EA22:        LDY $BB                   
CODE_20EA24:        LDA $E9E5,y               
CODE_20EA27:        STA $BC                   
CODE_20EA29:        JSL CODE_20E237           
CODE_20EA2D:        JSR CODE_20EADC           
CODE_20EA30:        RTL                       

CODE_20EA31:        LDA $0571                 
CODE_20EA34:        BPL CODE_20EA3A           
CODE_20EA36:        JSR CODE_20EBBA           
CODE_20EA39:        RTL                       

CODE_20EA3A:        BNE CODE_20EA3F           
CODE_20EA3C:        JMP CODE_20EADB           

CODE_20EA3F:        LDA $0510                 
CODE_20EA42:        BNE CODE_20EA70           
CODE_20EA44:        LDA $0571                 
CODE_20EA47:        AND #$1C                  
CODE_20EA49:        CMP #$14                  
CODE_20EA4B:        BNE CODE_20EA54           
CODE_20EA4D:        LDA #$05                  
CODE_20EA4F:        STA $0377                 
CODE_20EA52:        BRA CODE_20EA65           

CODE_20EA54:        LSR A                     
CODE_20EA55:        LSR A                     
CODE_20EA56:        STA $0414                 
CODE_20EA59:        CMP #$01                  
CODE_20EA5B:        BNE CODE_20EA65           
CODE_20EA5D:        INC $14                   
CODE_20EA5F:        LDA #$00                  
CODE_20EA61:        STA $0713                 
CODE_20EA64:        RTL                       

CODE_20EA65:        LDA $0571                 
CODE_20EA68:        AND #$03                  
CODE_20EA6A:        ORA #$80                  
CODE_20EA6C:        STA $0571                 
CODE_20EA6F:        RTL                       

CODE_20EA70:        LDA $0571                 
CODE_20EA73:        AND #$03                  
CODE_20EA75:        CMP #$02                  
CODE_20EA77:        BPL CODE_20EAB2           
CODE_20EA79:        LDA $0510                 
CODE_20EA7C:        CMP #$10                  
CODE_20EA7E:        BMI CODE_20EAB1           
CODE_20EA80:        PHA                       
CODE_20EA81:        JSR CODE_20EEF2           
CODE_20EA84:        PLA                       
CODE_20EA85:        CMP #$24                  
CODE_20EA87:        BPL CODE_20EAB1           
CODE_20EA89:        LDX $C4                   
CODE_20EA8B:        LDA #$F0                  
CODE_20EA8D:        STA $0801,x               
CODE_20EA90:        STA $0805,x               
CODE_20EA93:        STA $0809,x               
CODE_20EA96:        STA $080D,x               
CODE_20EA99:        STA $0811,x               
CODE_20EA9C:        STA $0815,x               
CODE_20EA9F:        STA $0819,x               
CODE_20EAA2:        STA $081D,x               
CODE_20EAA5:        STA $0821,x               
CODE_20EAA8:        STA $0825,x               
CODE_20EAAB:        STA $0829,x               
CODE_20EAAE:        STA $082D,x               
CODE_20EAB1:        RTL                       

CODE_20EAB2:        JSR CODE_20EF15           
CODE_20EAB5:        LDA $0510                 
CODE_20EAB8:        CMP #$10                  
CODE_20EABA:        BCS CODE_20EADA                   
CODE_20EABC:        LDA $C4                   
CODE_20EABE:        LDX $9D                   
CODE_20EAC0:        BPL CODE_20EAC5           
CODE_20EAC2:        CLC                       
CODE_20EAC3:        ADC #$18                  
CODE_20EAC5:        TAX                       
CODE_20EAC6:        LDA #$F0                  
CODE_20EAC8:        STA $0801,x               
CODE_20EACB:        STA $0805,x               
CODE_20EACE:        STA $0809,x               
CODE_20EAD1:        STA $080D,x               
CODE_20EAD4:        STA $0811,x               
CODE_20EAD7:        STA $0815,x               
CODE_20EADA:        RTL                       

CODE_20EADB:        RTL                       

CODE_20EADC:        LDY #$40                  
CODE_20EADE:        LDX $BB                   
CODE_20EAE0:        LDA $BD                   
CODE_20EAE2:        PHP                       
CODE_20EAE3:        LDA $8AB1,x               
CODE_20EAE6:        PLP                       
CODE_20EAE7:        BNE CODE_20EAEC           
CODE_20EAE9:        LDA $8AAA,x               
CODE_20EAEC:        CLC                       
CODE_20EAED:        ADC $79                   
CODE_20EAEF:        STA $0800,y               
CODE_20EAF2:        STA $0804,y               
CODE_20EAF5:        CLC                       
CODE_20EAF6:        ADC #$08                  
CODE_20EAF8:        STA $0808,y               
CODE_20EAFB:        STA $080C,y               
CODE_20EAFE:        LDA $55                   
CODE_20EB00:        STA $00                   
CODE_20EB02:        LDA $8AB8,x               
CODE_20EB05:        BPL CODE_20EB09           
CODE_20EB07:        DEC $00                   
CODE_20EB09:        CLC                       
CODE_20EB0A:        ADC $82                   
CODE_20EB0C:        BCC CODE_20EB10           
CODE_20EB0E:        INC $00                   
CODE_20EB10:        LDX $00                   
CODE_20EB12:        CPX #$01                  
CODE_20EB14:        BPL CODE_20EB5F           
CODE_20EB16:        CMP #$F0                  
CODE_20EB18:        BCS CODE_20EB5F                   
CODE_20EB1A:        STA $0801,y               
CODE_20EB1D:        STA $0809,y               
CODE_20EB20:        CLC                       
CODE_20EB21:        ADC #$08                  
CODE_20EB23:        STA $0805,y               
CODE_20EB26:        STA $080D,y               
CODE_20EB29:        LDA #$B0                  
CODE_20EB2B:        STA $0802,y               
CODE_20EB2E:        STA $080A,y               
CODE_20EB31:        INC A                     
CODE_20EB32:        STA $0806,y               
CODE_20EB35:        STA $080E,y               
CODE_20EB38:        JSL CODE_27AA8D           
CODE_20EB3C:        ASL A                     
CODE_20EB3D:        ORA #$20                  
CODE_20EB3F:        STA $0803,y               
CODE_20EB42:        STA $0807,y               
CODE_20EB45:        ORA #$40                  
CODE_20EB47:        STA $080B,y               
CODE_20EB4A:        STA $080F,y               
CODE_20EB4D:        TYA                       
CODE_20EB4E:        LSR A                     
CODE_20EB4F:        LSR A                     
CODE_20EB50:        TAY                       
CODE_20EB51:        LDA #$00                  
CODE_20EB53:        STA $0A20,y               
CODE_20EB56:        STA $0A21,y               
CODE_20EB59:        STA $0A22,y               
CODE_20EB5C:        STA $0A23,y               
CODE_20EB5F:        RTS                       

CODE_20EB60:        LDA $BD                   
CODE_20EB62:        AND #$02                  
CODE_20EB64:        BEQ CODE_20EB72           
CODE_20EB66:        JSL CODE_23DEA3           
CODE_20EB6A:        LDY $BB                   
CODE_20EB6C:        LDA $99C7,y               
CODE_20EB6F:        JMP CODE_20EBA7           
CODE_20EB72:        LDA $BD                   
CODE_20EB74:        AND #$01                  
CODE_20EB76:        TAY                       
CODE_20EB77:        LDA $8ABF,y               
CODE_20EB7A:        ORA $BD                   
CODE_20EB7C:        STA $BD                   
CODE_20EB7E:        JSL CODE_23DE53           
CODE_20EB82:        LDA $15                   
CODE_20EB84:        AND #$06                  
CODE_20EB86:        LSR A                     
CODE_20EB87:        STA $00                   
CODE_20EB89:        LDY $0577                 
CODE_20EB8C:        BEQ CODE_20EB9D           
CODE_20EB8E:        ASL A                     
CODE_20EB8F:        AND #$02                  
CODE_20EB91:        LDY $BB                   
CODE_20EB93:        BEQ CODE_20EB97           
CODE_20EB95:        LDY #$01                  
CODE_20EB97:        CLC                       
CODE_20EB98:        ADC $E9A4,y               
CODE_20EB9B:        BNE CODE_20EBA7           
CODE_20EB9D:        LDA $BB                   
CODE_20EB9F:        ASL A                     
CODE_20EBA0:        ASL A                     
CODE_20EBA1:        ORA $00                   
CODE_20EBA3:        TAY                       
CODE_20EBA4:        LDA $E958,y               
CODE_20EBA7:        STA $BC                   
CODE_20EBA9:        JSL CODE_20E237           
CODE_20EBAD:        RTS                       

PNTR_20EBAE:          dw CODE_20EBD5
               dw CODE_20EBD6
               dw CODE_20EBF1
               dw CODE_20EC17
               dw CODE_20EC6C
               dw CODE_20EC7A

CODE_20EBBA:        LDA #$08
CODE_20EBBC:        STA $1A45                 
CODE_20EBBF:        LDA $0377                 
CODE_20EBC2:        ASL A                     
CODE_20EBC3:        TAY                       
CODE_20EBC4:        PHB                       
CODE_20EBC5:        PHK                       
CODE_20EBC6:        PLB                       
CODE_20EBC7:        LDA PNTR_20EBAE,y               
CODE_20EBCA:        STA $00                   
CODE_20EBCC:        LDA PNTR_20EBAE+1,y               
CODE_20EBCF:        STA $01                   
CODE_20EBD1:        PLB                       
CODE_20EBD2:        JMP ($0000)               

CODE_20EBD5:        RTS                       

CODE_20EBD6:        LDA #$83                  
CODE_20EBD8:        STA $0571                 
CODE_20EBDB:        JSR CODE_20EF15           
CODE_20EBDE:        LDA $0510                 
CODE_20EBE1:        BNE CODE_20EBE6           
CODE_20EBE3:        JMP CODE_20EF2D           
CODE_20EBE6:        CMP #$20                  
CODE_20EBE8:        LDA $C4                   
CODE_20EBEA:        BCC CODE_20EBF0           
CODE_20EBEC:        JSL CODE_20EAC5           
CODE_20EBF0:        RTS                       

CODE_20EBF1:        LDA #$82                  
CODE_20EBF3:        STA $0571                 
CODE_20EBF6:        STA $A6                   
CODE_20EBF8:        LDA #$30                  
CODE_20EBFA:        STA $9D                   
CODE_20EBFC:        JSL CODE_23DEA3           
CODE_20EC00:        JSR CODE_20EF15           
CODE_20EC03:        LDA $0510                 
CODE_20EC06:        BNE CODE_20EC16           
CODE_20EC08:        LDA #$00                  
CODE_20EC0A:        STA $056F                 
CODE_20EC0D:        STA $0571                 
CODE_20EC10:        STA $8B                   
CODE_20EC12:        LDA #$38                  
CODE_20EC14:        STA $9D                   
CODE_20EC16:        RTS                       

CODE_20EC17:        LDA #$80                  
CODE_20EC19:        STA $0571                 
CODE_20EC1C:        LDA #$40                  
CODE_20EC1E:        STA $BD                   
CODE_20EC20:        LDY #$00                  
CODE_20EC22:        LDA $15                   
CODE_20EC24:        LSR A                     
CODE_20EC25:        BCC CODE_20EC56           
CODE_20EC27:        LDA $8AC5,y               
CODE_20EC2A:        STA $25                   
CODE_20EC2C:        LDA $0210                 
CODE_20EC2F:        LDX $12                   
CODE_20EC31:        BNE CODE_20EC37           
CODE_20EC33:        CMP #$80                  
CODE_20EC35:        BCC CODE_20EC56           
CODE_20EC37:        CLC                       
CODE_20EC38:        ADC $8AC7,y               
CODE_20EC3B:        STA $0210                 
CODE_20EC3E:        STA $0212                 
CODE_20EC41:        LDA $8AC9,y               
CODE_20EC44:        ADC $12                   
CODE_20EC46:        STA $12                   
CODE_20EC48:        STA $0211                 
CODE_20EC4B:        LSR A                     
CODE_20EC4C:        STA $0213                 
CODE_20EC4F:        LDA $0212                 
CODE_20EC52:        ROR A                     
CODE_20EC53:        STA $0212                 
CODE_20EC56:        JSR CODE_20EEF2           
CODE_20EC59:        LDX $C4                   
CODE_20EC5B:        LDA #$F0                  
CODE_20EC5D:        STA $0811,x               
CODE_20EC60:        STA $0815,x               
CODE_20EC63:        LDA $0510                 
CODE_20EC66:        BNE CODE_20EC6B           
CODE_20EC68:        JSR CODE_20EF2D           
CODE_20EC6B:        RTS                       

CODE_20EC6C:        LDA #$81                  
CODE_20EC6E:        STA $0571                 
CODE_20EC71:        LDA #$00                  
CODE_20EC73:        STA $BD                   
CODE_20EC75:        LDY #$01                  
CODE_20EC77:        JMP CODE_20EC22           

CODE_20EC7A:        LDA $0425                 
CODE_20EC7D:        BEQ CODE_20EC82           
CODE_20EC7F:        JMP CODE_20ED06           

CODE_20EC82:        LDA #$FE                  
CODE_20EC84:        LDX #$01                  
CODE_20EC86:        LDY $9D                   
CODE_20EC88:        BMI CODE_20EC8D           
CODE_20EC8A:        LDA #$02                  
CODE_20EC8C:        DEX                       
CODE_20EC8D:        STA $0780                 
CODE_20EC90:        CLC                       
CODE_20EC91:        ADC $0216                 
CODE_20EC94:        STA $0216                 
CODE_20EC97:        STA $0543                 
CODE_20EC9A:        LDY $9D                   
CODE_20EC9C:        BPL CODE_20ECA4           
CODE_20EC9E:        BCS CODE_20ECBF                   
CODE_20ECA0:        LDA #$00                  
CODE_20ECA2:        BEQ CODE_20ECAA           
CODE_20ECA4:        CMP #$EF                  
CODE_20ECA6:        BCC CODE_20ECBF           
CODE_20ECA8:        LDA #$EF                  
CODE_20ECAA:        STA $0216                 
CODE_20ECAD:        LDA #$01                  
CODE_20ECAF:        STA $0377                 
CODE_20ECB2:        LDY $9D                   
CODE_20ECB4:        BMI CODE_20ECB9           
CODE_20ECB6:        INC $0377                 
CODE_20ECB9:        JSL CODE_23C227           
CODE_20ECBD:        BRA CODE_20ECE8           

CODE_20ECBF:        LDA $8ACB,x               
CODE_20ECC2:        STA $09                   
CODE_20ECC4:        LDA #$08                  
CODE_20ECC6:        STA $0A                   
CODE_20ECC8:        JSL CODE_23D2B6           
CODE_20ECCC:        SEC                       
CODE_20ECCD:        SBC #$B3                  
CODE_20ECCF:        CMP #$02                  
CODE_20ECD1:        BCC CODE_20ECE8           
CODE_20ECD3:        LDA #$10                  
CODE_20ECD5:        CPX #$00                  
CODE_20ECD7:        BEQ CODE_20ECDD           
CODE_20ECD9:        DEC $55                   
CODE_20ECDB:        LDA #$F0                  
CODE_20ECDD:        CLC                       
CODE_20ECDE:        ADC $70                   
CODE_20ECE0:        AND #$F0                  
CODE_20ECE2:        STA $70                   
CODE_20ECE4:        BCC CODE_20ECE8           
CODE_20ECE6:        INC $55                   
CODE_20ECE8:        LDA $0216                 
CODE_20ECEB:        LSR A                     
CODE_20ECEC:        LSR A                     
CODE_20ECED:        STA $0218                 
CODE_20ECF0:        LDA $0216                 
CODE_20ECF3:        SEC                       
CODE_20ECF4:        SBC $0218                 
CODE_20ECF7:        STA $0218                 
CODE_20ECFA:        LDA $034F                 
CODE_20ECFD:        BEQ CODE_20ED05           
CODE_20ECFF:        LDA $0216                 
CODE_20ED02:        STA $0218                 
CODE_20ED05:        RTS                       

CODE_20ED06:        LDA $0571                 
CODE_20ED09:        AND #$03                  
CODE_20ED0B:        PHA                       
CODE_20ED0C:        TAY                       
CODE_20ED0D:        LDX #$00                  
CODE_20ED0F:        CPY #$02                  
CODE_20ED11:        BMI CODE_20ED2F           
CODE_20ED13:        LDX #$12                  
CODE_20ED15:        LDA $8ADD,y               
CODE_20ED18:        BPL CODE_20ED27           
CODE_20ED1A:        LDA $82                   
CODE_20ED1C:        CMP #$68                  
CODE_20ED1E:        LDA #$00                  
CODE_20ED20:        BCC CODE_20ED32           
CODE_20ED22:        DEC $43,x                 
CODE_20ED24:        JMP CODE_20ED2F           

CODE_20ED27:        LDA $82                   
CODE_20ED29:        CMP #$38                  
CODE_20ED2B:        LDA #$00                  
CODE_20ED2D:        BCS CODE_20ED32                   
CODE_20ED2F:        LDA $8ADD,y               
CODE_20ED32:        CLC                       
CODE_20ED33:        ADC $5E,x                 
CODE_20ED35:        AND #$FE                  
CODE_20ED37:        STA $5E,x                 
CODE_20ED39:        BCC CODE_20ED3D           
CODE_20ED3B:        INC $43,x                 
CODE_20ED3D:        AND #$0F                  
CODE_20ED3F:        TAX                       
CODE_20ED40:        CPY #$02                  
CODE_20ED42:        BMI CODE_20ED95           
CODE_20ED44:        LDA $5E                   
CODE_20ED46:        AND #$F0                  
CODE_20ED48:        ORA #$08                  
CODE_20ED4A:        STA $5E                   
CODE_20ED4C:        LDA #$01                  
CODE_20ED4E:        STA $25                   
CODE_20ED50:        LDA $8ADD,y               
CODE_20ED53:        BPL CODE_20ED5A           
CODE_20ED55:        DEC $25                   
CODE_20ED57:        DEC $0542                 
CODE_20ED5A:        STA $0780                 
CODE_20ED5D:        CLC                       
CODE_20ED5E:        ADC $0543                 
CODE_20ED61:        STA $0543                 
CODE_20ED64:        BCC CODE_20ED69           
CODE_20ED66:        INC $0542                 
CODE_20ED69:        STA $0216                 
CODE_20ED6C:        LDY $0542                 
CODE_20ED6F:        STY $0217                 
CODE_20ED72:        STY $13                   
CODE_20ED74:        STY $0219                 
CODE_20ED77:        REP #$20                  
CODE_20ED79:        LDA $0216                 
CODE_20ED7C:        LSR A                     
CODE_20ED7D:        LSR A                     
CODE_20ED7E:        STA $0218                 
CODE_20ED81:        LDA $0216                 
CODE_20ED84:        SEC                       
CODE_20ED85:        SBC $0218                 
CODE_20ED88:        STA $0218                 
CODE_20ED8B:        SEP #$20                  
CODE_20ED8D:        LDA $70                   
CODE_20ED8F:        SEC                       
CODE_20ED90:        SBC $0543                 
CODE_20ED93:        STA $82                   
CODE_20ED95:        PLA                       
CODE_20ED96:        CPX #$00                  
CODE_20ED98:        BNE CODE_20EDE0           
CODE_20ED9A:        ASL A                     
CODE_20ED9B:        ASL A                     
CODE_20ED9C:        LDX #$01                  
CODE_20ED9E:        TAY                       
CODE_20ED9F:        LDA $8ACD,y               
CODE_20EDA2:        STA $09                   
CODE_20EDA4:        LDA $8ACE,y               
CODE_20EDA7:        STA $0A                   
CODE_20EDA9:        JSL CODE_23D2B6           
CODE_20EDAD:        STA $00                   
CODE_20EDAF:        SEC                       
CODE_20EDB0:        SBC #$92                  
CODE_20EDB2:        CMP #$02                  
CODE_20EDB4:        BCS CODE_20EDB9                   
CODE_20EDB6:        JMP CODE_20EDE1           

CODE_20EDB9:        LDA $00                   
CODE_20EDBB:        CMP #$9E                  
CODE_20EDBD:        BNE CODE_20EDC2           
CODE_20EDBF:        JMP CODE_20EDE1           

CODE_20EDC2:        LDA $00                   
CODE_20EDC4:        SEC                       
CODE_20EDC5:        SBC #$50                  
CODE_20EDC7:        CMP #$04                  
CODE_20EDC9:        BCS CODE_20EDDB                   
CODE_20EDCB:        STX $00                   
CODE_20EDCD:        LDA $0571                 
CODE_20EDD0:        AND #$82                  
CODE_20EDD2:        EOR #$02                  
CODE_20EDD4:        ORA $00                   
CODE_20EDD6:        STA $0571                 
CODE_20EDD9:        LDX #$00                  
CODE_20EDDB:        INY                       
CODE_20EDDC:        INY                       
CODE_20EDDD:        DEX                       
CODE_20EDDE:        BPL CODE_20ED9F           
CODE_20EDE0:        RTS                       

CODE_20EDE1:        LDA $0571                 
CODE_20EDE4:        AND #$03                  
CODE_20EDE6:        TAY                       
CODE_20EDE7:        BNE CODE_20EDF0           
CODE_20EDE9:        LDA $5E                   
CODE_20EDEB:        CLC                       
CODE_20EDEC:        ADC #$10                  
CODE_20EDEE:        STA $5E                   
CODE_20EDF0:        LDA $8AE1,y               
CODE_20EDF3:        STA $0377                 
CODE_20EDF6:        JSL CODE_23C227           
CODE_20EDFA:        RTS                       

PNTR_20EDFB:        dw CODE_20EBD5
                    dw CODE_20EE16
                    dw CODE_20EE3F
                    dw CODE_20EE5A

CODE_20EE03:        LDA $BF                   
CODE_20EE05:        ASL A                     
CODE_20EE06:        TAX                       
CODE_20EE07:        LDA.l PNTR_20EDFB,x             
CODE_20EE0B:        STA $00                   
CODE_20EE0D:        LDA.l PNTR_20EDFB+1,x             
CODE_20EE11:        STA $01                   
CODE_20EE13:        JMP ($0000)               

CODE_20EE16:        LDA $0544                 
CODE_20EE19:        BNE CODE_20EE23           
CODE_20EE1B:        LDA $82                   
CODE_20EE1D:        AND #$F0                  
CODE_20EE1F:        CMP #$B0                  
CODE_20EE21:        BEQ CODE_20EE2E           
CODE_20EE23:        LDA $0510                 
CODE_20EE26:        BNE CODE_20EE2B           
CODE_20EE28:        JMP CODE_20EEDF           

CODE_20EE2B:        JMP CODE_20EEE9           

CODE_20EE2E:        LDA $0510                 
CODE_20EE31:        BNE CODE_20EE38           
CODE_20EE33:        LDA #$40                  
CODE_20EE35:        STA $0510                 
CODE_20EE38:        CMP #$01                  
CODE_20EE3A:        BNE CODE_20EE3E           
CODE_20EE3C:        BEQ CODE_20EE44           
CODE_20EE3E:        RTS                       

CODE_20EE3F:        LDA $0510                 
CODE_20EE42:        BNE CODE_20EE4B           
CODE_20EE44:        INC $14                   
CODE_20EE46:        LDA #$01                  
CODE_20EE48:        STA $0713                 
CODE_20EE4B:        RTS                       

DATA_20EE4C:        db $00,$02,$04,$06,$FF,$2C,$2E

DATA_20EE53:        db $60,$68,$70,$78,$80,$88,$90

CODE_20EE5A:        LDA $0544
CODE_20EE5D:        BNE CODE_20EE67
CODE_20EE5F:        LDA $82                   
CODE_20EE61:        AND #$F0                  
CODE_20EE63:        CMP #$B0                  
CODE_20EE65:        BEQ CODE_20EE72           
CODE_20EE67:        LDA $0510                 
CODE_20EE6A:        BNE CODE_20EE6F           
CODE_20EE6C:        JMP CODE_20EEDF           

CODE_20EE6F:        JMP CODE_20EEE9           

CODE_20EE72:        DEC $53                   
CODE_20EE74:        LDA $52                   
CODE_20EE76:        CMP #$60                  
CODE_20EE78:        BCC CODE_20EE84           
CODE_20EE7A:        CLC                       
CODE_20EE7B:        ADC $53                   
CODE_20EE7D:        STA $52                   
CODE_20EE7F:        LDA #$70                  
CODE_20EE81:        STA $0510                 
CODE_20EE84:        LDA $0510                 
CODE_20EE87:        BEQ CODE_20EE44           
CODE_20EE89:        LDA #$A2                  
CODE_20EE8B:        STA $BC                   
CODE_20EE8D:        JSL CODE_22E000           
CODE_20EE91:        LDX #$06                  
CODE_20EE93:        LDY $C4                   
CODE_20EE95:        LDA.l DATA_20EE4C,x             
CODE_20EE99:        CMP #$FF                  
CODE_20EE9B:        BEQ CODE_20EEB3           
CODE_20EE9D:        STA $0802,y               
CODE_20EEA0:        INC A                     
CODE_20EEA1:        STA $0806,y               
CODE_20EEA4:        LDA $52                   
CODE_20EEA6:        CMP #$E0                  
CODE_20EEA8:        BCS CODE_20EEB3                   
CODE_20EEAA:        STA $0801,y               
CODE_20EEAD:        CLC                       
CODE_20EEAE:        ADC #$08                  
CODE_20EEB0:        STA $0805,y               
CODE_20EEB3:        LDA.l DATA_20EE53,x             
CODE_20EEB7:        STA $0800,y               
CODE_20EEBA:        STA $0804,y               
CODE_20EEBD:        LDA #$32                  
CODE_20EEBF:        STA $0803,y               
CODE_20EEC2:        STA $0807,y               
CODE_20EEC5:        PHY                       
CODE_20EEC6:        TYA                       
CODE_20EEC7:        LSR A                     
CODE_20EEC8:        LSR A                     
CODE_20EEC9:        TAY                       
CODE_20EECA:        LDA #$00                  
CODE_20EECC:        STA $0A20,y               
CODE_20EECF:        STA $0A21,y               
CODE_20EED2:        PLY                       
CODE_20EED3:        INY                       
CODE_20EED4:        INY                       
CODE_20EED5:        INY                       
CODE_20EED6:        INY                       
CODE_20EED7:        INY                       
CODE_20EED8:        INY                       
CODE_20EED9:        INY                       
CODE_20EEDA:        INY                       
CODE_20EEDB:        DEX                       
CODE_20EEDC:        BPL CODE_20EE95           
CODE_20EEDE:        RTS                       

CODE_20EEDF:        INC $9D                   
CODE_20EEE1:        INC $9D                   
CODE_20EEE3:        LDX #$00                  
CODE_20EEE5:        JSL CODE_23DEA3           
CODE_20EEE9:        LDA #$96                  
CODE_20EEEB:        STA $BC                   
CODE_20EEED:        JSL CODE_20E237           
CODE_20EEF1:        RTS                       

CODE_20EEF2:        LDA $0571                 
CODE_20EEF5:        AND #$01                  
CODE_20EEF7:        TAY                       
CODE_20EEF8:        LDA $8AC1,y               
CODE_20EEFB:        STA $8B                   
CODE_20EEFD:        JSL CODE_23DE53           
CODE_20EF01:        DEC $70                   
CODE_20EF03:        DEC $70                   
CODE_20EF05:        LDA $15                   
CODE_20EF07:        AND #$0C                  
CODE_20EF09:        LSR A                     
CODE_20EF0A:        LSR A                     
CODE_20EF0B:        STA $00                   
CODE_20EF0D:        JSR CODE_20EB89           
CODE_20EF10:        INC $70                   
CODE_20EF12:        INC $70                   
CODE_20EF14:        RTS                       

CODE_20EF15:        LDA $0571                 
CODE_20EF18:        AND #$01                  
CODE_20EF1A:        TAY                       
CODE_20EF1B:        LDA $8AC3,y               
CODE_20EF1E:        STA $9D                   
CODE_20EF20:        JSL CODE_23DEA3           
CODE_20EF24:        JSL CODE_23DDBB           
CODE_20EF28:        JSL CODE_20E237           
CODE_20EF2C:        RTS                       

CODE_20EF2D:        LDA #$00                  
CODE_20EF2F:        STA $0571                 
CODE_20EF32:        STA $8B                   
CODE_20EF34:        STA $9D                   
CODE_20EF36:        STA $A6                   
CODE_20EF38:        RTS                       

CODE_20EF39:        DEC $0554                 
CODE_20EF3C:        AND #$0C                  
CODE_20EF3E:        LSR A                     
CODE_20EF3F:        LSR A                     
CODE_20EF40:        TAY                       
CODE_20EF41:        LDA $8AE5,y               
CODE_20EF44:        STA $01                   
CODE_20EF46:        REP #$10                  
CODE_20EF48:        LDY $C4                   
CODE_20EF4A:        LDA #$C2                  
CODE_20EF4C:        STA $00                   
CODE_20EF4E:        LDA $82                   
CODE_20EF50:        CLC                       
CODE_20EF51:        ADC #$08                  
CODE_20EF53:        STA $0801,y               
CODE_20EF56:        CLC                       
CODE_20EF57:        ADC #$08                  
CODE_20EF59:        STA $0805,y               
CODE_20EF5C:        LDA $0070                 
CODE_20EF5F:        SEC                       
CODE_20EF60:        SBC $0216                 
CODE_20EF63:        LDA $0055                 
CODE_20EF66:        SBC $0217                 
CODE_20EF69:        BPL CODE_20EF73           
CODE_20EF6B:        LDA #$F0                  
CODE_20EF6D:        STA $0801,y               
CODE_20EF70:        STA $0805,y               
CODE_20EF73:        LDA $01                   
CODE_20EF75:        STA $0802,y               
CODE_20EF78:        INC A                     
CODE_20EF79:        STA $0806,y               
CODE_20EF7C:        PHX                       
CODE_20EF7D:        LDA #$20                  
CODE_20EF7F:        LDX $0588                 
CODE_20EF82:        BEQ CODE_20EF86           
CODE_20EF84:        LDA #$10                  
CODE_20EF86:        ORA $00                   
CODE_20EF88:        STA $0803,y               
CODE_20EF8B:        STA $0807,y               
CODE_20EF8E:        AND #$80                  
CODE_20EF90:        BEQ CODE_20EFA0           
CODE_20EF92:        LDA $0802,y               
CODE_20EF95:        PHA                       
CODE_20EF96:        LDA $0806,y               
CODE_20EF99:        STA $0802,y               
CODE_20EF9C:        PLA                       
CODE_20EF9D:        STA $0806,y               
CODE_20EFA0:        PLX                       
CODE_20EFA1:        LDA $5E                   
CODE_20EFA3:        SEC                       
CODE_20EFA4:        SBC $0210                 
CODE_20EFA7:        STA $0800,y               
CODE_20EFAA:        STA $0804,y               
CODE_20EFAD:        LDA $00                   
CODE_20EFAF:        AND #$F0                  
CODE_20EFB1:        BEQ CODE_20EFBF           
CODE_20EFB3:        LDA $0800,y               
CODE_20EFB6:        CLC                       
CODE_20EFB7:        ADC #$08                  
CODE_20EFB9:        STA $0800,y               
CODE_20EFBC:        STA $0804,y               
CODE_20EFBF:        PHY                       
CODE_20EFC0:        REP #$20                  
CODE_20EFC2:        TYA                       
CODE_20EFC3:        LSR A                     
CODE_20EFC4:        LSR A                     
CODE_20EFC5:        TAY                       
CODE_20EFC6:        SEP #$20                  
CODE_20EFC8:        LDA #$00                  
CODE_20EFCA:        STA $0A20,y               
CODE_20EFCD:        STA $0A21,y               
CODE_20EFD0:        PLY                       
CODE_20EFD1:        INY                       
CODE_20EFD2:        INY                       
CODE_20EFD3:        INY                       
CODE_20EFD4:        INY                       
CODE_20EFD5:        INY                       
CODE_20EFD6:        INY                       
CODE_20EFD7:        INY                       
CODE_20EFD8:        INY                       
CODE_20EFD9:        LDA $00                   
CODE_20EFDB:        SEC                       
CODE_20EFDC:        SBC #$C0                  
CODE_20EFDE:        STA $00                   
CODE_20EFE0:        BCC CODE_20EFE5           
CODE_20EFE2:        JMP CODE_20EF4E           

CODE_20EFE5:        SEP #$10                  
CODE_20EFE7:        RTS                       

DATA_20EFE8:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_20F000:        LDA $4210                 
CODE_20F003:        LDA $02                   
CODE_20F005:        PHA                       
CODE_20F006:        LDA #$80                  
CODE_20F008:        STA $2100                 
CODE_20F00B:        STZ $420C                 
CODE_20F00E:        LDA $021E                 
CODE_20F011:        STA $2101                 
CODE_20F014:        LDA $0427                 
CODE_20F017:        BEQ CODE_20F02A           
CODE_20F019:        AND #$7F                  
CODE_20F01B:        TAX                       
CODE_20F01C:        LDA $21CEC3,x             
CODE_20F020:        STA $0100                 
CODE_20F023:        LDA $21CECB,x             
CODE_20F027:        STA $0101                 
CODE_20F02A:        LDA $7E3955               
CODE_20F02E:        BEQ CODE_20F033           
CODE_20F030:        JMP CODE_20F0BA           

CODE_20F033:        LDA $0100                 
CODE_20F036:        BNE CODE_20F03B           
CODE_20F038:        JMP CODE_20F11A           

CODE_20F03B:        CMP #$80                  
CODE_20F03D:        BNE CODE_20F042           
CODE_20F03F:        JMP CODE_20F0CF           

CODE_20F042:        CMP #$40                  
CODE_20F044:        BNE CODE_20F049           
CODE_20F046:        JMP CODE_20F25A           

CODE_20F049:        CMP #$A0                  
CODE_20F04B:        BNE CODE_20F050           
CODE_20F04D:        JMP CODE_20F141           

CODE_20F050:        CMP #$20                  
CODE_20F052:        BNE CODE_20F057           
CODE_20F054:        JMP CODE_20F18C           

CODE_20F057:        CMP #$95                  
CODE_20F059:        BNE CODE_20F05E           
CODE_20F05B:        JMP CODE_20F1C0           

CODE_20F05E:        JSR CODE_20F650           
CODE_20F061:        LDA $0154                 
CODE_20F064:        BNE CODE_20F08F           
CODE_20F066:        JSL CODE_29E953           
CODE_20F06A:        LDA $02BB                 
CODE_20F06D:        BEQ CODE_20F074           
CODE_20F06F:        JSR CODE_20FF06           
CODE_20F072:        STZ $28                   
CODE_20F074:        JSL CODE_29E8AB           
CODE_20F078:        JSL CODE_29EA69           
CODE_20F07C:        LDA $28                   
CODE_20F07E:        BNE CODE_20F08D           
CODE_20F080:        STZ $1600                 
CODE_20F083:        STZ $1601                 
CODE_20F086:        DEC A                     
CODE_20F087:        STA $1602                 
CODE_20F08A:        STA $1603                 
CODE_20F08D:        STZ $28                   
CODE_20F08F:        JSR CODE_20F20B           
CODE_20F092:        JSR CODE_20FCBF           
CODE_20F095:        LDA $4211                 
CODE_20F098:        LDA #$C0                  
CODE_20F09A:        STA $4209                 
CODE_20F09D:        STZ $420A                 
CODE_20F0A0:        STZ $4207                 
CODE_20F0A3:        STZ $4208                 
CODE_20F0A6:        LDA #$A1                  
CODE_20F0A8:        STA $4200                 
CODE_20F0AB:        CLI                       
CODE_20F0AC:        LDA $1C                   
CODE_20F0AE:        BEQ CODE_20F0BA           
CODE_20F0B0:        JSR CODE_20FB5E           
CODE_20F0B3:        JSL CODE_22E103           
CODE_20F0B7:        DEC $0154                 
CODE_20F0BA:        INC $15                   
CODE_20F0BC:        LDA $16                   
CODE_20F0BE:        STA $2100                 
CODE_20F0C1:        LDA $0293                 
CODE_20F0C4:        STA $420C                 
CODE_20F0C7:        JSL CODE_22E677           
CODE_20F0CB:        PLA                       
CODE_20F0CC:        STA $02                   
CODE_20F0CE:        RTL                       

CODE_20F0CF:        JSR CODE_20F650           
CODE_20F0D2:        LDA $0154                 
CODE_20F0D5:        BNE CODE_20F0FA           
CODE_20F0D7:        JSL CODE_29EA32           
CODE_20F0DB:        JSL CODE_29E9F8           
CODE_20F0DF:        JSL CODE_29E8AB           
CODE_20F0E3:        JSL CODE_29EA69           
CODE_20F0E7:        LDA $28                   
CODE_20F0E9:        BNE CODE_20F0F8           
CODE_20F0EB:        STZ $1600                 
CODE_20F0EE:        STZ $1601                 
CODE_20F0F1:        DEC A                     
CODE_20F0F2:        STA $1602                 
CODE_20F0F5:        STA $1603                 
CODE_20F0F8:        STZ $28                   
CODE_20F0FA:        JSR CODE_20F20B           
CODE_20F0FD:        JSR CODE_20FBC5           
CODE_20F100:        LDA $4211                 
CODE_20F103:        LDA #$C0                  
CODE_20F105:        STA $4209                 
CODE_20F108:        STZ $420A                 
CODE_20F10B:        STZ $4207                 
CODE_20F10E:        STZ $4208                 
CODE_20F111:        LDA #$A1                  
CODE_20F113:        STA $4200                 
CODE_20F116:        CLI                       
CODE_20F117:        JMP CODE_20F0AC           
CODE_20F11A:        JSR CODE_20F650           
CODE_20F11D:        LDA $20                   
CODE_20F11F:        BEQ CODE_20F121           
CODE_20F121:        JSR CODE_20F20B           
CODE_20F124:        JSR CODE_20FCBF           
CODE_20F127:        LDA $4211                 
CODE_20F12A:        LDA #$C0                  
CODE_20F12C:        STA $4209                 
CODE_20F12F:        STZ $420A                 
CODE_20F132:        STZ $4207                 
CODE_20F135:        STZ $4208                 
CODE_20F138:        LDA #$A1                  
CODE_20F13A:        STA $4200                 
CODE_20F13D:        CLI                       
CODE_20F13E:        JMP CODE_20F0B7           

CODE_20F141:        JSR CODE_20F650           
CODE_20F144:        LDA $0154                 
CODE_20F147:        BNE CODE_20F16C           
CODE_20F149:        JSL CODE_29E953           
CODE_20F14D:        JSL CODE_29E9A3           
CODE_20F151:        JSL CODE_29E8AB           
CODE_20F155:        JSL CODE_29EA69           
CODE_20F159:        LDA $28                   
CODE_20F15B:        BNE CODE_20F16A           
CODE_20F15D:        STZ $1600                 
CODE_20F160:        STZ $1601                 
CODE_20F163:        DEC A                     
CODE_20F164:        STA $1602                 
CODE_20F167:        STA $1603                 
CODE_20F16A:        STZ $28                   
CODE_20F16C:        JSR CODE_20F20B           
CODE_20F16F:        JSR CODE_20FBC5           
CODE_20F172:        LDA $4211                 
CODE_20F175:        LDA #$A0                  
CODE_20F177:        STA $4209                 
CODE_20F17A:        STZ $420A                 
CODE_20F17D:        STZ $4207                 
CODE_20F180:        STZ $4208                 
CODE_20F183:        LDA #$A1                  
CODE_20F185:        STA $4200                 
CODE_20F188:        CLI                       
CODE_20F189:        JMP CODE_20F0AC           

CODE_20F18C:        JSR CODE_20F650           
CODE_20F18F:        LDA $0154                 
CODE_20F192:        BNE CODE_20F1B4           
CODE_20F194:        LDA $C2                   
CODE_20F196:        BEQ CODE_20F19D           
CODE_20F198:        JSR CODE_20CF69           
CODE_20F19B:        BRA CODE_20F1B4           

CODE_20F19D:        JSL CODE_29E8AB           
CODE_20F1A1:        LDA $28                   
CODE_20F1A3:        BNE CODE_20F1B2           
CODE_20F1A5:        STZ $1600                 
CODE_20F1A8:        STZ $1601                 
CODE_20F1AB:        DEC A                     
CODE_20F1AC:        STA $1602                 
CODE_20F1AF:        STA $1603                 
CODE_20F1B2:        STZ $28                   
CODE_20F1B4:        JSR CODE_20CFDC           
CODE_20F1B7:        JSR CODE_20F20B           
CODE_20F1BA:        JSR CODE_20FBC5           
CODE_20F1BD:        JMP CODE_20F0AC           

CODE_20F1C0:        JSR CODE_20F650           
CODE_20F1C3:        LDA $0154                 
CODE_20F1C6:        BNE CODE_20F1EB           
CODE_20F1C8:        JSL CODE_29E953           
CODE_20F1CC:        JSL CODE_29E9A3           
CODE_20F1D0:        JSL CODE_29E8AB           
CODE_20F1D4:        JSL CODE_29EA69           
CODE_20F1D8:        LDA $28                   
CODE_20F1DA:        BNE CODE_20F1E9           
CODE_20F1DC:        STZ $1600                 
CODE_20F1DF:        STZ $1601                 
CODE_20F1E2:        DEC A                     
CODE_20F1E3:        STA $1602                 
CODE_20F1E6:        STA $1603                 
CODE_20F1E9:        STZ $28                   
CODE_20F1EB:        JSR CODE_20F20B           
CODE_20F1EE:        JSR CODE_20FCBF           
CODE_20F1F1:        LDA $4211                 
CODE_20F1F4:        LDA #$91                  
CODE_20F1F6:        STA $4209                 
CODE_20F1F9:        STZ $420A                 
CODE_20F1FC:        STZ $4207                 
CODE_20F1FF:        STZ $4208                 
CODE_20F202:        LDA #$A1                  
CODE_20F204:        STA $4200                 
CODE_20F207:        CLI                       
CODE_20F208:        JMP CODE_20F0AC           

CODE_20F20B:        PHD                       ;Hardware register mirrors related to screen settings
CODE_20F20C:        LDA #$21                  ;\
CODE_20F20E:        XBA                       ; |Set direct page to $2100
CODE_20F20F:        LDA #$00                  ; |
CODE_20F211:        TCD                       ;/
CODE_20F212:        LDA $0200                 ;\ Window Mask Settings for BG1 and BG2
CODE_20F215:        STA $23                   ;/
CODE_20F217:        LDA $0201                 ;\ Window Mask Settings for BG3 and BG4
CODE_20F21A:        STA $24                   ;/
CODE_20F21C:        LDA $0202                 ;\ Window Mask Settings for OBJ and Color Window
CODE_20F21F:        STA $25                   ;/
CODE_20F221:        LDA $0203                 ;\ Color Addition Select
CODE_20F224:        STA $30                   ;/
CODE_20F226:        LDA $0204                 ;\ Color math designation
CODE_20F229:        STA $31                   ;/
CODE_20F22B:        LDA $0205                 ;\ Fixed Color Data
CODE_20F22E:        STA $32                   ;/
CODE_20F230:        LDA $0206                 ;\ Fixed Color Data
CODE_20F233:        STA $32                   ;/
CODE_20F235:        LDA $0207                 ;\ Fixed Color Data
CODE_20F238:        STA $32                   ;/
CODE_20F23A:        LDA $0208                 ;\ Main Screen Designation
CODE_20F23D:        STA $2C                   ;/
CODE_20F23F:        LDA $0209                 ;\ Subscreen Designation
CODE_20F242:        STA $2D                   ;/
CODE_20F244:        LDA $020A                 ;\ Window Mask Designation for the Main Screen
CODE_20F247:        STA $2E                   ;/
CODE_20F249:        LDA $020B                 ;\ Window Mask Designation for the Subscreen
CODE_20F24C:        STA $2F                   ;/
CODE_20F24E:        LDA $020D                 ;\ Screen Pixelation
CODE_20F251:        STA $06                   ;/
CODE_20F253:        LDA $020C                 ;\ BG Mode and Character Size
CODE_20F256:        STA $05                   ;/
CODE_20F258:        PLD                       ;\Recover original direct page, then return
CODE_20F259:        RTS                       ;/

CODE_20F25A:        JSR CODE_20F64C           
CODE_20F25D:        LDA.l PNTR_2282BB               
CODE_20F261:        STA $36                   
CODE_20F263:        LDA.l PNTR_2282BB+1
CODE_20F267:        STA $37                   
CODE_20F269:        LDA.l PNTR_2282BB+2               
CODE_20F26D:        STA $38                   
CODE_20F26F:        JSL CODE_29E8AB           
CODE_20F273:        STZ $28                   
CODE_20F275:        REP #$20                  
CODE_20F277:        STZ $1600                 
CODE_20F27A:        LDA #$FFFF                
CODE_20F27D:        STA $1602                 
CODE_20F280:        SEP #$20                  
CODE_20F282:        JSR CODE_20F20B           
CODE_20F285:        LDA $0210                 
CODE_20F288:        STA $210D                 
CODE_20F28B:        LDA $0211                 
CODE_20F28E:        STA $210D                 
CODE_20F291:        LDA $0216                 
CODE_20F294:        STA $210E                 
CODE_20F297:        LDA $0217                 
CODE_20F29A:        STA $210E                 
CODE_20F29D:        LDA $0212                 
CODE_20F2A0:        STA $210F                 
CODE_20F2A3:        LDA $0213                 
CODE_20F2A6:        STA $210F                 
CODE_20F2A9:        LDA $0218                 
CODE_20F2AC:        STA $2110                 
CODE_20F2AF:        LDA $0219                 
CODE_20F2B2:        STA $2110                 
CODE_20F2B5:        LDA $4211                 
CODE_20F2B8:        LDA #$28                  
CODE_20F2BA:        STA $4209                 
CODE_20F2BD:        STZ $420A                 
CODE_20F2C0:        STZ $4207                 
CODE_20F2C3:        STZ $4208                 
CODE_20F2C6:        LDA #$A1                  
CODE_20F2C8:        STA $4200                 
CODE_20F2CB:        CLI                       
CODE_20F2CC:        LDX #$00                  
CODE_20F2CE:        LDY #$02                  
CODE_20F2D0:        LDA $0782                 
CODE_20F2D3:        AND #$02                  
CODE_20F2D5:        STA $00                   
CODE_20F2D7:        LDA $0783                 
CODE_20F2DA:        AND #$02                  
CODE_20F2DC:        EOR $00                   
CODE_20F2DE:        CLC                       
CODE_20F2DF:        BEQ CODE_20F2E2           
CODE_20F2E1:        SEC                       
CODE_20F2E2:        ROR $0782,x               
CODE_20F2E5:        INX                       
CODE_20F2E6:        DEY                       
CODE_20F2E7:        BNE CODE_20F2E2           
CODE_20F2E9:        JSR CODE_20FB5E           
CODE_20F2EC:        JSL CODE_239953           
CODE_20F2F0:        INC $15                   
CODE_20F2F2:        LDA $16                   
CODE_20F2F4:        STA $2100                 
CODE_20F2F7:        LDA $0293                 
CODE_20F2FA:        STA $420C                 
CODE_20F2FD:        JSL CODE_29EAA5           
CODE_20F301:        JMP CODE_20F0C7           

CODE_20F304:        LDA $4211                 
CODE_20F307:        BMI CODE_20F30C           
CODE_20F309:        JMP CODE_20F38E           

CODE_20F30C:        LDA #$21                  
CODE_20F30E:        XBA                       
CODE_20F30F:        LDA #$00                  
CODE_20F311:        TCD                       
CODE_20F312:        LDA $0101                 
CODE_20F315:        CMP #$80                  
CODE_20F317:        BNE CODE_20F31C           
CODE_20F319:        JMP CODE_20F38E           

CODE_20F31C:        CMP #$40                  
CODE_20F31E:        BNE CODE_20F323           
CODE_20F320:        JMP CODE_20F392           

CODE_20F323:        CMP #$20                  
CODE_20F325:        BNE CODE_20F32A           
CODE_20F327:        JMP CODE_20F4C3           

CODE_20F32A:        CMP #$60                  
CODE_20F32C:        BNE CODE_20F331           
CODE_20F32E:        JMP CODE_20F408           

CODE_20F331:        CMP #$A0                  
CODE_20F333:        BNE CODE_20F338           
CODE_20F335:        JMP CODE_20F462           

CODE_20F338:        CMP #$55                  
CODE_20F33A:        BNE CODE_20F33F           
CODE_20F33C:        JMP CODE_20F4C6           

CODE_20F33F:        CMP #$75                  
CODE_20F341:        BNE CODE_20F346           
CODE_20F343:        JMP CODE_20F4F4           

CODE_20F346:        CMP #$95                  
CODE_20F348:        BNE CODE_20F34D           
CODE_20F34A:        JMP CODE_20F528           

CODE_20F34D:        LDA $0425                 
CODE_20F350:        BEQ CODE_20F352           
CODE_20F352:        BIT $4212                 
CODE_20F355:        BVC CODE_20F352                   
CODE_20F357:        LDA #$80                  
CODE_20F359:        STA $00                   
CODE_20F35B:        STZ $420C                 
CODE_20F35E:        STZ $23                   
CODE_20F360:        STZ $24                   
CODE_20F362:        STZ $2F                   
CODE_20F364:        BIT $4212                 
CODE_20F367:        BVC CODE_20F364                   
CODE_20F369:        LDA $020E                 
CODE_20F36C:        STA $05                   
CODE_20F36E:        LDA $020F                 
CODE_20F371:        STA $2C                   
CODE_20F373:        LDA #$20                  
CODE_20F375:        STA $31                   
CODE_20F377:        STZ $0D                   
CODE_20F379:        LDA #$01                  
CODE_20F37B:        STA $0D                   
CODE_20F37D:        STZ $0E                   
CODE_20F37F:        STA $0E                   
CODE_20F381:        BIT $4212                 
CODE_20F384:        BVC CODE_20F381                   
CODE_20F386:        LDA $0016                 
CODE_20F389:        STA $00                   
CODE_20F38B:        INC $021C                 
CODE_20F38E:        RTL                       

CODE_20F38F:        JMP CODE_20F38E           

CODE_20F392:        LDX $037C                 
CODE_20F395:        BNE CODE_20F3E6           
CODE_20F397:        BIT $4212                 
CODE_20F39A:        BVC CODE_20F397                   
CODE_20F39C:        LDA #$EF                  
CODE_20F39E:        STA $0E                   
CODE_20F3A0:        LDA #$00                  
CODE_20F3A2:        STA $0E                   
CODE_20F3A4:        LDA $0210                 
CODE_20F3A7:        STA $0D                   
CODE_20F3A9:        LDA $0211                 
CODE_20F3AC:        STA $0D                   
CODE_20F3AE:        LDA $4211                 
CODE_20F3B1:        LDA #$C0                  
CODE_20F3B3:        STA $4209                 
CODE_20F3B6:        STZ $420A                 
CODE_20F3B9:        STZ $4207                 
CODE_20F3BC:        STZ $4208                 
CODE_20F3BF:        LDA $0727                 
CODE_20F3C2:        CMP #$07                  
CODE_20F3C4:        BNE CODE_20F3DF           
CODE_20F3C6:        LDA $7E3977               
CODE_20F3CA:        BNE CODE_20F3DF           
CODE_20F3CC:        BIT $4212                 
CODE_20F3CF:        BVC CODE_20F3CC                   
CODE_20F3D1:        LDA $0208                 
CODE_20F3D4:        AND #$0F                  
CODE_20F3D6:        STA $2C                   
CODE_20F3D8:        LDA $0209                 
CODE_20F3DB:        ORA #$10                  
CODE_20F3DD:        STA $2D                   
CODE_20F3DF:        INX                       
CODE_20F3E0:        STX $037C                 
CODE_20F3E3:        JMP CODE_20F38E           

CODE_20F3E6:        BIT $4212                 
CODE_20F3E9:        BVC CODE_20F3E6                   
CODE_20F3EB:        LDA $020E                 
CODE_20F3EE:        STA $05                   
CODE_20F3F0:        LDA $020F                 
CODE_20F3F3:        STA $2C                   
CODE_20F3F5:        STZ $0D                   
CODE_20F3F7:        LDA #$01                  
CODE_20F3F9:        STA $0D                   
CODE_20F3FB:        STZ $0E                   
CODE_20F3FD:        STA $0E                   
CODE_20F3FF:        STZ $037C                 
CODE_20F402:        INC $021C                 
CODE_20F405:        JMP CODE_20F38E           

CODE_20F408:        LDX $037C                 
CODE_20F40B:        CPX #$03                  
CODE_20F40D:        BEQ CODE_20F440           
CODE_20F40F:        BIT $4212                 
CODE_20F412:        BVC CODE_20F40F                   
CODE_20F414:        LDA #$00                  
CODE_20F416:        STA $0E                   
CODE_20F418:        STA $0E                   
CODE_20F41A:        LDA $1000,x               
CODE_20F41D:        STA $0D                   
CODE_20F41F:        LDA $1003,x               
CODE_20F422:        AND #$01                  
CODE_20F424:        STA $0D                   
CODE_20F426:        LDA $4211                 
CODE_20F429:        LDA $21CEE4,x             
CODE_20F42D:        STA $4209                 
CODE_20F430:        STZ $420A                 
CODE_20F433:        STZ $4207                 
CODE_20F436:        STZ $4208                 
CODE_20F439:        INX                       
CODE_20F43A:        STX $037C                 
CODE_20F43D:        JMP CODE_20F38E           

CODE_20F440:        BIT $4212                 
CODE_20F443:        BVC CODE_20F440                   
CODE_20F445:        LDA $020E                 
CODE_20F448:        STA $05                   
CODE_20F44A:        LDA $020F                 
CODE_20F44D:        STA $2C                   
CODE_20F44F:        STZ $0D                   
CODE_20F451:        LDA #$01                  
CODE_20F453:        STA $0D                   
CODE_20F455:        STZ $0E                   
CODE_20F457:        STA $0E                   
CODE_20F459:        STZ $037C                 
CODE_20F45C:        INC $021C                 
CODE_20F45F:        JMP CODE_20F38E           

CODE_20F462:        LDA $037C                 
CODE_20F465:        BNE CODE_20F495           
CODE_20F467:        BIT $4212                 
CODE_20F46A:        BVC CODE_20F467                   
CODE_20F46C:        LDA #$EF                  
CODE_20F46E:        STA $0E                   
CODE_20F470:        LDA #$00                  
CODE_20F472:        STA $0E                   
CODE_20F474:        LDA $0210                 
CODE_20F477:        STA $0D                   
CODE_20F479:        LDA $0211                 
CODE_20F47C:        STA $0D                   
CODE_20F47E:        LDA $4211                 
CODE_20F481:        LDA #$C0                  
CODE_20F483:        STA $4209                 
CODE_20F486:        STZ $420A                 
CODE_20F489:        STZ $4207                 
CODE_20F48C:        STZ $4208                 
CODE_20F48F:        INC $037C                 
CODE_20F492:        JMP CODE_20F38E           

CODE_20F495:        BIT $4212                 
CODE_20F498:        BVC CODE_20F495                   
CODE_20F49A:        LDA $020E                 
CODE_20F49D:        STA $05                   
CODE_20F49F:        LDA $020F                 
CODE_20F4A2:        STA $2C                   
CODE_20F4A4:        LDA #$20                  
CODE_20F4A6:        STA $31                   
CODE_20F4A8:        STZ $23                   
CODE_20F4AA:        STZ $2F                   
CODE_20F4AC:        STZ $037C                 
CODE_20F4AF:        STZ $210D                 
CODE_20F4B2:        LDA #$01                  
CODE_20F4B4:        STA $210D                 
CODE_20F4B7:        STZ $210E                 
CODE_20F4BA:        STA $210E                 
CODE_20F4BD:        INC $021C                 
CODE_20F4C0:        JMP CODE_20F38E           

CODE_20F4C3:        JMP CODE_20F38E           

CODE_20F4C6:        LDA $037C                 
CODE_20F4C9:        BNE CODE_20F495           
CODE_20F4CB:        REP #$20                  
CODE_20F4CD:        LDA $0210                 
CODE_20F4D0:        LSR A                     
CODE_20F4D1:        SEP #$20                  
CODE_20F4D3:        BIT $4212                 
CODE_20F4D6:        BVC CODE_20F4D3                   
CODE_20F4D8:        STA $0D                   
CODE_20F4DA:        XBA                       
CODE_20F4DB:        STA $0D                   
CODE_20F4DD:        LDA $4211                 
CODE_20F4E0:        LDA #$C0                  
CODE_20F4E2:        STA $4209                 
CODE_20F4E5:        STZ $420A                 
CODE_20F4E8:        STZ $4207                 
CODE_20F4EB:        STZ $4208                 
CODE_20F4EE:        INC $037C                 
CODE_20F4F1:        JMP CODE_20F38E           

CODE_20F4F4:        LDA $037C                 
CODE_20F4F7:        BNE CODE_20F55F           
CODE_20F4F9:        REP #$20                  
CODE_20F4FB:        LDA $0210                 
CODE_20F4FE:        LSR A                     
CODE_20F4FF:        SEP #$20                  
CODE_20F501:        BIT $4212                 
CODE_20F504:        BVC CODE_20F501                   
CODE_20F506:        STA $0D                   
CODE_20F508:        XBA                       
CODE_20F509:        STA $0D                   
CODE_20F50B:        LDA #$EF                  
CODE_20F50D:        STA $0E                   
CODE_20F50F:        STZ $0E                   
CODE_20F511:        LDA $4211                 
CODE_20F514:        LDA #$C0                  
CODE_20F516:        STA $4209                 
CODE_20F519:        STZ $420A                 
CODE_20F51C:        STZ $4207                 
CODE_20F51F:        STZ $4208                 
CODE_20F522:        INC $037C                 
CODE_20F525:        JMP CODE_20F38E           

CODE_20F528:        LDX $037C                 
CODE_20F52B:        CPX #$08                  
CODE_20F52D:        BCS CODE_20F55F                   
CODE_20F52F:        INC $037C                 
CODE_20F532:        INC $037C                 
CODE_20F535:        BIT $4212                 
CODE_20F538:        BVC CODE_20F535                   
CODE_20F53A:        LDA $0357,x               
CODE_20F53D:        STA $11                   
CODE_20F53F:        LDA $0358,x               
CODE_20F542:        AND #$01                  
CODE_20F544:        STA $11                   
CODE_20F546:        TXA                       
CODE_20F547:        LSR A                     
CODE_20F548:        TAX                       
CODE_20F549:        LDA $4211                 
CODE_20F54C:        LDA $21CEE8,x             
CODE_20F550:        STA $4209                 
CODE_20F553:        STZ $420A                 
CODE_20F556:        STZ $4207                 
CODE_20F559:        STZ $4208                 
CODE_20F55C:        JMP CODE_20F38E           

CODE_20F55F:        BIT $4212                 
CODE_20F562:        BVC CODE_20F55F                   
CODE_20F564:        STZ $0D                   
CODE_20F566:        LDA #$01                  
CODE_20F568:        STA $0D                   
CODE_20F56A:        STZ $0E                   
CODE_20F56C:        STA $0E                   
CODE_20F56E:        LDA $020E                 
CODE_20F571:        STA $05                   
CODE_20F573:        LDA $020F                 
CODE_20F576:        STA $2C                   
CODE_20F578:        LDA #$20                  
CODE_20F57A:        STA $31                   
CODE_20F57C:        STZ $24                   
CODE_20F57E:        STZ $2F                   
CODE_20F580:        STZ $037C                 
CODE_20F583:        INC $021C                 
CODE_20F586:        JMP CODE_20F38E           

CODE_20F589:        JSR CODE_20F60C           
CODE_20F58C:        LDA $0726                 
CODE_20F58F:        BEQ CODE_20F593           
CODE_20F591:        LDA #$23                  
CODE_20F593:        STA $00                   
CODE_20F595:        LDA #$02                  
CODE_20F597:        STA $01                   
CODE_20F599:        LDY $00                   
CODE_20F59B:        JSL CODE_20F5A6           
CODE_20F59F:        INC $00                   
CODE_20F5A1:        DEC $01                   
CODE_20F5A3:        BPL CODE_20F599           
CODE_20F5A5:        RTL                       

CODE_20F5A6:        STY $02                   
CODE_20F5A8:        LDA $1D9C,y               
CODE_20F5AB:        ASL A                     
CODE_20F5AC:        TAX                       
CODE_20F5AD:        LDY $1600                 
CODE_20F5B0:        REP #$20                  
CODE_20F5B2:        LDA $CF0D,x               
CODE_20F5B5:        STA $1606,y               
CODE_20F5B8:        LDA $CF15,x               
CODE_20F5BB:        STA $1608,y               
CODE_20F5BE:        LDA $CF1D,x               
CODE_20F5C1:        STA $160E,y               
CODE_20F5C4:        LDA $CF25,x               
CODE_20F5C7:        STA $1610,y               
CODE_20F5CA:        SEP #$20                  
CODE_20F5CC:        LDX $0726                 
CODE_20F5CF:        BEQ CODE_20F5D3           
CODE_20F5D1:        LDX #$23                  
CODE_20F5D3:        LDA $02                   
CODE_20F5D5:        STX $02                   
CODE_20F5D7:        SEC                       
CODE_20F5D8:        SBC $02                   
CODE_20F5DA:        TAX                       
CODE_20F5DB:        LDA $CF2D,x               
CODE_20F5DE:        STA $1603,y               
CODE_20F5E1:        LDA $CF30,x               
CODE_20F5E4:        STA $160B,y               
CODE_20F5E7:        LDA #$0F                  
CODE_20F5E9:        STA $1602,y               
CODE_20F5EC:        STA $160A,y               
CODE_20F5EF:        LDA #$00                  
CODE_20F5F1:        STA $1604,y               
CODE_20F5F4:        STA $160C,y               
CODE_20F5F7:        LDA #$03                  
CODE_20F5F9:        STA $1605,y               
CODE_20F5FC:        STA $160D,y               
CODE_20F5FF:        LDA #$FF                  
CODE_20F601:        STA $1612,y               
CODE_20F604:        TYA                       
CODE_20F605:        CLC                       
CODE_20F606:        ADC #$10                  
CODE_20F608:        STA $1600                 
CODE_20F60B:        RTL                       

CODE_20F60C:        PHA                       
CODE_20F60D:        LDY $0726                 
CODE_20F610:        BEQ CODE_20F614           
CODE_20F612:        LDY #$23                  
CODE_20F614:        LDA $1D9C,y               
CODE_20F617:        BEQ CODE_20F62F           
CODE_20F619:        INY                       
CODE_20F61A:        CPY #$03                  
CODE_20F61C:        BEQ CODE_20F622           
CODE_20F61E:        CPY #$26                  
CODE_20F620:        BNE CODE_20F614           
CODE_20F622:        LDA $1D9A,y               
CODE_20F625:        STA $1D99,y               
CODE_20F628:        LDA $1D9B,y               
CODE_20F62B:        STA $1D9A,y               
CODE_20F62E:        DEY                       
CODE_20F62F:        PLA                       
CODE_20F630:        STA $1D9C,y               
CODE_20F633:        RTL                       

CODE_20F634:        PHA                       
CODE_20F635:        LDY $0726                 
CODE_20F638:        BEQ CODE_20F63C           
CODE_20F63A:        LDY #$23                  
CODE_20F63C:        LDX #$1B                  
CODE_20F63E:        LDA $1D80,y               
CODE_20F641:        BEQ CODE_20F647           
CODE_20F643:        INY                       
CODE_20F644:        DEX                       
CODE_20F645:        BNE CODE_20F63E           
CODE_20F647:        PLA                       
CODE_20F648:        STA $1D80,y               
CODE_20F64B:        RTL                       

CODE_20F64C:        PHD                       
CODE_20F64D:        BRL CODE_20F94B           

CODE_20F650:        PHB                       
CODE_20F651:        LDA #$21                  
CODE_20F653:        PHA                       
CODE_20F654:        PLB                       
CODE_20F655:        PHD                       
CODE_20F656:        LDA #$43                  
CODE_20F658:        XBA                       
CODE_20F659:        LDA #$00                  
CODE_20F65B:        TCD                       
CODE_20F65C:        LDA #$80                  
CODE_20F65E:        STA $2115                 
CODE_20F661:        REP #$10                  
CODE_20F663:        LDX #$1801                
CODE_20F666:        STX $00                   
CODE_20F668:        LDA $0238                 
CODE_20F66B:        BNE CODE_20F670           
CODE_20F66D:        JMP CODE_20F703           

CODE_20F670:        STA $04                   
CODE_20F672:        LDX #$6000                
CODE_20F675:        STX $2116                 
CODE_20F678:        LDX $0220                 
CODE_20F67B:        STX $02                   
CODE_20F67D:        LDY #$0040                
CODE_20F680:        STY $05                   
CODE_20F682:        LDA #$01                  
CODE_20F684:        STA $420B                 
CODE_20F687:        LDX $0222                 
CODE_20F68A:        STX $02                   
CODE_20F68C:        STY $05                   
CODE_20F68E:        STA $420B                 
CODE_20F691:        LDX $0224                 
CODE_20F694:        STX $02                   
CODE_20F696:        STY $05                   
CODE_20F698:        STA $420B                 
CODE_20F69B:        LDX $0226                 
CODE_20F69E:        STX $02                   
CODE_20F6A0:        STY $05                   
CODE_20F6A2:        STA $420B                 
CODE_20F6A5:        LDX $0228                 
CODE_20F6A8:        STX $02                   
CODE_20F6AA:        STY $05                   
CODE_20F6AC:        STA $420B                 
CODE_20F6AF:        LDX $022A                 
CODE_20F6B2:        STX $02                   
CODE_20F6B4:        STY $05                   
CODE_20F6B6:        STA $420B                 
CODE_20F6B9:        LDX #$6100                
CODE_20F6BC:        STX $2116                 
CODE_20F6BF:        LDX $0239                 
CODE_20F6C2:        STX $04                   
CODE_20F6C4:        LDX $022C                 
CODE_20F6C7:        STX $02                   
CODE_20F6C9:        STY $05                   
CODE_20F6CB:        STA $420B                 
CODE_20F6CE:        LDX $022E                 
CODE_20F6D1:        STX $02                   
CODE_20F6D3:        STY $05                   
CODE_20F6D5:        STA $420B                 
CODE_20F6D8:        LDX $0230                 
CODE_20F6DB:        STX $02                   
CODE_20F6DD:        STY $05                   
CODE_20F6DF:        STA $420B                 
CODE_20F6E2:        LDX $0232                 
CODE_20F6E5:        STX $02                   
CODE_20F6E7:        STY $05                   
CODE_20F6E9:        STA $420B                 
CODE_20F6EC:        LDX $0234                 
CODE_20F6EF:        STX $02                   
CODE_20F6F1:        STY $05                   
CODE_20F6F3:        STA $420B                 
CODE_20F6F6:        LDX $0236                 
CODE_20F6F9:        STX $02                   
CODE_20F6FB:        STY $05                   
CODE_20F6FD:        STA $420B                 
CODE_20F700:        STZ $0238                 
CODE_20F703:        LDA $072B                 
CODE_20F706:        CMP #$03                  
CODE_20F708:        BNE CODE_20F77A           
CODE_20F70A:        REP #$20                  
CODE_20F70C:        SEP #$10                  
CODE_20F70E:        LDA $7F3004               
CODE_20F712:        BEQ CODE_20F732           
CODE_20F714:        STA $2116                 
CODE_20F717:        LDA #$5000                
CODE_20F71A:        STA $02                   
CODE_20F71C:        LDX #$7F                  
CODE_20F71E:        STX $04                   
CODE_20F720:        LDA $7F3006               
CODE_20F724:        STA $05                   
CODE_20F726:        LDX #$01                  
CODE_20F728:        STX $420B                 
CODE_20F72B:        LDA #$0000                
CODE_20F72E:        STA $7F3004               
CODE_20F732:        LDA $7F3008               
CODE_20F736:        BEQ CODE_20F754           
CODE_20F738:        STA $2116                 
CODE_20F73B:        LDA #$3800                
CODE_20F73E:        STA $02                   
CODE_20F740:        LDA #$007F                
CODE_20F743:        STA $04                   
CODE_20F745:        LDA #$0800                
CODE_20F748:        STA $05                   
CODE_20F74A:        STX $420B                 
CODE_20F74D:        LDA #$0000                
CODE_20F750:        STA $7F3008               
CODE_20F754:        LDA $7F300A               
CODE_20F758:        BEQ CODE_20F776           
CODE_20F75A:        STA $2116                 
CODE_20F75D:        LDA #$4000                
CODE_20F760:        STA $02                   
CODE_20F762:        LDA #$007F                
CODE_20F765:        STA $04                   
CODE_20F767:        LDA #$0800                
CODE_20F76A:        STA $05                   
CODE_20F76C:        STX $420B                 
CODE_20F76F:        LDA #$0000                
CODE_20F772:        STA $7F300A               
CODE_20F776:        SEP #$20                  
CODE_20F778:        REP #$10                  
CODE_20F77A:        LDA $02D1                 
CODE_20F77D:        BPL CODE_20F7CC           
CODE_20F77F:        REP #$20                  
CODE_20F781:        SEP #$10                  
CODE_20F783:        STZ $2115                 
CODE_20F786:        LDA #$21FF                
CODE_20F789:        STA $0002                 
CODE_20F78C:        LDA #$5000                
CODE_20F78F:        STA $2116                 
CODE_20F792:        LDA #$1808                
CODE_20F795:        STA $00                   
CODE_20F797:        STZ $04                   
CODE_20F799:        LDA #$0002                
CODE_20F79C:        STA $02                   
CODE_20F79E:        LDA #$0300                
CODE_20F7A1:        STA $05                   
CODE_20F7A3:        LDY #$01                  
CODE_20F7A5:        STY $420B                 
CODE_20F7A8:        LDX #$80                  
CODE_20F7AA:        STX $2115                 
CODE_20F7AD:        STA $05                   
CODE_20F7AF:        LDA #$5000                
CODE_20F7B2:        STA $2116                 
CODE_20F7B5:        LDA #$1908                
CODE_20F7B8:        STA $00                   
CODE_20F7BA:        LDA #$0003                
CODE_20F7BD:        STA $02                   
CODE_20F7BF:        STY $420B                 
CODE_20F7C2:        SEP #$20                  
CODE_20F7C4:        LDA #$01                  
CODE_20F7C6:        STA $02D1                 
CODE_20F7C9:        JMP CODE_20F923           

CODE_20F7CC:        LDX $023E                 
CODE_20F7CF:        BEQ CODE_20F7EE           
CODE_20F7D1:        STX $2116                 
CODE_20F7D4:        LDA $0242                 
CODE_20F7D7:        STA $04                   
CODE_20F7D9:        LDX $0240                 
CODE_20F7DC:        STX $02                   
CODE_20F7DE:        LDX $02CA                 
CODE_20F7E1:        STX $05                   
CODE_20F7E3:        LDA #$01                  
CODE_20F7E5:        STA $420B                 
CODE_20F7E8:        STZ $023E                 
CODE_20F7EB:        STZ $023F                 
CODE_20F7EE:        SEP #$10                  
CODE_20F7F0:        LDA $02D3                 
CODE_20F7F3:        BMI CODE_20F84F           
CODE_20F7F5:        LDA $1EBF                 
CODE_20F7F8:        BNE CODE_20F82D           
CODE_20F7FA:        LDA $0727                 
CODE_20F7FD:        CMP #$02                  
CODE_20F7FF:        BNE CODE_20F82A           
CODE_20F801:        LDA $02D7                 
CODE_20F804:        BNE CODE_20F82A           
CODE_20F806:        LDX $07BC                 
CODE_20F809:        REP #$20                  
CODE_20F80B:        LDA #$2320                
CODE_20F80E:        STA $2116                 
CODE_20F811:        LDA #$0100                
CODE_20F814:        STA $05                   
CODE_20F816:        SEP #$20                  
CODE_20F818:        LDA #$37                  
CODE_20F81A:        STA $04                   
CODE_20F81C:        LDA $CA3E,x               
CODE_20F81F:        STA $03                   
CODE_20F821:        LDA #$40                  
CODE_20F823:        STA $02                   
CODE_20F825:        LDA #$01                  
CODE_20F827:        STA $420B                 
CODE_20F82A:        JMP CODE_20F923           

CODE_20F82D:        CMP #$07                  
CODE_20F82F:        BEQ CODE_20F82A           
CODE_20F831:        CMP #$0F                  
CODE_20F833:        BCC CODE_20F848           
CODE_20F835:        CMP #$11                  
CODE_20F837:        BNE CODE_20F83C           
CODE_20F839:        JMP CODE_20F9C4           

CODE_20F83C:        CMP #$13                  
CODE_20F83E:        BCC CODE_20F82A           
CODE_20F840:        CMP #$16                  
CODE_20F842:        BEQ CODE_20F82A           
CODE_20F844:        CMP #$2C                  
CODE_20F846:        BEQ CODE_20F82A           
CODE_20F848:        LDX #$00                  
CODE_20F84A:        LDA $0567                 
CODE_20F84D:        BNE CODE_20F8A7           
CODE_20F84F:        REP #$20                  
CODE_20F851:        LDA #$2980                
CODE_20F854:        STA $2116                 
CODE_20F857:        SEP #$20                  
CODE_20F859:        LDA $02B1                 
CODE_20F85C:        AND #$18                  
CODE_20F85E:        LSR A                     
CODE_20F85F:        LSR A                     
CODE_20F860:        LSR A                     
CODE_20F861:        TAX                       
CODE_20F862:        LDA #$36                  
CODE_20F864:        STA $04                   
CODE_20F866:        LDA $CA2C,x               
CODE_20F869:        STA $03                   
CODE_20F86B:        STZ $02                   
CODE_20F86D:        LDY #$80                  
CODE_20F86F:        STY $05                   
CODE_20F871:        LDA #$01                  
CODE_20F873:        STA $420B                 
CODE_20F876:        REP #$20                  
CODE_20F878:        LDA #$2DC0                
CODE_20F87B:        STA $2116                 
CODE_20F87E:        SEP #$20                  
CODE_20F880:        LDA $CA30,x               
CODE_20F883:        STA $03                   
CODE_20F885:        LDA #$80                  
CODE_20F887:        STA $02                   
CODE_20F889:        STY $05                   
CODE_20F88B:        LDA #$01                  
CODE_20F88D:        STA $420B                 
CODE_20F890:        INC $02B1                 
CODE_20F893:        LDX $0245                 
CODE_20F896:        BMI CODE_20F8C8           
CODE_20F898:        BEQ CODE_20F8A7           
CODE_20F89A:        LDA $0243                 
CODE_20F89D:        CMP #$04                  
CODE_20F89F:        BNE CODE_20F8A4           
CODE_20F8A1:        STX $02B2                 
CODE_20F8A4:        LDX $02B2                 
CODE_20F8A7:        REP #$20                  
CODE_20F8A9:        LDA #$60C0                
CODE_20F8AC:        STA $2116                 
CODE_20F8AF:        SEP #$20                  
CODE_20F8B1:        LDA #$31                  
CODE_20F8B3:        STA $04                   
CODE_20F8B5:        LDA $CA34,x               
CODE_20F8B8:        STA $03                   
CODE_20F8BA:        LDA $CA39,x               
CODE_20F8BD:        STA $02                   
CODE_20F8BF:        LDY #$80                  
CODE_20F8C1:        STY $05                   
CODE_20F8C3:        LDA #$01                  
CODE_20F8C5:        STA $420B                 
CODE_20F8C8:        LDX #$00                  
CODE_20F8CA:        LDA $02BF                 
CODE_20F8CD:        CMP #$01                  
CODE_20F8CF:        BEQ CODE_20F8E3           
CODE_20F8D1:        CMP #$05                  
CODE_20F8D3:        BEQ CODE_20F8E3           
CODE_20F8D5:        CMP #$06                  
CODE_20F8D7:        BEQ CODE_20F8E3           
CODE_20F8D9:        CMP #$07                  
CODE_20F8DB:        BEQ CODE_20F8E3           
CODE_20F8DD:        LDX #$04                  
CODE_20F8DF:        CMP #$0D                  
CODE_20F8E1:        BNE CODE_20F923           
CODE_20F8E3:        STX $0004                 
CODE_20F8E6:        REP #$20                  
CODE_20F8E8:        LDA #$5A00                
CODE_20F8EB:        STA $2116                 
CODE_20F8EE:        LDA #$0100                
CODE_20F8F1:        STA $05                   
CODE_20F8F3:        SEP #$20                  
CODE_20F8F5:        LDA $02C2                 
CODE_20F8F8:        INC A                     
CODE_20F8F9:        CMP #$0A                  
CODE_20F8FB:        BNE CODE_20F908           
CODE_20F8FD:        LDA $02C0                 
CODE_20F900:        INC A                     
CODE_20F901:        AND #$03                  
CODE_20F903:        STA $02C0                 
CODE_20F906:        LDA #$00                  
CODE_20F908:        STA $02C2                 
CODE_20F90B:        LDA $02C0                 
CODE_20F90E:        CLC                       
CODE_20F90F:        ADC $0004                 
CODE_20F912:        TAX                       
CODE_20F913:        LDA #$38                  
CODE_20F915:        STA $04                   
CODE_20F917:        LDA $CA40,x               
CODE_20F91A:        STA $03                   
CODE_20F91C:        STZ $02                   
CODE_20F91E:        LDA #$01                  
CODE_20F920:        STA $420B                 
CODE_20F923:        LDA $1500                 
CODE_20F926:        BEQ CODE_20F94A           
CODE_20F928:        STZ $2121                 
CODE_20F92B:        REP #$20                  
CODE_20F92D:        LDA #$2200                
CODE_20F930:        STA $10                   
CODE_20F932:        LDA #$1300                
CODE_20F935:        STA $12                   
CODE_20F937:        LDY #$00                  
CODE_20F939:        STY $14                   
CODE_20F93B:        LDA #$0200                
CODE_20F93E:        STA $15                   
CODE_20F940:        SEP #$20                  
CODE_20F942:        LDA #$02                  
CODE_20F944:        STA $420B                 
CODE_20F947:        STZ $1500                 
CODE_20F94A:        PLB                       
CODE_20F94B:        LDA #$0A                  
CODE_20F94D:        XBA                       
CODE_20F94E:        LDA #$00                  
CODE_20F950:        TCD                       
CODE_20F951:        LDY #$1C                  
CODE_20F953:        TYA                       
CODE_20F954:        ASL A                     
CODE_20F955:        ASL A                     
CODE_20F956:        TAX                       
CODE_20F957:        LDA $23,x                 
CODE_20F959:        ASL A                     
CODE_20F95A:        ASL A                     
CODE_20F95B:        ORA $22,x                 
CODE_20F95D:        ASL A                     
CODE_20F95E:        ASL A                     
CODE_20F95F:        ORA $21,x                 
CODE_20F961:        ASL A                     
CODE_20F962:        ASL A                     
CODE_20F963:        ORA $20,x                 
CODE_20F965:        STA $0A00,y               
CODE_20F968:        LDA $27,x                 
CODE_20F96A:        ASL A                     
CODE_20F96B:        ASL A                     
CODE_20F96C:        ORA $26,x                 
CODE_20F96E:        ASL A                     
CODE_20F96F:        ASL A                     
CODE_20F970:        ORA $25,x                 
CODE_20F972:        ASL A                     
CODE_20F973:        ASL A                     
CODE_20F974:        ORA $24,x                 
CODE_20F976:        STA $0A01,y               
CODE_20F979:        LDA $2B,x                 
CODE_20F97B:        ASL A                     
CODE_20F97C:        ASL A                     
CODE_20F97D:        ORA $2A,x                 
CODE_20F97F:        ASL A                     
CODE_20F980:        ASL A                     
CODE_20F981:        ORA $29,x                 
CODE_20F983:        ASL A                     
CODE_20F984:        ASL A                     
CODE_20F985:        ORA $28,x                 
CODE_20F987:        STA $0A02,y               
CODE_20F98A:        LDA $2F,x                 
CODE_20F98C:        ASL A                     
CODE_20F98D:        ASL A                     
CODE_20F98E:        ORA $2E,x                 
CODE_20F990:        ASL A                     
CODE_20F991:        ASL A                     
CODE_20F992:        ORA $2D,x                 
CODE_20F994:        ASL A                     
CODE_20F995:        ASL A                     
CODE_20F996:        ORA $2C,x                 
CODE_20F998:        STA $0A03,y               
CODE_20F99B:        DEY                       
CODE_20F99C:        DEY                       
CODE_20F99D:        DEY                       
CODE_20F99E:        DEY                       
CODE_20F99F:        BPL CODE_20F953           
CODE_20F9A1:        REP #$20                  
CODE_20F9A3:        LDA #$4300                
CODE_20F9A6:        TCD                       
CODE_20F9A7:        STZ $2102                 
CODE_20F9AA:        LDA #$0400                
CODE_20F9AD:        STA $00                   
CODE_20F9AF:        LDA #$0800                
CODE_20F9B2:        STA $02                   
CODE_20F9B4:        STZ $04                   
CODE_20F9B6:        LDA #$0220                
CODE_20F9B9:        STA $05                   
CODE_20F9BB:        LDY #$01                  
CODE_20F9BD:        STY $420B                 
CODE_20F9C0:        SEP #$20                  
CODE_20F9C2:        PLD                       
CODE_20F9C3:        RTS                       

CODE_20F9C4:        REP #$20                  
CODE_20F9C6:        LDA #$3060                
CODE_20F9C9:        STA $2116                 
CODE_20F9CC:        SEP #$20                  
CODE_20F9CE:        LDX $02D2                 
CODE_20F9D1:        LDA #$33                  
CODE_20F9D3:        STA $04                   
CODE_20F9D5:        LDA $CA48,x               
CODE_20F9D8:        STA $03                   
CODE_20F9DA:        LDA $CA4C,x               
CODE_20F9DD:        STA $02                   
CODE_20F9DF:        LDY #$80                  
CODE_20F9E1:        STY $05                   
CODE_20F9E3:        LDA #$01                  
CODE_20F9E5:        STA $420B                 
CODE_20F9E8:        JMP CODE_20F923           

CODE_20F9EB:        REP #$20                  
CODE_20F9ED:        STZ $0210                 
CODE_20F9F0:        STZ $0212                 
CODE_20F9F3:        STZ $0214                 
CODE_20F9F6:        STZ $0216                 
CODE_20F9F9:        STZ $0218                 
CODE_20F9FC:        STZ $021A                 
CODE_20F9FF:        SEP #$20                  
CODE_20FA01:        RTS                       

CODE_20FA02:        LDA #$80                  
CODE_20FA04:        STA $16                   
CODE_20FA06:        STA $2100                 
CODE_20FA09:        RTS                       

CODE_20FA0A:        REP #$20                  
CODE_20FA0C:        STZ $1600                 
CODE_20FA0F:        LDA #$FFFF                
CODE_20FA12:        STA $1602                 
CODE_20FA15:        SEP #$20                  
CODE_20FA17:        JSR CODE_20FA02           
CODE_20FA1A:        REP #$20                  
CODE_20FA1C:        STZ $2115                 
CODE_20FA1F:        STZ $2116                 
CODE_20FA22:        LDA #$1808                
CODE_20FA25:        STA $4310                 
CODE_20FA28:        STZ $4314                 
CODE_20FA2B:        LDA #$0000                
CODE_20FA2E:        STA $4312                 
CODE_20FA31:        LDA #$2000                
CODE_20FA34:        STA $4315                 
CODE_20FA37:        LDY #$02                  
CODE_20FA39:        STY $420B                 
CODE_20FA3C:        LDX #$80                  
CODE_20FA3E:        STX $2115                 
CODE_20FA41:        STZ $2116                 
CODE_20FA44:        STA $4315                 
CODE_20FA47:        LDA #$1908                
CODE_20FA4A:        STA $4310                 
CODE_20FA4D:        LDA #$0001                
CODE_20FA50:        STA $4312                 
CODE_20FA53:        STY $420B                 
CODE_20FA56:        STZ $2115                 
CODE_20FA59:        LDA #$01FF                
CODE_20FA5C:        STA $02                   
CODE_20FA5E:        LDA #$5000                
CODE_20FA61:        STA $2116                 
CODE_20FA64:        LDA #$1808                
CODE_20FA67:        STA $4310                 
CODE_20FA6A:        LDA #$0002                
CODE_20FA6D:        STA $4312                 
CODE_20FA70:        LDA #$0800                
CODE_20FA73:        STA $4315                 
CODE_20FA76:        STY $420B                 
CODE_20FA79:        STX $2115                 
CODE_20FA7C:        STA $4315                 
CODE_20FA7F:        LDA #$5000                
CODE_20FA82:        STA $2116                 
CODE_20FA85:        LDA #$1908                
CODE_20FA88:        STA $4310                 
CODE_20FA8B:        LDA #$0003                
CODE_20FA8E:        STA $4312                 
CODE_20FA91:        STY $420B                 
CODE_20FA94:        SEP #$20                  
CODE_20FA96:        RTS                       

CODE_20FA97:        STZ $2115                 
CODE_20FA9A:        REP #$20                  
CODE_20FA9C:        STZ $2116                 
CODE_20FA9F:        LDA #$1808                
CODE_20FAA2:        STA $4310                 
CODE_20FAA5:        STZ $4314                 
CODE_20FAA8:        LDA #$0739                
CODE_20FAAB:        STA $4312                 
CODE_20FAAE:        LDA #$2000                
CODE_20FAB1:        STA $4315                 
CODE_20FAB4:        LDY #$02                  
CODE_20FAB6:        STY $420B                 
CODE_20FAB9:        LDX #$80                  
CODE_20FABB:        STX $2115                 
CODE_20FABE:        STZ $2116                 
CODE_20FAC1:        STA $4315                 
CODE_20FAC4:        LDA #$1908                
CODE_20FAC7:        STA $4310                 
CODE_20FACA:        LDA #$073A                
CODE_20FACD:        STA $4312                 
CODE_20FAD0:        STY $420B                 
CODE_20FAD3:        SEP #$20                  
CODE_20FAD5:        RTS                       

CODE_20FAD6:        LDY #$04                  
CODE_20FAD8:        LDA $0216                 
CODE_20FADB:        CMP $CF33,y               
CODE_20FADE:        BEQ CODE_20FAE3           
CODE_20FAE0:        DEY                       
CODE_20FAE1:        BPL CODE_20FADB           
CODE_20FAE3:        LDA $CF38,y               
CODE_20FAE6:        STA $01                   
CODE_20FAE8:        LDA $CF3D,y               
CODE_20FAEB:        STA $00                   
CODE_20FAED:        REP #$10                  
CODE_20FAEF:        LDY #$0300                
CODE_20FAF2:        LDA #$80                  
CODE_20FAF4:        STA $2115                 
CODE_20FAF7:        REP #$20                  
CODE_20FAF9:        LDA $00                   
CODE_20FAFB:        STA $2116                 
CODE_20FAFE:        LDA $0739                 
CODE_20FB01:        STA $2118                 
CODE_20FB04:        DEY                       
CODE_20FB05:        BEQ CODE_20FB1C           
CODE_20FB07:        LDA $00                   
CODE_20FB09:        CLC                       
CODE_20FB0A:        ADC #$0001                
CODE_20FB0D:        STA $00                   
CODE_20FB0F:        AND #$03FF                
CODE_20FB12:        BNE CODE_20FAFE           
CODE_20FB14:        LDA #$0800                
CODE_20FB17:        STA $00                   
CODE_20FB19:        JMP CODE_20FAF7           
CODE_20FB1C:        SEP #$30                  
CODE_20FB1E:        RTS                       

CODE_20FB1F:        STY $03                   
CODE_20FB21:        PLY                       
CODE_20FB22:        STY $00                   
CODE_20FB24:        REP #$30                  
CODE_20FB26:        AND #$00FF                
CODE_20FB29:        ASL A                     
CODE_20FB2A:        TAY                       
CODE_20FB2B:        PLA                       
CODE_20FB2C:        STA $01                   
CODE_20FB2E:        INY                       
CODE_20FB2F:        LDA [$00],y               
CODE_20FB31:        STA $00                   
CODE_20FB33:        SEP #$30                  
CODE_20FB35:        LDY $03                   
CODE_20FB37:        JML [$0000]               

CODE_20FB3A:        STY $05               ; ExecutePtrLong | Preserve Y       
CODE_20FB3C:        PLY                   ; Get bank of source
CODE_20FB3D:        STY $02               ; Store in Y
CODE_20FB3F:        REP #$30              ;
CODE_20FB41:        AND #$00FF            ; Get A  
CODE_20FB44:        STA $03               ; Store in $03
CODE_20FB46:        ASL A                 ;\ *3 since the table entries are three bytes
CODE_20FB47:        ADC $03               ;/  
CODE_20FB49:        TAY                   ; A -> Y
CODE_20FB4A:        PLA                   ; Get Low and High byte of source
CODE_20FB4B:        STA $03               ;   
CODE_20FB4D:        INY                   ; +1 so we don't read the last byte of the JSL   
CODE_20FB4E:        LDA [$02],y           ;\ Read low and high byte of spot to jump to
CODE_20FB50:        STA $00               ;/  
CODE_20FB52:        INY                   ; +1 so we don't read the same data again
CODE_20FB53:        LDA [$02],y           ;\ Get high and bank byte
CODE_20FB55:        STA $01               ;/  
CODE_20FB57:        SEP #$30              ;
CODE_20FB59:        LDY $05               ; Restore A   
CODE_20FB5B:        JML [$0000]           ; Jump to pointer

CODE_20FB5E:        STZ $4016                 
CODE_20FB61:        LDA $701FF4               
CODE_20FB65:        TAX                       
CODE_20FB66:        LDA $4218,x               
CODE_20FB69:        STA $00                   
CODE_20FB6B:        LDA $4219,x               
CODE_20FB6E:        STA $01                   
CODE_20FB70:        LDA $00                   
CODE_20FB72:        STA $F4                   
CODE_20FB74:        TAY                       
CODE_20FB75:        EOR $FC                   
CODE_20FB77:        AND $F4                   
CODE_20FB79:        STA $F8                   
CODE_20FB7B:        STY $FC                   
CODE_20FB7D:        LDA $01                   
CODE_20FB7F:        STA $F2                   
CODE_20FB81:        STA $17                   
CODE_20FB83:        TAY                       
CODE_20FB84:        EOR $FA                   
CODE_20FB86:        AND $F2                   
CODE_20FB88:        STA $F6                   
CODE_20FB8A:        STA $18                   
CODE_20FB8C:        STY $FA                   
CODE_20FB8E:        LDA $701FF6               
CODE_20FB92:        TAX                       
CODE_20FB93:        LDA $4218,x               
CODE_20FB96:        STA $00                   
CODE_20FB98:        LDA $4219,x               
CODE_20FB9B:        STA $01                   
CODE_20FB9D:        LDA $00                   
CODE_20FB9F:        STA $F5                   
CODE_20FBA1:        TAY                       
CODE_20FBA2:        EOR $FD                   
CODE_20FBA4:        AND $F5                   
CODE_20FBA6:        STA $F9                   
CODE_20FBA8:        STY $FD                   
CODE_20FBAA:        LDA $01                   
CODE_20FBAC:        STA $F3                   
CODE_20FBAE:        TAY                       
CODE_20FBAF:        EOR $FB                   
CODE_20FBB1:        AND $F3                   
CODE_20FBB3:        STA $F7                   
CODE_20FBB5:        STY $FB                   
CODE_20FBB7:        LDA $0726                 
CODE_20FBBA:        BEQ CODE_20FBC4           
CODE_20FBBC:        LDA $F3                   
CODE_20FBBE:        STA $17                   
CODE_20FBC0:        LDA $F7                   
CODE_20FBC2:        STA $18                   
CODE_20FBC4:        RTS                       

CODE_20FBC5:        LDA $0210                 
CODE_20FBC8:        STA $210D                 
CODE_20FBCB:        LDA $0211                 
CODE_20FBCE:        STA $210D                 
CODE_20FBD1:        LDA $0216                 
CODE_20FBD4:        STA $210E                 
CODE_20FBD7:        STA $02                   
CODE_20FBD9:        LDA $0217                 
CODE_20FBDC:        STA $210E                 
CODE_20FBDF:        STA $03                   
CODE_20FBE1:        LDA $0212                 
CODE_20FBE4:        STA $210F                 
CODE_20FBE7:        LDA $0213                 
CODE_20FBEA:        STA $210F                 
CODE_20FBED:        LDA $0218                 
CODE_20FBF0:        STA $2110                 
CODE_20FBF3:        LDA $0219                 
CODE_20FBF6:        STA $2110                 
CODE_20FBF9:        LDA $0100                 
CODE_20FBFC:        CMP #$20                  
CODE_20FBFE:        BNE CODE_20FC03           
CODE_20FC00:        JMP CODE_20FCA6           

CODE_20FC03:        LDA $02BF                 
CODE_20FC06:        CMP #$01                  
CODE_20FC08:        BNE CODE_20FC47           
CODE_20FC0A:        LDX $02C1                 
CODE_20FC0D:        CPX #$1C                  
CODE_20FC0F:        BNE CODE_20FC3C           
CODE_20FC11:        REP #$20                  
CODE_20FC13:        LDA #$0000                
CODE_20FC16:        STA $02CC                 
CODE_20FC19:        LDA $0216                 
CODE_20FC1C:        CMP #$0950                
CODE_20FC1F:        BCC CODE_20FC2B           
CODE_20FC21:        LDA $0216                 
CODE_20FC24:        SEC                       
CODE_20FC25:        SBC #$0950                
CODE_20FC28:        STA $02CC                 
CODE_20FC2B:        SEP #$20                  
CODE_20FC2D:        LDA $02CC                 
CODE_20FC30:        STA $2112                 
CODE_20FC33:        LDA $02CD                 
CODE_20FC36:        STA $2112                 
CODE_20FC39:        JMP CODE_20FCB2           

CODE_20FC3C:        STZ $2112                 
CODE_20FC3F:        LDA #$01                  
CODE_20FC41:        STA $2112                 
CODE_20FC44:        JMP CODE_20FCB2           

CODE_20FC47:        CMP #$08                  
CODE_20FC49:        BNE CODE_20FC7B           
CODE_20FC4B:        REP #$20                  
CODE_20FC4D:        LDA $0210                 
CODE_20FC50:        LSR A                     
CODE_20FC51:        LSR A                     
CODE_20FC52:        LSR A                     
CODE_20FC53:        STA $00                   
CODE_20FC55:        LDA $02                   
CODE_20FC57:        LSR A                     
CODE_20FC58:        LSR A                     
CODE_20FC59:        LSR A                     
CODE_20FC5A:        STA $02C3                 
CODE_20FC5D:        LDA $02                   
CODE_20FC5F:        SEC                       
CODE_20FC60:        SBC $02C3                 
CODE_20FC63:        STA $02C3                 
CODE_20FC66:        SEP #$20                  
CODE_20FC68:        LDA $00                   
CODE_20FC6A:        STA $2111                 
CODE_20FC6D:        LDA $01                   
CODE_20FC6F:        STA $2111                 
CODE_20FC72:        LDA #$17                  
CODE_20FC74:        STA $2112                 
CODE_20FC77:        STZ $2112                 
CODE_20FC7A:        RTS                       

CODE_20FC7B:        CMP #$09                  
CODE_20FC7D:        BNE CODE_20FCA6           
CODE_20FC7F:        REP #$20                  
CODE_20FC81:        LDA $0210                 
CODE_20FC84:        LSR A                     
CODE_20FC85:        LSR A                     
CODE_20FC86:        STA $00                   
CODE_20FC88:        SEP #$20                  
CODE_20FC8A:        LDA $00                   
CODE_20FC8C:        STA $2111                 
CODE_20FC8F:        LDA $01                   
CODE_20FC91:        STA $2111                 
CODE_20FC94:        LDA $0218                 
CODE_20FC97:        CLC                       
CODE_20FC98:        ADC #$11                  
CODE_20FC9A:        STA $2112                 
CODE_20FC9D:        LDA $0219                 
CODE_20FCA0:        ADC #$00                  
CODE_20FCA2:        STA $2112                 
CODE_20FCA5:        RTS                       

CODE_20FCA6:        LDA $021A                 
CODE_20FCA9:        STA $2112                 
CODE_20FCAC:        LDA $021B                 
CODE_20FCAF:        STA $2112                 
CODE_20FCB2:        LDA $0214                 
CODE_20FCB5:        STA $2111                 
CODE_20FCB8:        LDA $0215                 
CODE_20FCBB:        STA $2111                 
CODE_20FCBE:        RTS                       

CODE_20FCBF:        LDA $0210                 
CODE_20FCC2:        STA $210D                 
CODE_20FCC5:        LDA $0211                 
CODE_20FCC8:        STA $210D                 
CODE_20FCCB:        LDA $0216                 
CODE_20FCCE:        CLC                       
CODE_20FCCF:        ADC $1CF2                 
CODE_20FCD2:        STA $210E                 
CODE_20FCD5:        STA $02                   
CODE_20FCD7:        LDA $0217                 
CODE_20FCDA:        STA $210E                 
CODE_20FCDD:        STA $03                   
CODE_20FCDF:        LDA $02BF                 
CODE_20FCE2:        CMP #$03                  
CODE_20FCE4:        BEQ CODE_20FCEC           
CODE_20FCE6:        CMP #$04                  
CODE_20FCE8:        BEQ CODE_20FCEC           
CODE_20FCEA:        BRA CODE_20FD25           

CODE_20FCEC:        LDA $9C                   
CODE_20FCEE:        BNE CODE_20FCF8           
CODE_20FCF0:        LDA $037A                 
CODE_20FCF3:        BNE CODE_20FCF8           
CODE_20FCF5:        JSR CODE_20FF4A           
CODE_20FCF8:        LDA $0353                 
CODE_20FCFB:        STA $210F                 
CODE_20FCFE:        LDA $0354                 
CODE_20FD01:        STA $210F                 
CODE_20FD04:        LDA #$3F                  
CODE_20FD06:        STA $2110                 
CODE_20FD09:        STZ $2110                 
CODE_20FD0C:        LDA $0212                 
CODE_20FD0F:        STA $2111                 
CODE_20FD12:        LDA $0213                 
CODE_20FD15:        STA $2111                 
CODE_20FD18:        LDA $0218                 
CODE_20FD1B:        STA $2112                 
CODE_20FD1E:        LDA $0219                 
CODE_20FD21:        STA $2112                 
CODE_20FD24:        RTS                       

CODE_20FD25:        LDA $0350                 
CODE_20FD28:        CMP #$12                  
CODE_20FD2A:        BNE CODE_20FD85           
CODE_20FD2C:        LDA $02BF                 
CODE_20FD2F:        BEQ CODE_20FD6A           
CODE_20FD31:        REP #$20                  
CODE_20FD33:        LDA $0210                 
CODE_20FD36:        LSR A                     
CODE_20FD37:        STA $00                   
CODE_20FD39:        LDA $02                   
CODE_20FD3B:        LSR A                     
CODE_20FD3C:        LSR A                     
CODE_20FD3D:        LSR A                     
CODE_20FD3E:        STA $02C3                 
CODE_20FD41:        LDA $02                   
CODE_20FD43:        SEC                       
CODE_20FD44:        SBC $02C3                 
CODE_20FD47:        STA $02C3                 
CODE_20FD4A:        SEP #$20                  
CODE_20FD4C:        LDA $00                   
CODE_20FD4E:        STA $210F                 
CODE_20FD51:        LDA $01                   
CODE_20FD53:        STA $210F                 
CODE_20FD56:        LDA $02C3                 
CODE_20FD59:        CLC                       
CODE_20FD5A:        ADC #$20                  
CODE_20FD5C:        STA $2110                 
CODE_20FD5F:        LDA $02C4                 
CODE_20FD62:        ADC #$00                  
CODE_20FD64:        STA $2110                 
CODE_20FD67:        JMP CODE_20FEED           

CODE_20FD6A:        LDA $02CC                 
CODE_20FD6D:        STA $2110                 
CODE_20FD70:        LDA $02CD                 
CODE_20FD73:        STA $2110                 
CODE_20FD76:        LDA $02CE                 
CODE_20FD79:        STA $210F                 
CODE_20FD7C:        LDA $02CF                 
CODE_20FD7F:        STA $210F                 
CODE_20FD82:        JMP CODE_20FEED           

CODE_20FD85:        LDA $0212                 
CODE_20FD88:        STA $210F                 
CODE_20FD8B:        LDA $0213                 
CODE_20FD8E:        STA $210F                 
CODE_20FD91:        LDA $0218                 
CODE_20FD94:        STA $2110                 
CODE_20FD97:        LDA $0219                 
CODE_20FD9A:        STA $2110                 
CODE_20FD9D:        LDA $02BF                 
CODE_20FDA0:        CMP #$01                  
CODE_20FDA2:        BNE CODE_20FDCC           
CODE_20FDA4:        LDA $02C1                 
CODE_20FDA7:        CMP #$34                  
CODE_20FDA9:        BNE CODE_20FDB5           
CODE_20FDAB:        STZ $2112                 
CODE_20FDAE:        LDA #$01                  
CODE_20FDB0:        STA $2112                 
CODE_20FDB3:        BRA CODE_20FDBF           

CODE_20FDB5:        LDA $02                   
CODE_20FDB7:        STA $2112                 
CODE_20FDBA:        LDA $03                   
CODE_20FDBC:        STA $2112                 
CODE_20FDBF:        LDA $0210                 
CODE_20FDC2:        STA $2111                 
CODE_20FDC5:        LDA $0211                 
CODE_20FDC8:        STA $2111                 
CODE_20FDCB:        RTS                       

CODE_20FDCC:        CMP #$08                  
CODE_20FDCE:        BNE CODE_20FDDA           
CODE_20FDD0:        LDA #$17                  
CODE_20FDD2:        STA $2112                 
CODE_20FDD5:        STZ $2112                 
CODE_20FDD8:        BRA CODE_20FDBF           

CODE_20FDDA:        CMP #$05                  
CODE_20FDDC:        BNE CODE_20FDE6           
CODE_20FDDE:        STZ $2112                 
CODE_20FDE1:        STZ $2112                 
CODE_20FDE4:        BRA CODE_20FDBF           

CODE_20FDE6:        CMP #$06                  
CODE_20FDE8:        BNE CODE_20FDF4           
CODE_20FDEA:        STZ $2112                 
CODE_20FDED:        LDA #$01                  
CODE_20FDEF:        STA $2112                 
CODE_20FDF2:        BRA CODE_20FDBF           

CODE_20FDF4:        CMP #$07                  
CODE_20FDF6:        BNE CODE_20FE10           
CODE_20FDF8:        REP #$20                  
CODE_20FDFA:        LDA #$00B8                
CODE_20FDFD:        CLC                       
CODE_20FDFE:        ADC $02                   
CODE_20FE00:        STA $04                   
CODE_20FE02:        SEP #$20                  
CODE_20FE04:        LDA $04                   
CODE_20FE06:        STA $2110                 
CODE_20FE09:        LDA $05                   
CODE_20FE0B:        STA $2110                 
CODE_20FE0E:        BRA CODE_20FDB5           

CODE_20FE10:        CMP #$02                  
CODE_20FE12:        BEQ CODE_20FE4A           
CODE_20FE14:        CMP #$09                  
CODE_20FE16:        BEQ CODE_20FE23           
CODE_20FE18:        CMP #$0A                  
CODE_20FE1A:        BEQ CODE_20FE23           
CODE_20FE1C:        CMP #$0F                  
CODE_20FE1E:        BEQ CODE_20FE23           
CODE_20FE20:        JMP CODE_20FE85           

CODE_20FE23:        REP #$20                  
CODE_20FE25:        LDA $0210                 
CODE_20FE28:        LSR A                     
CODE_20FE29:        LSR A                     
CODE_20FE2A:        STA $00                   
CODE_20FE2C:        SEP #$20                  
CODE_20FE2E:        LDA $00                   
CODE_20FE30:        STA $2111                 
CODE_20FE33:        LDA $01                   
CODE_20FE35:        STA $2111                 
CODE_20FE38:        LDA $0218                 
CODE_20FE3B:        CLC                       
CODE_20FE3C:        ADC #$11                  
CODE_20FE3E:        STA $2112                 
CODE_20FE41:        LDA $0219                 
CODE_20FE44:        ADC #$00                  
CODE_20FE46:        STA $2112                 
CODE_20FE49:        RTS                       

CODE_20FE4A:        REP #$20                  
CODE_20FE4C:        LDA $0210                 
CODE_20FE4F:        LSR A                     
CODE_20FE50:        LSR A                     
CODE_20FE51:        STA $00                   
CODE_20FE53:        STA $0353                 
CODE_20FE56:        LDA $02                   
CODE_20FE58:        LSR A                     
CODE_20FE59:        LSR A                     
CODE_20FE5A:        LSR A                     
CODE_20FE5B:        STA $02C3                 
CODE_20FE5E:        LDA $02                   
CODE_20FE60:        SEC                       
CODE_20FE61:        SBC $02C3                 
CODE_20FE64:        STA $02C3                 
CODE_20FE67:        SEP #$20                  
CODE_20FE69:        LDA $00                   
CODE_20FE6B:        STA $2111                 
CODE_20FE6E:        LDA $01                   
CODE_20FE70:        STA $2111                 
CODE_20FE73:        LDA $02C3                 
CODE_20FE76:        CLC                       
CODE_20FE77:        ADC #$20                  
CODE_20FE79:        STA $2112                 
CODE_20FE7C:        LDA $02C4                 
CODE_20FE7F:        ADC #$00                  
CODE_20FE81:        STA $2112                 
CODE_20FE84:        RTS                       

CODE_20FE85:        CMP #$0E                  
CODE_20FE87:        BNE CODE_20FEAA           
CODE_20FE89:        LDA $02                   
CODE_20FE8B:        STA $2112                 
CODE_20FE8E:        LDA $03                   
CODE_20FE90:        STA $2112                 
CODE_20FE93:        REP #$20                  
CODE_20FE95:        LDA $0210                 
CODE_20FE98:        LSR A                     
CODE_20FE99:        LSR A                     
CODE_20FE9A:        LSR A                     
CODE_20FE9B:        STA $00                   
CODE_20FE9D:        SEP #$20                  
CODE_20FE9F:        LDA $00                   
CODE_20FEA1:        STA $2111                 
CODE_20FEA4:        LDA $01                   
CODE_20FEA6:        STA $2111                 
CODE_20FEA9:        RTS                       

CODE_20FEAA:        CMP #$0B                  
CODE_20FEAC:        BNE CODE_20FEED           
CODE_20FEAE:        LDA $9C                   
CODE_20FEB0:        BNE CODE_20FEBA           
CODE_20FEB2:        LDA $037A                 
CODE_20FEB5:        BNE CODE_20FEBA           
CODE_20FEB7:        JSR CODE_20FF4A           
CODE_20FEBA:        REP #$20                  
CODE_20FEBC:        LDA $02                   
CODE_20FEBE:        LSR A                     
CODE_20FEBF:        LSR A                     
CODE_20FEC0:        LSR A                     
CODE_20FEC1:        STA $02C3                 
CODE_20FEC4:        LDA $02                   
CODE_20FEC6:        SEC                       
CODE_20FEC7:        SBC $02C3                 
CODE_20FECA:        STA $02C3                 
CODE_20FECD:        SEP #$20                  
CODE_20FECF:        LDA $0353                 
CODE_20FED2:        STA $2111                 
CODE_20FED5:        LDA $0354                 
CODE_20FED8:        STA $2111                 
CODE_20FEDB:        LDA $02C3                 
CODE_20FEDE:        CLC                       
CODE_20FEDF:        ADC #$28                  
CODE_20FEE1:        STA $2112                 
CODE_20FEE4:        LDA $02C4                 
CODE_20FEE7:        ADC #$00                  
CODE_20FEE9:        STA $2112                 
CODE_20FEEC:        RTS                       

CODE_20FEED:        LDA $0214                 
CODE_20FEF0:        STA $2111                 
CODE_20FEF3:        LDA $0215                 
CODE_20FEF6:        STA $2111                 
CODE_20FEF9:        LDA $021A                 
CODE_20FEFC:        STA $2112                 
CODE_20FEFF:        LDA $021B                 
CODE_20FF02:        STA $2112                 
CODE_20FF05:        RTS                       

CODE_20FF06:        LDA $0210                 
CODE_20FF09:        CLC                       
CODE_20FF0A:        ADC #$10                  
CODE_20FF0C:        LDA $0211                 
CODE_20FF0F:        ADC #$00                  
CODE_20FF11:        AND #$01                  
CODE_20FF13:        TAY                       
CODE_20FF14:        REP #$20                  
CODE_20FF16:        LDX #$80                  
CODE_20FF18:        STX $2115                 
CODE_20FF1B:        LDA #$1801                
CODE_20FF1E:        STA $4300                 
CODE_20FF21:        LDA #$0400                
CODE_20FF24:        STA $4305                 
CODE_20FF27:        LDA #$A000                
CODE_20FF2A:        STA $4302                 
CODE_20FF2D:        LDX #$7F                  
CODE_20FF2F:        STX $4304                 
CODE_20FF32:        LDA #$0080                
CODE_20FF35:        LDX #$01                  
CODE_20FF37:        CPY #$00                  
CODE_20FF39:        BEQ CODE_20FF3E           
CODE_20FF3B:        LDA #$0480                
CODE_20FF3E:        STA $2116                 
CODE_20FF41:        STX $420B                 
CODE_20FF44:        SEP #$20                  
CODE_20FF46:        STZ $02BB                 
CODE_20FF49:        RTS                       

CODE_20FF4A:        LDA $0351                 
CODE_20FF4D:        ASL A                     
CODE_20FF4E:        ASL A                     
CODE_20FF4F:        ASL A                     
CODE_20FF50:        ASL A                     
CODE_20FF51:        CLC                       
CODE_20FF52:        ADC $0352                 
CODE_20FF55:        STA $0352                 
CODE_20FF58:        PHP                       
CODE_20FF59:        LDY #$00                  
CODE_20FF5B:        LDA $0351                 
CODE_20FF5E:        LSR A                     
CODE_20FF5F:        LSR A                     
CODE_20FF60:        LSR A                     
CODE_20FF61:        LSR A                     
CODE_20FF62:        CMP #$08                  
CODE_20FF64:        BCC CODE_20FF69           
CODE_20FF66:        ORA #$F0                  
CODE_20FF68:        DEY                       
CODE_20FF69:        PLP                       
CODE_20FF6A:        ADC $0353                 
CODE_20FF6D:        STA $0353                 
CODE_20FF70:        TYA                       
CODE_20FF71:        ADC $0354                 
CODE_20FF74:        STA $0354                 
CODE_20FF77:        RTS                       

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
