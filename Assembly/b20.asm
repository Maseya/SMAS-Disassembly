;Super Mario Bros. 3

CODE_208000:    JMP CODE_20A116         ; $20:8000: 4C 16 A1    ; Entry point of SMB3's game start routine (includes piracy check)

CODE_208003:    JMP CODE_20F000         ; $20:8003: 4C 00 F0    ;Entry point of SMB3's NMI

CODE_208006:    JMP CODE_20F304         ; $20:8006: 4C 04 F3    ;Entry point of SMB3's IRQ

DATA_208009:        db $20,$20,$21,$21,$22,$22,$23,$23
                    db $24,$24,$25,$25,$26,$26,$27,$27
                    db $28,$28,$29,$29,$2A,$2A                   

CODE_20801F:    LDA $28                     ; $20:801F: A5 28       ;
CODE_208021:    STA $36                     ; $20:8021: 85 36       ;
CODE_208023:    ASL A                       ; $20:8023: 0A          ;
CODE_208024:    CLC                         ; $20:8024: 18          ;
CODE_208025:    ADC $36                     ; $20:8025: 65 36       ;
CODE_208027:    TAY                         ; $20:8027: A8          ;
CODE_208028:    PHB                         ; $20:8028: 8B          ;
CODE_208029:    LDA #$22                    ; $20:8029: A9 22       ;
CODE_20802B:    PHA                         ; $20:802B: 48          ;
CODE_20802C:    PLB                         ; $20:802C: AB          ;
CODE_20802D:    LDA.w PNTR_228B5C,y                 ; $20:802D: B9 5C 8B    ;
CODE_208030:    STA $36                     ; $20:8030: 85 36       ;
CODE_208032:    LDA.w PNTR_228B5C+1,y                   ; $20:8032: B9 5D 8B    ;
CODE_208035:    STA $37                     ; $20:8035: 85 37       ;
CODE_208037:    LDA.w PNTR_228B5C+2,y                   ; $20:8037: B9 5E 8B    ;
CODE_20803A:    STA $38                     ; $20:803A: 85 38       ;
CODE_20803C:    PLB                         ; $20:803C: AB          ;
CODE_20803D:    LDA #$01                    ; $20:803D: A9 01       ;
CODE_20803F:    STA $1C                     ; $20:803F: 85 1C       ;
CODE_208041:    STZ $0154                   ; $20:8041: 9C 54 01    ;
CODE_208044:    LDA $0154                   ; $20:8044: AD 54 01    ;
CODE_208047:    BPL CODE_208044             ; $20:8047: 10 FB       ;
CODE_208049:    STZ $1C                     ; $20:8049: 64 1C       ;
CODE_20804B:    CLI                         ; $20:804B: 58          ;
CODE_20804C:    RTS                         ; $20:804C: 60          ;

CODE_20804D:    JSR CODE_20801F             ; $20:804D: 20 1F 80    ;
CODE_208050:    RTL                         ; $20:8050: 6B          ;

CODE_208051:    LDA #$1F                    ; $20:8051: A9 1F       ;
CODE_208053:    STA $7E3968                 ; $20:8053: 8F 68 39 7E ;
CODE_208057:    LDA #$40                    ; $20:8057: A9 40       ;
CODE_208059:    STA $7E3969                 ; $20:8059: 8F 69 39 7E ;
CODE_20805D:    LDA #$01                    ; $20:805D: A9 01       ;
CODE_20805F:    STA $1503                   ; $20:805F: 8D 03 15    ;
CODE_208062:    STZ $0103                   ; $20:8062: 9C 03 01    ;
CODE_208065:    LDA #$00                    ; $20:8065: A9 00       ;
CODE_208067:    STA $7FFF03                 ; $20:8067: 8F 03 FF 7F ;
CODE_20806B:    LDA #$FF                    ; $20:806B: A9 FF       ;
CODE_20806D:    STA $001602                 ; $20:806D: 8F 02 16 00 ;
CODE_208071:    STA $001603                 ; $20:8071: 8F 03 16 00 ;
CODE_208075:    LDA #$02                    ; $20:8075: A9 02       ;
CODE_208077:    STA $36                     ; $20:8077: 85 36       ;
CODE_208079:    LDA #$16                    ; $20:8079: A9 16       ;
CODE_20807B:    STA $37                     ; $20:807B: 85 37       ;
CODE_20807D:    INC $0154                   ; $20:807D: EE 54 01    ;
CODE_208080:    LDA #$81                    ; $20:8080: A9 81       ;
CODE_208082:    STA $4200                   ; $20:8082: 8D 00 42    ;
CODE_208085:    STA $2100                   ; $20:8085: 8D 00 21    ;
CODE_208088:    STA $16                     ; $20:8088: 85 16       ;
CODE_20808A:    JSL CODE_22E0A9             ; $20:808A: 22 A9 E0 22 ;
CODE_20808E:    JSR CODE_20F9EB             ; $20:808E: 20 EB F9    ;
CODE_208091:    LDA #$5C                    ; $20:8091: A9 5C       ;
CODE_208093:    STA $00                     ; $20:8093: 85 00       ;
CODE_208095:    STZ $01                     ; $20:8095: 64 01       ;
CODE_208097:    JSR CODE_20FA0A             ; $20:8097: 20 0A FA    ;
CODE_20809A:    LDA #$20                    ; $20:809A: A9 20       ;
CODE_20809C:    STA $0100                   ; $20:809C: 8D 00 01    ;
CODE_20809F:    STA $0101                   ; $20:809F: 8D 01 01    ;
CODE_2080A2:    LDA #$01                    ; $20:80A2: A9 01       ;
CODE_2080A4:    STA $02D7                   ; $20:80A4: 8D D7 02    ;
CODE_2080A7:    LDA #$15                ; $20:80A7: A9 15       ;\
CODE_2080A9:    STA $1202               ; $20:80A9: 8D 02 12    ;/Title screen music
CODE_2080AC:    JSR CODE_20B0FE             ; $20:80AC: 20 FE B0    ;
CODE_2080AF:    LDA $072B                   ; $20:80AF: AD 2B 07    ;
CODE_2080B2:    CMP #$03                    ; $20:80B2: C9 03       ;
CODE_2080B4:    BNE CODE_2080B9             ; $20:80B4: D0 03       ;
CODE_2080B6:    JMP CODE_20A2D0             ; $20:80B6: 4C D0 A2    ;

CODE_2080B9:    JSL CODE_29A700             ; $20:80B9: 22 00 A7 29 ;
CODE_2080BD:    STZ $0729                   ; $20:80BD: 9C 29 07    ;
CODE_2080C0:    STZ $07E3                   ; $20:80C0: 9C E3 07    ;
CODE_2080C3:    STZ $1F2F                   ; $20:80C3: 9C 2F 1F    ;
CODE_2080C6:    LDA #$00                    ; $20:80C6: A9 00       ;
CODE_2080C8:    STA $7E396E                 ; $20:80C8: 8F 6E 39 7E ;
CODE_2080CC:    STA $7E396F                 ; $20:80CC: 8F 6F 39 7E ;
CODE_2080D0:    LDA #$F8                    ; $20:80D0: A9 F8       ;
CODE_2080D2:    STA $95                     ; $20:80D2: 85 95       ;
CODE_2080D4:    LDA $7E3955                 ; $20:80D4: AF 55 39 7E ;
CODE_2080D8:    INC A                       ; $20:80D8: 1A          ;
CODE_2080D9:    STA $7E3955                 ; $20:80D9: 8F 55 39 7E ;
CODE_2080DD:    LDX #$7F                    ; $20:80DD: A2 7F       ;
CODE_2080DF:    STZ $1D00,x                 ; $20:80DF: 9E 00 1D    ;
CODE_2080E2:    DEX                         ; $20:80E2: CA          ;
CODE_2080E3:    BPL CODE_2080DF             ; $20:80E3: 10 FA       ;
CODE_2080E5:    STZ $4200                   ; $20:80E5: 9C 00 42    ;
CODE_2080E8:    LDA $1503                   ; $20:80E8: AD 03 15    ;
CODE_2080EB:    BEQ CODE_2080F1             ; $20:80EB: F0 04       ;
CODE_2080ED:    JSL CODE_008B63             ; $20:80ED: 22 63 8B 00 ;
CODE_2080F1:    STZ $1503                   ; $20:80F1: 9C 03 15    ;
CODE_2080F4:    JSL CODE_22E0A9             ; $20:80F4: 22 A9 E0 22 ;
CODE_2080F8:    JSR CODE_20F9EB             ; $20:80F8: 20 EB F9    ;
CODE_2080FB:    LDA #$FF                    ; $20:80FB: A9 FF       ;
CODE_2080FD:    STA $00                     ; $20:80FD: 85 00       ;
CODE_2080FF:    STZ $01                     ; $20:80FF: 64 01       ;
CODE_208101:    JSR CODE_20FA0A             ; $20:8101: 20 0A FA    ;
CODE_208104:    LDA #$0B                    ; $20:8104: A9 0B       ;
CODE_208106:    STA $070B                   ; $20:8106: 8D 0B 07    ;
CODE_208109:    LDA #$35                    ; $20:8109: A9 35       ;
CODE_20810B:    STA $070C                   ; $20:810B: 8D 0C 07    ;
CODE_20810E:    STZ $070A                   ; $20:810E: 9C 0A 07    ;
CODE_208111:    STZ $072C                   ; $20:8111: 9C 2C 07    ;
CODE_208114:    STZ $053C                   ; $20:8114: 9C 3C 05    ;
CODE_208117:    STZ $0101                   ; $20:8117: 9C 01 01    ;
CODE_20811A:    STZ $0351                   ; $20:811A: 9C 51 03    ;
CODE_20811D:    STZ $02CC                   ; $20:811D: 9C CC 02    ;
CODE_208120:    STZ $02CD                   ; $20:8120: 9C CD 02    ;
CODE_208123:    STZ $02CE                   ; $20:8123: 9C CE 02    ;
CODE_208126:    STZ $02CF                   ; $20:8126: 9C CF 02    ;
CODE_208129:    STZ $0243                   ; $20:8129: 9C 43 02    ;
CODE_20812C:    STZ $02D9                   ; $20:812C: 9C D9 02    ;
CODE_20812F:    STZ $02E0                   ; $20:812F: 9C E0 02    ;
CODE_208132:    STZ $02E1                   ; $20:8132: 9C E1 02    ;
CODE_208135:    LDA #$00                    ; $20:8135: A9 00       ;
CODE_208137:    STA $7E3955                 ; $20:8137: 8F 55 39 7E ;
CODE_20813B:    STA $7FC522                 ; $20:813B: 8F 22 C5 7F ;
CODE_20813F:    STA $7FC523                 ; $20:813F: 8F 23 C5 7F ;
CODE_208143:    STZ $1CF2                   ; $20:8143: 9C F2 1C    ;
CODE_208146:    LDA #$FF                    ; $20:8146: A9 FF       ;
CODE_208148:    STA $07BF                   ; $20:8148: 8D BF 07    ;
CODE_20814B:    LDA #$04                    ; $20:814B: A9 04       ;
CODE_20814D:    STA $070E                   ; $20:814D: 8D 0E 07    ;
CODE_208150:    STA $069A                   ; $20:8150: 8D 9A 06    ;
CODE_208153:    LDA #$28                    ; $20:8153: A9 28       ;
CODE_208155:    STA $05F1                   ; $20:8155: 8D F1 05    ;
CODE_208158:    LDA #$03                    ; $20:8158: A9 03       ;
CODE_20815A:    STA $0699                   ; $20:815A: 8D 99 06    ;
CODE_20815D:    LDA #$C0                    ; $20:815D: A9 C0       ;
CODE_20815F:    STA $0100                   ; $20:815F: 8D 00 01    ;
CODE_208162:    LDA #$1F                    ; $20:8162: A9 1F       ;
CODE_208164:    LDX $0726                   ; $20:8164: AE 26 07    ;
CODE_208167:    BEQ CODE_20816C             ; $20:8167: F0 03       ;
CODE_208169:    CLC                         ; $20:8169: 18          ;
CODE_20816A:    ADC #$23                    ; $20:816A: 69 23       ;
CODE_20816C:    TAY                         ; $20:816C: A8          ;
CODE_20816D:    LDX #$00                    ; $20:816D: A2 00       ;
CODE_20816F:    LDA $1D80,y                 ; $20:816F: B9 80 1D    ;
CODE_208172:    STA $0715,x                 ; $20:8172: 9D 15 07    ;
CODE_208175:    INY                         ; $20:8175: C8          ;
CODE_208176:    INX                         ; $20:8176: E8          ;
CODE_208177:    CPX #$03                    ; $20:8177: E0 03       ;
CODE_208179:    BNE CODE_20816F             ; $20:8179: D0 F4       ;
CODE_20817B:    LDX $072B                   ; $20:817B: AE 2B 07    ;
CODE_20817E:    DEX                         ; $20:817E: CA          ;
CODE_20817F:    LDA $7E3975,x               ; $20:817F: BF 75 39 7E ;
CODE_208183:    STA $43,x                   ; $20:8183: 95 43       ;
CODE_208185:    LDA $7E3977,x               ; $20:8185: BF 77 39 7E ;
CODE_208189:    STA $45,x                   ; $20:8189: 95 45       ;
CODE_20818B:    LDA $7E3979,x               ; $20:818B: BF 79 39 7E ;
CODE_20818F:    STA $47,x                   ; $20:818F: 95 47       ;
CODE_208191:    LDA $7E397B,x               ; $20:8191: BF 7B 39 7E ;
CODE_208195:    STA $52,x                   ; $20:8195: 95 52       ;
CODE_208197:    LDA #$20                    ; $20:8197: A9 20       ;
CODE_208199:    STA $4D,x                   ; $20:8199: 95 4D       ;
CODE_20819B:    DEX                         ; $20:819B: CA          ;
CODE_20819C:    BPL CODE_20817F             ; $20:819C: 10 E1       ;
CODE_20819E:    STZ $070A                   ; $20:819E: 9C 0A 07    ;
CODE_2081A1:    STZ $0728                   ; $20:81A1: 9C 28 07    ;
CODE_2081A4:    STZ $20                     ; $20:81A4: 64 20       ;
CODE_2081A6:    STZ $9A                     ; $20:81A6: 64 9A       ;
CODE_2081A8:    STZ $59                     ; $20:81A8: 64 59       ;
CODE_2081AA:    STZ $0711                   ; $20:81AA: 9C 11 07    ;
CODE_2081AD:    LDA $0103                   ; $20:81AD: AD 03 01    ;
CODE_2081B0:    BEQ CODE_2081B5             ; $20:81B0: F0 03       ;
CODE_2081B2:    JMP CODE_208251             ; $20:81B2: 4C 51 82    ;

CODE_2081B5:    REP #$20                    ; $20:81B5: C2 20       ;
CODE_2081B7:    LDA $7FFB02                 ; $20:81B7: AF 02 FB 7F ;
CODE_2081BB:    STA $0736                   ; $20:81BB: 8D 36 07    ;
CODE_2081BE:    LDX #$1A                    ; $20:81BE: A2 1A       ;
CODE_2081C0:    LDA $7FFBBC,x               ; $20:81C0: BF BC FB 7F ;
CODE_2081C4:    STA $1D80,x                 ; $20:81C4: 9D 80 1D    ;
CODE_2081C7:    DEX                         ; $20:81C7: CA          ;
CODE_2081C8:    DEX                         ; $20:81C8: CA          ;
CODE_2081C9:    BPL CODE_2081C0             ; $20:81C9: 10 F5       ;
CODE_2081CB:    LDX #$3D                    ; $20:81CB: A2 3D       ;
CODE_2081CD:    LDA $7FFBBC,x               ; $20:81CD: BF BC FB 7F ;
CODE_2081D1:    STA $1D80,x                 ; $20:81D1: 9D 80 1D    ;
CODE_2081D4:    DEX                         ; $20:81D4: CA          ;
CODE_2081D5:    DEX                         ; $20:81D5: CA          ;
CODE_2081D6:    CPX #$21                    ; $20:81D6: E0 21       ;
CODE_2081D8:    BNE CODE_2081CD             ; $20:81D8: D0 F3       ;
CODE_2081DA:    SEP #$20                    ; $20:81DA: E2 20       ;
CODE_2081DC:    LDA $7FFB00                 ; $20:81DC: AF 00 FB 7F ;
CODE_2081E0:    CMP $7FFF02                 ; $20:81E0: CF 02 FF 7F ;
CODE_2081E4:    BEQ CODE_2081E9             ; $20:81E4: F0 03       ;
CODE_2081E6:    JMP CODE_20824E             ; $20:81E6: 4C 4E 82    ;
CODE_2081E9:    LDA $7FFC02                 ; $20:81E9: AF 02 FC 7F ;
CODE_2081ED:    STA $7E3971                 ; $20:81ED: 8F 71 39 7E ;
CODE_2081F1:    REP #$30                    ; $20:81F1: C2 30       ;
CODE_2081F3:    LDX #$0036                  ; $20:81F3: A2 36 00    ;
CODE_2081F6:    LDA $7FFB04,x               ; $20:81F6: BF 04 FB 7F ;
CODE_2081FA:    STA $1EED,x                 ; $20:81FA: 9D ED 1E    ;
CODE_2081FD:    DEX                         ; $20:81FD: CA          ;
CODE_2081FE:    DEX                         ; $20:81FE: CA          ;
CODE_2081FF:    BPL CODE_2081F6             ; $20:81FF: 10 F5       ;
CODE_208201:    LDX #$007E                  ; $20:8201: A2 7E 00    ;
CODE_208204:    LDA $7FFB3C,x               ; $20:8204: BF 3C FB 7F ;
CODE_208208:    STA $1D00,x                 ; $20:8208: 9D 00 1D    ;
CODE_20820B:    DEX                         ; $20:820B: CA          ;
CODE_20820C:    DEX                         ; $20:820C: CA          ;
CODE_20820D:    BPL CODE_208204             ; $20:820D: 10 F5       ;
CODE_20820F:    LDX #$003E                  ; $20:820F: A2 3E 00    ;
CODE_208212:    LDA $0727                   ; $20:8212: AD 27 07    ;
CODE_208215:    AND #$00FF                  ; $20:8215: 29 FF 00    ;
CODE_208218:    INC A                       ; $20:8218: 1A          ;
CODE_208219:    ASL A                       ; $20:8219: 0A          ;
CODE_20821A:    ASL A                       ; $20:821A: 0A          ;
CODE_20821B:    ASL A                       ; $20:821B: 0A          ;
CODE_20821C:    ASL A                       ; $20:821C: 0A          ;
CODE_20821D:    ASL A                       ; $20:821D: 0A          ;
CODE_20821E:    ASL A                       ; $20:821E: 0A          ;
CODE_20821F:    DEC A                       ; $20:821F: 3A          ;
CODE_208220:    DEC A                       ; $20:8220: 3A          ;
CODE_208221:    TAY                         ; $20:8221: A8          ;
CODE_208222:    LDA $1D00,x                 ; $20:8222: BD 00 1D    ;
CODE_208225:    AND.w DATA_218000,y                 ; $20:8225: 39 00 80    ;
CODE_208228:    STA $1D00,x                 ; $20:8228: 9D 00 1D    ;
CODE_20822B:    STA $1D40,x                 ; $20:822B: 9D 40 1D    ;
CODE_20822E:    DEY                         ; $20:822E: 88          ;
CODE_20822F:    DEY                         ; $20:822F: 88          ;
CODE_208230:    DEX                         ; $20:8230: CA          ;
CODE_208231:    DEX                         ; $20:8231: CA          ;
CODE_208232:    BPL CODE_208222             ; $20:8232: 10 EE       ;
CODE_208234:    SEP #$30                    ; $20:8234: E2 30       ;
CODE_208236:    LDA $0727                   ; $20:8236: AD 27 07    ;
CODE_208239:    CMP #$02                    ; $20:8239: C9 02       ;
CODE_20823B:    BNE CODE_20824E             ; $20:823B: D0 11       ;
CODE_20823D:    LDY #$04                    ; $20:823D: A0 04       ;
CODE_20823F:    LDA #$80                    ; $20:823F: A9 80       ;
CODE_208241:    STA $1EED,y                 ; $20:8241: 99 ED 1E    ;
CODE_208244:    LDA #$50                    ; $20:8244: A9 50       ;
CODE_208246:    STA $1EFB,y                 ; $20:8246: 99 FB 1E    ;
CODE_208249:    LDA #$01                    ; $20:8249: A9 01       ;
CODE_20824B:    STA $1F09,y                 ; $20:824B: 99 09 1F    ;
CODE_20824E:    INC $0103                   ; $20:824E: EE 03 01    ;
CODE_208251:    JSL CODE_22E0A9             ; $20:8251: 22 A9 E0 22 ;
CODE_208255:    JSR CODE_20F9EB             ; $20:8255: 20 EB F9    ;
CODE_208258:    LDA #$FF                    ; $20:8258: A9 FF       ;
CODE_20825A:    STA $00                     ; $20:825A: 85 00       ;
CODE_20825C:    STZ $01                     ; $20:825C: 64 01       ;
CODE_20825E:    JSR CODE_20FA0A             ; $20:825E: 20 0A FA    ;
CODE_208261:    LDX $0726                   ; $20:8261: AE 26 07    ;
CODE_208264:    LDA $0747,x                 ; $20:8264: BD 47 07    ;
CODE_208267:    STA $0429                   ; $20:8267: 8D 29 04    ;
CODE_20826A:    LDY #$00                    ; $20:826A: A0 00       ;
CODE_20826C:    LDA $0727               ; $20:826C: AD 27 07    ; World 8 submap 3 spotlight enabler
CODE_20826F:    CMP #$07                ; $20:826F: C9 07       ; Check for world 8
CODE_208271:    BNE CODE_20827A         ; $20:8271: D0 07       ;
CODE_208273:    LDA $45,x               ; $20:8273: B5 45       ; Check for submap #3, indexed by the current player
CODE_208275:    CMP #$02                ; $20:8275: C9 02       ;
CODE_208277:    BNE CODE_20827A         ; $20:8277: D0 01       ;
CODE_208279:    INY                     ; $20:8279: C8          ;
CODE_20827A:    STY $0598               ; $20:827A: 8C 98 05    ;
CODE_20827D:    STZ $070F                   ; $20:827D: 9C 0F 07    ;
CODE_208280:    LDA #$10                    ; $20:8280: A9 10       ;
CODE_208282:    STA $0349                   ; $20:8282: 8D 49 03    ;
CODE_208285:    JSL CODE_29BE21             ; $20:8285: 22 21 BE 29 ;
CODE_208289:    JSR CODE_209683             ; $20:8289: 20 83 96    ;
CODE_20828C:    LDA $05F2                   ; $20:828C: AD F2 05    ;
CODE_20828F:    BNE CODE_20829A             ; $20:828F: D0 09       ;
CODE_208291:    LDX $0726                   ; $20:8291: AE 26 07    ;
CODE_208294:    LDA $7E3992,x               ; $20:8294: BF 92 39 7E ;
CODE_208298:    STA $4B,x                   ; $20:8298: 95 4B       ;
CODE_20829A:    LDY $0726                   ; $20:829A: AC 26 07    ;
CODE_20829D:    LDA $0722,y                 ; $20:829D: B9 22 07    ;
CODE_2082A0:    STA $B7                     ; $20:82A0: 85 B7       ;
CODE_2082A2:    LDA $0724,y                 ; $20:82A2: B9 24 07    ;
CODE_2082A5:    JSL CODE_2097F5             ; $20:82A5: 22 F5 97 20 ;
CODE_2082A9:    STZ $25                     ; $20:82A9: 64 25       ;
CODE_2082AB:    LDA $24                     ; $20:82AB: A5 24       ;
CODE_2082AD:    STA $23                     ; $20:82AD: 85 23       ;
CODE_2082AF:    STZ $1EBF                   ; $20:82AF: 9C BF 1E    ;
CODE_2082B2:    LDA #$20                    ; $20:82B2: A9 20       ;
CODE_2082B4:    STA $0612                   ; $20:82B4: 8D 12 06    ;
CODE_2082B7:    LDA #$02                    ; $20:82B7: A9 02       ;
CODE_2082B9:    JSR CODE_209610             ; $20:82B9: 20 10 96    ;
CODE_2082BC:    JSL CODE_20F58C             ; $20:82BC: 22 8C F5 20 ;
CODE_2082C0:    JSL CODE_29EAA5             ; $20:82C0: 22 A5 EA 29 ;
CODE_2082C4:    JSL CODE_29E766             ; $20:82C4: 22 66 E7 29 ;
CODE_2082C8:    JSL CODE_29E730             ; $20:82C8: 22 30 E7 29 ;
CODE_2082CC:    LDA #$00                    ; $20:82CC: A9 00       ;
CODE_2082CE:    JSR CODE_209610             ; $20:82CE: 20 10 96    ;
CODE_2082D1:    JSR CODE_209CC0             ; $20:82D1: 20 C0 9C    ;
CODE_2082D4:    JSR CODE_2095B9             ; $20:82D4: 20 B9 95    ;
CODE_2082D7:    JSL CODE_2A8B4B             ; $20:82D7: 22 4B 8B 2A ;
CODE_2082DB:    LDY #$0D                    ; $20:82DB: A0 0D       ;
CODE_2082DD:    LDA #$00                    ; $20:82DD: A9 00       ;
CODE_2082DF:    STA $0500,y                 ; $20:82DF: 99 00 05    ;
CODE_2082E2:    DEY                         ; $20:82E2: 88          ;
CODE_2082E3:    BPL CODE_2082DF             ; $20:82E3: 10 FA       ;
CODE_2082E5:    LDA $0727               ; $20:82E5: AD 27 07    ;\
CODE_2082E8:    CMP #$08                ; $20:82E8: C9 08       ; |
CODE_2082EA:    BNE CODE_2082F1         ; $20:82EA: D0 05       ; | If you're in world 9 (warp zone)
CODE_2082EC:    LDA #$2D                ; $20:82EC: A9 2D       ; | Display the "WELCOME TO WARP ZONE" layer 3
CODE_2082EE:    JSR CODE_209610         ; $20:82EE: 20 10 96    ;/
CODE_2082F1:    LDY $0726                   ; $20:82F1: AC 26 07    ;
CODE_2082F4:    LDA $0722,y                 ; $20:82F4: B9 22 07    ;
CODE_2082F7:    STA $0210                   ; $20:82F7: 8D 10 02    ;
CODE_2082FA:    STA $B7                     ; $20:82FA: 85 B7       ;
CODE_2082FC:    LDA $0724,y                 ; $20:82FC: B9 24 07    ;
CODE_2082FF:    STA $0211                   ; $20:82FF: 8D 11 02    ;
CODE_208302:    STA $12                     ; $20:8302: 85 12       ;
CODE_208304:    LDA $0729                   ; $20:8304: AD 29 07    ;
CODE_208307:    BNE CODE_208346             ; $20:8307: D0 3D       ;
CODE_208309:    LDA $05F2                   ; $20:8309: AD F2 05    ;
CODE_20830C:    BNE CODE_208346             ; $20:830C: D0 38       ;
CODE_20830E:    JSL CODE_238000             ; $20:830E: 22 00 80 23 ;
CODE_208312:    LDX #$0E                    ; $20:8312: A2 0E       ;
CODE_208314:    LDA $0726                   ; $20:8314: AD 26 07    ;
CODE_208317:    BEQ CODE_20831A             ; $20:8317: F0 01       ;
CODE_208319:    INX                         ; $20:8319: E8          ;
CODE_20831A:    TXA                         ; $20:831A: 8A          ;
CODE_20831B:    JSR CODE_209610             ; $20:831B: 20 10 96    ;
CODE_20831E:    JSL CODE_238036             ; $20:831E: 22 36 80 23 ;
CODE_208322:    LDA #$00                    ; $20:8322: A9 00       ;
CODE_208324:    JSR CODE_209610             ; $20:8324: 20 10 96    ;
CODE_208327:    LDX $0727               ; $20:8327: AE 27 07    ;\ data bank: $21
CODE_20832A:    LDY.w DATA_21CA0B,x     ; $20:832A: BC 0B CA    ; | Load overworld music
CODE_20832D:    CPX #$04                ; $20:832D: E0 04       ; |
CODE_20832F:    BNE CODE_20833C         ; $20:832F: D0 0B       ; | If world isn't world 5, branch
CODE_208331:    LDX $0726               ; $20:8331: AE 26 07    ; |
CODE_208334:    LDA $45,x               ; $20:8334: B5 45       ; | Check current player's submap
CODE_208336:    BEQ CODE_20833C         ; $20:8336: F0 04       ; | If in World 5's cloud map
CODE_208338:    LDY #$10                ; $20:8338: A0 10       ; | Load music cloud map music (#$10)
CODE_20833A:    BRA CODE_208343         ; $20:833A: 80 07       ; |

CODE_20833C:    LDA $1F55               ; $20:833C: AD 55 1F    ; | If Music box is playing,
CODE_20833F:    BEQ CODE_208343         ; $20:833F: F0 02       ; | play music box music (#$0E).
CODE_208341:    LDY #$0E                ; $20:8341: A0 0E       ; | 
CODE_208343:    STY $1202               ; $20:8343: 8C 02 12    ;/  Otherwise play regular overworld music.
CODE_208346:    STZ $05F2                   ; $20:8346: 9C F2 05    ;
CODE_208349:    LDA #$EF                    ; $20:8349: A9 EF       ;
CODE_20834B:    STA $0216                   ; $20:834B: 8D 16 02    ;
CODE_20834E:    STZ $021A                   ; $20:834E: 9C 1A 02    ;
CODE_208351:    STZ $021B                   ; $20:8351: 9C 1B 02    ;
CODE_208354:    LDA #$C0                    ; $20:8354: A9 C0       ;
CODE_208356:    STA $0100                   ; $20:8356: 8D 00 01    ;
CODE_208359:    JSL CODE_29BD35             ; $20:8359: 22 35 BD 29 ;
CODE_20835D:    LDA #$00                    ; $20:835D: A9 00       ;
CODE_20835F:    STA $7E3955                 ; $20:835F: 8F 55 39 7E ;
CODE_208363:    JSL CODE_29C794             ; $20:8363: 22 94 C7 29 ;
CODE_208367:    PHB                         ; $20:8367: 8B          ;
CODE_208368:    REP #$30                    ; $20:8368: C2 30       ;
CODE_20836A:    LDY #$14A0                  ; $20:836A: A0 A0 14    ;
CODE_20836D:    LDX.w #DATA_3C8B80                  ; $20:836D: A2 80 8B    ;
CODE_208370:    LDA #$001F                  ; $20:8370: A9 1F 00    ;
CODE_208373:    MVN $00, DATA_3C8B80>>16                    ; $20:8373: 54 00 3C    ;
CODE_208376:    SEP #$30                    ; $20:8376: E2 30       ;
CODE_208378:    PLB                         ; $20:8378: AB          ;
CODE_208379:    STZ $4200                   ; $20:8379: 9C 00 42    ;
CODE_20837C:    PHD                         ; $20:837C: 0B          ;
CODE_20837D:    REP #$20                    ; $20:837D: C2 20       ;
CODE_20837F:    LDA #$4300              ; $20:837F: A9 00 43    ; DP: $4300
CODE_208382:    TCD                         ; $20:8382: 5B          ;
CODE_208383:    LDA #$2000                  ; $20:8383: A9 00 20    ;
CODE_208386:    STA $2116                   ; $20:8386: 8D 16 21    ;
CODE_208389:    LDX #$80                    ; $20:8389: A2 80       ;
CODE_20838B:    STX $2115                   ; $20:838B: 8E 15 21    ;
CODE_20838E:    LDA #$1801                  ; $20:838E: A9 01 18    ;
CODE_208391:    STA $30                     ; $20:8391: 85 30       ;
CODE_208393:    STA $40                     ; $20:8393: 85 40       ;
CODE_208395:    STA $50                     ; $20:8395: 85 50       ;
CODE_208397:    LDY #$08                    ; $20:8397: A0 08       ;
CODE_208399:    LDX $0727                   ; $20:8399: AE 27 07    ;
CODE_20839C:    CPX #$04                    ; $20:839C: E0 04       ;
CODE_20839E:    BNE CODE_2083CA             ; $20:839E: D0 2A       ;
CODE_2083A0:    LDA.w #DATA_39C000                  ; $20:83A0: A9 00 C0    ;
CODE_2083A3:    STA $32                     ; $20:83A3: 85 32       ;
CODE_2083A5:    LDX.b #DATA_39C000>>16                      ; $20:83A5: A2 39       ;
CODE_2083A7:    STX $34                     ; $20:83A7: 86 34       ;
CODE_2083A9:    LDA #$1000                  ; $20:83A9: A9 00 10    ;
CODE_2083AC:    STA $35                     ; $20:83AC: 85 35       ;
CODE_2083AE:    STY $420B                   ; $20:83AE: 8C 0B 42    ;
CODE_2083B1:    LDA #$2800                  ; $20:83B1: A9 00 28    ;
CODE_2083B4:    STA $2116                   ; $20:83B4: 8D 16 21    ;
CODE_2083B7:    LDA.w #DATA_31B000                  ; $20:83B7: A9 00 B0    ;
CODE_2083BA:    STA $32                     ; $20:83BA: 85 32       ;
CODE_2083BC:    LDX.b #DATA_31B000>>16                      ; $20:83BC: A2 31       ;
CODE_2083BE:    STX $34                     ; $20:83BE: 86 34       ;
CODE_2083C0:    LDA #$3000                  ; $20:83C0: A9 00 30    ;
CODE_2083C3:    STA $35                     ; $20:83C3: 85 35       ;
CODE_2083C5:    STY $420B                   ; $20:83C5: 8C 0B 42    ;
CODE_2083C8:    BRA CODE_2083DB             ; $20:83C8: 80 11       ;

CODE_2083CA:    LDA.w #DATA_31A000                  ; $20:83CA: A9 00 A0    ;
CODE_2083CD:    STA $32                     ; $20:83CD: 85 32       ;
CODE_2083CF:    LDX.b #DATA_31A000>>16                      ; $20:83CF: A2 31       ;
CODE_2083D1:    STX $34                     ; $20:83D1: 86 34       ;
CODE_2083D3:    LDA #$4000                  ; $20:83D3: A9 00 40    ;
CODE_2083D6:    STA $35                     ; $20:83D6: 85 35       ;
CODE_2083D8:    STY $420B                   ; $20:83D8: 8C 0B 42    ;
CODE_2083DB:    LDA #$5800                  ; $20:83DB: A9 00 58    ;
CODE_2083DE:    STA $2116                   ; $20:83DE: 8D 16 21    ;
CODE_2083E1:    LDA #$8000                  ; $20:83E1: A9 00 80    ;
CODE_2083E4:    STA $42                     ; $20:83E4: 85 42       ;
CODE_2083E6:    LDX.b #DATA_38C000>>16                      ; $20:83E6: A2 38       ;
CODE_2083E8:    STX $44                     ; $20:83E8: 86 44       ;
CODE_2083EA:    STX $54                     ; $20:83EA: 86 54       ;
CODE_2083EC:    LDA #$1000                  ; $20:83EC: A9 00 10    ;
CODE_2083EF:    STA $45                     ; $20:83EF: 85 45       ;
CODE_2083F1:    LDA.w #DATA_38C000                  ; $20:83F1: A9 00 C0    ;
CODE_2083F4:    STA $52                     ; $20:83F4: 85 52       ;
CODE_2083F6:    LDA #$4000                  ; $20:83F6: A9 00 40    ;
CODE_2083F9:    STA $55                     ; $20:83F9: 85 55       ;
CODE_2083FB:    LDX #$30                    ; $20:83FB: A2 30       ;
CODE_2083FD:    STX $420B                   ; $20:83FD: 8E 0B 42    ;
CODE_208400:    SEP #$20                    ; $20:8400: E2 20       ;
CODE_208402:    PLD                         ; $20:8402: 2B          ;
CODE_208403:    LDA #$01                    ; $20:8403: A9 01       ;
CODE_208405:    STA $020E                   ; $20:8405: 8D 0E 02    ;
CODE_208408:    LDA #$11                    ; $20:8408: A9 11       ;
CODE_20840A:    STA $020F                   ; $20:840A: 8D 0F 02    ;
CODE_20840D:    LDA #$09                    ; $20:840D: A9 09       ;
CODE_20840F:    STA $020C                   ; $20:840F: 8D 0C 02    ;
CODE_208412:    STA $2105                   ; $20:8412: 8D 05 21    ;
CODE_208415:    LDA #$17                    ; $20:8415: A9 17       ;
CODE_208417:    STA $0208                   ; $20:8417: 8D 08 02    ;
CODE_20841A:    LDA #$03                    ; $20:841A: A9 03       ;
CODE_20841C:    STA $021E                   ; $20:841C: 8D 1E 02    ;
CODE_20841F:    LDA #$80                    ; $20:841F: A9 80       ;
CODE_208421:    STA $4200                   ; $20:8421: 8D 00 42    ;
CODE_208424:    LDA $0598                   ; $20:8424: AD 98 05    ;
CODE_208427:    BEQ CODE_208452             ; $20:8427: F0 29       ;
CODE_208429:    LDA #$03                    ; $20:8429: A9 03       ;
CODE_20842B:    STA $0291                   ; $20:842B: 8D 91 02    ;
CODE_20842E:    LDA $0729                   ; $20:842E: AD 29 07    ;
CODE_208431:    BEQ CODE_208452             ; $20:8431: F0 1F       ;
CODE_208433:    JSL CODE_2AF9A9             ; $20:8433: 22 A9 F9 2A ;
CODE_208437:    JSL CODE_2AFCAA             ; $20:8437: 22 AA FC 2A ;
CODE_20843B:    LDA #$0F                    ; $20:843B: A9 0F       ;
CODE_20843D:    STA $16                     ; $20:843D: 85 16       ;
CODE_20843F:    LDA $0598                   ; $20:843F: AD 98 05    ;
CODE_208442:    BEQ CODE_208452             ; $20:8442: F0 0E       ;
CODE_208444:    LDA $0729                   ; $20:8444: AD 29 07    ;
CODE_208447:    BEQ CODE_208452             ; $20:8447: F0 09       ;
CODE_208449:    LDA $028C                   ; $20:8449: AD 8C 02    ;
CODE_20844C:    BNE CODE_208452             ; $20:844C: D0 04       ;
CODE_20844E:    JSL CODE_2AFCAA             ; $20:844E: 22 AA FC 2A ;
CODE_208452:    JSR CODE_20801F             ; $20:8452: 20 1F 80    ;
CODE_208455:    JSL CODE_22E0A9             ; $20:8455: 22 A9 E0 22 ;
CODE_208459:    JSL CODE_29BD35             ; $20:8459: 22 35 BD 29 ;
CODE_20845D:    LDA $041C                   ; $20:845D: AD 1C 04    ;
CODE_208460:    BNE CODE_208467             ; $20:8460: D0 05       ;
CODE_208462:    LDA $05F2                   ; $20:8462: AD F2 05    ;
CODE_208465:    BEQ CODE_208475             ; $20:8465: F0 0E       ;
CODE_208467:    JSL CODE_29D8E0             ; $20:8467: 22 E0 D8 29 ;
CODE_20846B:    JSL CODE_2382A3             ; $20:846B: 22 A3 82 23 ;
CODE_20846F:    JSL CODE_238C1B             ; $20:846F: 22 1B 8C 23 ;
CODE_208473:    BRA CODE_20843B             ; $20:8473: 80 C6       ;

CODE_208475:    JSL CODE_2380AB             ; $20:8475: 22 AB 80 23 ;
CODE_208479:    LDA $0729                   ; $20:8479: AD 29 07    ;
CODE_20847C:    CMP #$02                    ; $20:847C: C9 02       ;
CODE_20847E:    BCC CODE_208484             ; $20:847E: 90 04       ;
CODE_208480:    JSL CODE_29EAA5             ; $20:8480: 22 A5 EA 29 ;
CODE_208484:    LDY $0729                   ; $20:8484: AC 29 07    ;
CODE_208487:    CPY #$0D                    ; $20:8487: C0 0D       ;
CODE_208489:    BNE CODE_208491             ; $20:8489: D0 06       ;
CODE_20848B:    LDA $59                     ; $20:848B: A5 59       ;
CODE_20848D:    CMP #$03                    ; $20:848D: C9 03       ;
CODE_20848F:    BEQ CODE_2084A1             ; $20:848F: F0 10       ;
CODE_208491:    CPY #$04                    ; $20:8491: C0 04       ;
CODE_208493:    BEQ CODE_2084A1             ; $20:8493: F0 0C       ;
CODE_208495:    CPY #$0F                    ; $20:8495: C0 0F       ;
CODE_208497:    BCC CODE_20843B             ; $20:8497: 90 A2       ;
CODE_208499:    LDX $0726                   ; $20:8499: AE 26 07    ;
CODE_20849C:    LDA $073F,x                 ; $20:849C: BD 3F 07    ;
CODE_20849F:    BEQ CODE_208516             ; $20:849F: F0 75       ;
CODE_2084A1:    JSL CODE_29E2B6             ; $20:84A1: 22 B6 E2 29 ;
CODE_2084A5:    JSR CODE_20801F             ; $20:84A5: 20 1F 80    ;
CODE_2084A8:    LDA #$80                    ; $20:84A8: A9 80       ;
CODE_2084AA:    STA $16                     ; $20:84AA: 85 16       ;
CODE_2084AC:    STZ $0293                   ; $20:84AC: 9C 93 02    ;
CODE_2084AF:    STZ $020A                   ; $20:84AF: 9C 0A 02    ;
CODE_2084B2:    STZ $420C                   ; $20:84B2: 9C 0C 42    ;
CODE_2084B5:    STZ $4200                   ; $20:84B5: 9C 00 42    ;
CODE_2084B8:    LDA $7E3955                 ; $20:84B8: AF 55 39 7E ;
CODE_2084BC:    INC A                       ; $20:84BC: 1A          ;
CODE_2084BD:    STA $7E3955                 ; $20:84BD: 8F 55 39 7E ;
CODE_2084C1:    LDA $59                     ; $20:84C1: A5 59       ;
CODE_2084C3:    BNE CODE_2084CC             ; $20:84C3: D0 07       ;
CODE_2084C5:    LDA $0729                   ; $20:84C5: AD 29 07    ;
CODE_2084C8:    CMP #$04                    ; $20:84C8: C9 04       ;
CODE_2084CA:    BNE CODE_2084CF             ; $20:84CA: D0 03       ;
CODE_2084CC:    JMP CODE_208251             ; $20:84CC: 4C 51 82    ;

CODE_2084CF:    LDX $0726                   ; $20:84CF: AE 26 07    ;
CODE_2084D2:    LDA $0210                   ; $20:84D2: AD 10 02    ;
CODE_2084D5:    STA $0722,x                 ; $20:84D5: 9D 22 07    ;
CODE_2084D8:    LDA $12                     ; $20:84D8: A5 12       ;
CODE_2084DA:    STA $0724,x                 ; $20:84DA: 9D 24 07    ;
CODE_2084DD:    LDA $43,x                   ; $20:84DD: B5 43       ;
CODE_2084DF:    STA $7E3975,x               ; $20:84DF: 9F 75 39 7E ;
CODE_2084E3:    LDA $45,x                   ; $20:84E3: B5 45       ;
CODE_2084E5:    STA $7E3977,x               ; $20:84E5: 9F 77 39 7E ;
CODE_2084E9:    LDA $47,x                   ; $20:84E9: B5 47       ;
CODE_2084EB:    STA $7E3979,x               ; $20:84EB: 9F 79 39 7E ;
CODE_2084EF:    LDA $52,x                   ; $20:84EF: B5 52       ;
CODE_2084F1:    STA $7E397B,x               ; $20:84F1: 9F 7B 39 7E ;
CODE_2084F5:    STZ $073F,x                 ; $20:84F5: 9E 3F 07    ;
CODE_2084F8:    INX                         ; $20:84F8: E8          ;
CODE_2084F9:    STX $0726                   ; $20:84F9: 8E 26 07    ;
CODE_2084FC:    CPX $072B                   ; $20:84FC: EC 2B 07    ;
CODE_2084FF:    BNE CODE_208504             ; $20:84FF: D0 03       ;
CODE_208501:    STZ $0726                   ; $20:8501: 9C 26 07    ;
CODE_208504:    LDA $0726                   ; $20:8504: AD 26 07    ;
CODE_208507:    TAX                         ; $20:8507: AA          ;
CODE_208508:    LDA $0736,x                 ; $20:8508: BD 36 07    ;
CODE_20850B:    BMI CODE_2084F8             ; $20:850B: 30 EB       ;
CODE_20850D:    STZ $0729                   ; $20:850D: 9C 29 07    ;
CODE_208510:    STZ $078C                   ; $20:8510: 9C 8C 07    ;
CODE_208513:    JMP CODE_2080E5             ; $20:8513: 4C E5 80    ;
CODE_208516:    JSR CODE_20801F             ; $20:8516: 20 1F 80    ;
CODE_208519:    LDX $0726                   ; $20:8519: AE 26 07    ;
CODE_20851C:    LDA $0210                   ; $20:851C: AD 10 02    ;
CODE_20851F:    STA $0722,x                 ; $20:851F: 9D 22 07    ;
CODE_208522:    LDA $12                     ; $20:8522: A5 12       ;
CODE_208524:    STA $0724,x                 ; $20:8524: 9D 24 07    ;
CODE_208527:    LDA $43,x                   ; $20:8527: B5 43       ;
CODE_208529:    STA $7E3975,x               ; $20:8529: 9F 75 39 7E ;
CODE_20852D:    LDA $45,x                   ; $20:852D: B5 45       ;
CODE_20852F:    STA $7E3977,x               ; $20:852F: 9F 77 39 7E ;
CODE_208533:    LDA $47,x                   ; $20:8533: B5 47       ;
CODE_208535:    STA $7E3979,x               ; $20:8535: 9F 79 39 7E ;
CODE_208539:    LDA $52,x                   ; $20:8539: B5 52       ;
CODE_20853B:    STA $7E397B,x               ; $20:853B: 9F 7B 39 7E ;
CODE_20853F:    STZ $20                     ; $20:853F: 64 20       ;
CODE_208541:    STZ $104F                   ; $20:8541: 9C 4F 10    ;
CODE_208544:    STZ $0100                   ; $20:8544: 9C 00 01    ;
CODE_208547:    STZ $0728                   ; $20:8547: 9C 28 07    ;
CODE_20854A:    JSR CODE_2096AA             ; $20:854A: 20 AA 96    ;
CODE_20854D:    LDA #$03                    ; $20:854D: A9 03       ;
CODE_20854F:    STA $1047                   ; $20:854F: 8D 47 10    ;
CODE_208552:    STA $1049                   ; $20:8552: 8D 49 10    ;
CODE_208555:    STA $104A                   ; $20:8555: 8D 4A 10    ;
CODE_208558:    LDA #$0A                    ; $20:8558: A9 0A       ;
CODE_20855A:    STA $1048                   ; $20:855A: 8D 48 10    ;
CODE_20855D:    LDA #$C0                    ; $20:855D: A9 C0       ;
CODE_20855F:    STA $104B                   ; $20:855F: 8D 4B 10    ;
CODE_208562:    LDA #$E0                    ; $20:8562: A9 E0       ;
CODE_208564:    STA $104E                   ; $20:8564: 8D 4E 10    ;
CODE_208567:    LDA #$FF                    ; $20:8567: A9 FF       ;
CODE_208569:    STA $104D                   ; $20:8569: 8D 4D 10    ;
CODE_20856C:    LDA #$1F                    ; $20:856C: A9 1F       ;
CODE_20856E:    STA $1045                   ; $20:856E: 8D 45 10    ;
CODE_208571:    LDA #$E0                    ; $20:8571: A9 E0       ;
CODE_208573:    STA $104C                   ; $20:8573: 8D 4C 10    ;
CODE_208576:    LDA #$17                    ; $20:8576: A9 17       ;
CODE_208578:    STA $1046                   ; $20:8578: 8D 46 10    ;
CODE_20857B:    LDX #$03                    ; $20:857B: A2 03       ;
CODE_20857D:    LDA $24                     ; $20:857D: A5 24       ;
CODE_20857F:    AND #$0F                    ; $20:857F: 29 0F       ;
CODE_208581:    ASL A                       ; $20:8581: 0A          ;
CODE_208582:    CLC                         ; $20:8582: 18          ;
CODE_208583:    ADC $104B,x                 ; $20:8583: 7D 4B 10    ;
CODE_208586:    STA $104B,x                 ; $20:8586: 9D 4B 10    ;
CODE_208589:    LDA $24                     ; $20:8589: A5 24       ;
CODE_20858B:    AND #$10                    ; $20:858B: 29 10       ;
CODE_20858D:    LSR A                       ; $20:858D: 4A          ;
CODE_20858E:    LSR A                       ; $20:858E: 4A          ;
CODE_20858F:    ORA $1047,x                 ; $20:858F: 1D 47 10    ;
CODE_208592:    STA $1047,x                 ; $20:8592: 9D 47 10    ;
CODE_208595:    DEX                         ; $20:8595: CA          ;
CODE_208596:    BPL CODE_20857D             ; $20:8596: 10 E5       ;
CODE_208598:    LDX #$03                    ; $20:8598: A2 03       ;
CODE_20859A:    LDA $24                     ; $20:859A: A5 24       ;
CODE_20859C:    TAY                         ; $20:859C: A8          ;
CODE_20859D:    CLC                         ; $20:859D: 18          ;
CODE_20859E:    ADC #$08                    ; $20:859E: 69 08       ;
CODE_2085A0:    STA $00                     ; $20:85A0: 85 00       ;
CODE_2085A2:    AND #$10                    ; $20:85A2: 29 10       ;
CODE_2085A4:    BEQ CODE_2085A8             ; $20:85A4: F0 02       ;
CODE_2085A6:    LDX #$07                    ; $20:85A6: A2 07       ;
CODE_2085A8:    STX $1049                   ; $20:85A8: 8E 49 10    ;
CODE_2085AB:    TYA                         ; $20:85AB: 98          ;
CODE_2085AC:    AND #$08                    ; $20:85AC: 29 08       ;
CODE_2085AE:    BEQ CODE_2085BA             ; $20:85AE: F0 0A       ;
CODE_2085B0:    LDA $104D                   ; $20:85B0: AD 4D 10    ;
CODE_2085B3:    AND #$1F                    ; $20:85B3: 29 1F       ;
CODE_2085B5:    ORA #$E0                    ; $20:85B5: 09 E0       ;
CODE_2085B7:    STA $104D                   ; $20:85B7: 8D 4D 10    ;
CODE_2085BA:    LDA #$30                    ; $20:85BA: A9 30       ;
CODE_2085BC:    STA $1050                   ; $20:85BC: 8D 50 10    ;
CODE_2085BF:    LDA #$43                    ; $20:85BF: A9 43       ;
CODE_2085C1:    STA $1203                   ; $20:85C1: 8D 03 12    ;
CODE_2085C4:    LDA #$80                ; $20:85C4: A9 80       ;\
CODE_2085C6:    STA $1202               ; $20:85C6: 8D 02 12    ;/Fade out music
CODE_2085C9:    LDY #$01                    ; $20:85C9: A0 01       ;
CODE_2085CB:    LDA $0598                   ; $20:85CB: AD 98 05    ;
CODE_2085CE:    BEQ CODE_2085D2             ; $20:85CE: F0 02       ;
CODE_2085D0:    LDY #$04                    ; $20:85D0: A0 04       ;
CODE_2085D2:    STY $0291                   ; $20:85D2: 8C 91 02    ;
CODE_2085D5:    JSL CODE_2AF9A9             ; $20:85D5: 22 A9 F9 2A ;
CODE_2085D9:    LDA #$01                    ; $20:85D9: A9 01       ;
CODE_2085DB:    STA $20                     ; $20:85DB: 85 20       ;
CODE_2085DD:    JSL CODE_2AFA63             ; $20:85DD: 22 63 FA 2A ;
CODE_2085E1:    JSR CODE_20801F             ; $20:85E1: 20 1F 80    ;
CODE_2085E4:    LDA $1050                   ; $20:85E4: AD 50 10    ;
CODE_2085E7:    BPL CODE_2085D9             ; $20:85E7: 10 F0       ;
CODE_2085E9:    JSR CODE_20801F             ; $20:85E9: 20 1F 80    ;
CODE_2085EC:    LDA $16                     ; $20:85EC: A5 16       ;
CODE_2085EE:    SEC                         ; $20:85EE: 38          ;
CODE_2085EF:    SBC #$02                    ; $20:85EF: E9 02       ;
CODE_2085F1:    STA $16                     ; $20:85F1: 85 16       ;
CODE_2085F3:    BPL CODE_2085E9             ; $20:85F3: 10 F4       ;
CODE_2085F5:    STZ $0285                   ; $20:85F5: 9C 85 02    ;
CODE_2085F8:    STZ $0291                   ; $20:85F8: 9C 91 02    ;
CODE_2085FB:    STZ $0293                   ; $20:85FB: 9C 93 02    ;
CODE_2085FE:    STZ $0200                   ; $20:85FE: 9C 00 02    ;
CODE_208601:    STZ $0201                   ; $20:8601: 9C 01 02    ;
CODE_208604:    STZ $0202                   ; $20:8604: 9C 02 02    ;
CODE_208607:    LDA #$10                    ; $20:8607: A9 10       ;
CODE_208609:    STA $0208                   ; $20:8609: 8D 08 02    ;
CODE_20860C:    STA $020F                   ; $20:860C: 8D 0F 02    ;
CODE_20860F:    STZ $020A                   ; $20:860F: 9C 0A 02    ;
CODE_208612:    LDA #$20                    ; $20:8612: A9 20       ;
CODE_208614:    STA $0205                   ; $20:8614: 8D 05 02    ;
CODE_208617:    LDA #$40                    ; $20:8617: A9 40       ;
CODE_208619:    STA $0206                   ; $20:8619: 8D 06 02    ;
CODE_20861C:    LDA #$80                    ; $20:861C: A9 80       ;
CODE_20861E:    STA $0207                   ; $20:861E: 8D 07 02    ;
CODE_208621:    LDA #$80                    ; $20:8621: A9 80       ;
CODE_208623:    STA $2100                   ; $20:8623: 8D 00 21    ;
CODE_208626:    STA $16                     ; $20:8626: 85 16       ;
CODE_208628:    JSR CODE_20801F             ; $20:8628: 20 1F 80    ;
CODE_20862B:    LDA $001E                   ; $20:862B: AD 1E 00    ;
CODE_20862E:    CMP #$03                    ; $20:862E: C9 03       ;
CODE_208630:    BEQ CODE_20866D             ; $20:8630: F0 3B       ;
CODE_208632:    CMP #$09                    ; $20:8632: C9 09       ;
CODE_208634:    BEQ CODE_208680             ; $20:8634: F0 4A       ;
CODE_208636:    CMP #$0A                    ; $20:8636: C9 0A       ;
CODE_208638:    BEQ CODE_208680             ; $20:8638: F0 46       ;
CODE_20863A:    LDA $00B3                   ; $20:863A: AD B3 00    ;
CODE_20863D:    CMP #$BC                ; $20:863D: C9 BC       ;Check for pipe tile
CODE_20863F:    BNE CODE_208651         ; $20:863F: D0 10       ;If it's not, check for other tiles
CODE_208641:    LDA $0727               ; $20:8641: AD 27 07    ;\
CODE_208644:    CMP #$04                ; $20:8644: C9 04       ; |If we're on a pipe tile, and
CODE_208646:    BNE CODE_208680         ; $20:8646: D0 38       ; |If we're in world 5's submap, show "Player Start!"
CODE_208648:    LDX $0726               ; $20:8648: AE 26 07    ; |
CODE_20864B:    LDA $45,x               ; $20:864B: B5 45       ; |
CODE_20864D:    BNE CODE_208660         ; $20:864D: D0 11       ;/
CODE_20864F:    BRA CODE_208680         ; $20:864F: 80 2F       ;Otherwise just skip Player Start

CODE_208651:    LDA $00B3                   ; $20:8651: AD B3 00    ;
CODE_208654:    CMP #$50                ; $20:8654: C9 50       ;Check for yellow mushroom house tile
CODE_208656:    BEQ CODE_208680             ; $20:8656: F0 28       ;
CODE_208658:    CMP #$E0                ; $20:8658: C9 E0       ;Check for red mushroom house tile
CODE_20865A:    BEQ CODE_208680             ; $20:865A: F0 24       ;
CODE_20865C:    CMP #$E8                ; $20:865C: C9 E8       ;Check for spade tile
CODE_20865E:    BEQ CODE_208680             ; $20:865E: F0 20       ;
CODE_208660:    LDA $0598                   ; $20:8660: AD 98 05    ;
CODE_208663:    BEQ CODE_20866D             ; $20:8663: F0 08       ;
CODE_208665:    LDX #$2C                    ; $20:8665: A2 2C       ;
CODE_208667:    JSR CODE_20801F             ; $20:8667: 20 1F 80    ;
CODE_20866A:    DEX                         ; $20:866A: CA          ;
CODE_20866B:    BNE CODE_208667             ; $20:866B: D0 FA       ;
CODE_20866D:    JSL CODE_2A82EA             ; $20:866D: 22 EA 82 2A ;
CODE_208671:    JSR CODE_20801F             ; $20:8671: 20 1F 80    ;
CODE_208674:    STZ $4200                   ; $20:8674: 9C 00 42    ;
CODE_208677:    JSL CODE_008B47             ; $20:8677: 22 47 8B 00 ;
CODE_20867B:    INC $1503                   ; $20:867B: EE 03 15    ;
CODE_20867E:    BRA CODE_208683             ; $20:867E: 80 03       ;

CODE_208680:    STZ $4200                   ; $20:8680: 9C 00 42    ;
CODE_208683:    LDA #$11                    ; $20:8683: A9 11       ;
CODE_208685:    STA $020F                   ; $20:8685: 8D 0F 02    ;
CODE_208688:    LDA $7E3955                 ; $20:8688: AF 55 39 7E ;
CODE_20868C:    INC A                       ; $20:868C: 1A          ;
CODE_20868D:    STA $7E3955                 ; $20:868D: 8F 55 39 7E ;
CODE_208691:    STZ $12                     ; $20:8691: 64 12       ;
CODE_208693:    STZ $0210                   ; $20:8693: 9C 10 02    ;
CODE_208696:    STZ $0211                   ; $20:8696: 9C 11 02    ;
CODE_208699:    STZ $13                     ; $20:8699: 64 13       ;
CODE_20869B:    STZ $0216                   ; $20:869B: 9C 16 02    ;
CODE_20869E:    STZ $0217                   ; $20:869E: 9C 17 02    ;
CODE_2086A1:    STZ $23                     ; $20:86A1: 64 23       ;
CODE_2086A3:    STZ $24                     ; $20:86A3: 64 24       ;
CODE_2086A5:    STZ $25                     ; $20:86A5: 64 25       ;
CODE_2086A7:    LDA #$00                    ; $20:86A7: A9 00       ;
CODE_2086A9:    STA $7E3966                 ; $20:86A9: 8F 66 39 7E ;
CODE_2086AD:    STA $7E3965                 ; $20:86AD: 8F 65 39 7E ;
CODE_2086B1:    STA $7E3964                 ; $20:86B1: 8F 64 39 7E ;
CODE_2086B5:    STZ $00                     ; $20:86B5: 64 00       ;
CODE_2086B7:    LDX #$05                    ; $20:86B7: A2 05       ;
CODE_2086B9:    STX $01                     ; $20:86B9: 86 01       ;
CODE_2086BB:    LDY #$9D                    ; $20:86BB: A0 9D       ;
CODE_2086BD:    STA ($00),y                 ; $20:86BD: 91 00       ;
CODE_2086BF:    DEY                         ; $20:86BF: 88          ;
CODE_2086C0:    BNE CODE_2086BD             ; $20:86C0: D0 FB       ;
CODE_2086C2:    STA ($00),y                 ; $20:86C2: 91 00       ;
CODE_2086C4:    LDA $1D                     ; $20:86C4: A5 1D       ;
CODE_2086C6:    BEQ CODE_2086F7             ; $20:86C6: F0 2F       ;
CODE_2086C8:    LDA $B3                     ; $20:86C8: A5 B3       ;
CODE_2086CA:    CMP #$BC                    ; $20:86CA: C9 BC       ;
CODE_2086CC:    BEQ CODE_2086F7             ; $20:86CC: F0 29       ;
CODE_2086CE:    LDA #$12                    ; $20:86CE: A9 12       ;
CODE_2086D0:    STA $070A                   ; $20:86D0: 8D 0A 07    ;
CODE_2086D3:    JSR CODE_20960F             ; $20:86D3: 20 0F 96    ;
CODE_2086D6:    INC $1F26                   ; $20:86D6: EE 26 1F    ;
CODE_2086D9:    LDA $1F26                   ; $20:86D9: AD 26 1F    ;
CODE_2086DC:    CMP #$0C                    ; $20:86DC: C9 0C       ;
CODE_2086DE:    BNE CODE_2086E5             ; $20:86DE: D0 05       ;
CODE_2086E0:    LDA #$00                    ; $20:86E0: A9 00       ;
CODE_2086E2:    STA $1F26                   ; $20:86E2: 8D 26 1F    ;
CODE_2086E5:    ASL A                       ; $20:86E5: 0A          ;
CODE_2086E6:    TAX                         ; $20:86E6: AA          ;
CODE_2086E7:    LDA.w DATA_21A381,x                 ; $20:86E7: BD 81 A3    ;
CODE_2086EA:    STA $2B                     ; $20:86EA: 85 2B       ;
CODE_2086EC:    LDA.w DATA_21A381+1,x                   ; $20:86EC: BD 82 A3    ;
CODE_2086EF:    STA $2C                     ; $20:86EF: 85 2C       ;
CODE_2086F1:    LDA.b #DATA_21A381>>16                      ; $20:86F1: A9 21       ;
CODE_2086F3:    STA $2D                     ; $20:86F3: 85 2D       ;
CODE_2086F5:    BRA CODE_2086FB             ; $20:86F5: 80 04       ;

CODE_2086F7:    JSL CODE_29BF84             ; $20:86F7: 22 84 BF 29 ;
CODE_2086FB:    LDA $0727                   ; $20:86FB: AD 27 07    ;
CODE_2086FE:    CMP #$08                    ; $20:86FE: C9 08       ;
CODE_208700:    BNE CODE_208710             ; $20:8700: D0 0E       ;
CODE_208702:    LDA #$80                ; $20:8702: A9 80       ;\
CODE_208704:    STA $1202               ; $20:8704: 8D 02 12    ;/Fade out music
CODE_208707:    LDA $042A                   ; $20:8707: AD 2A 04    ;
CODE_20870A:    STA $0727                   ; $20:870A: 8D 27 07    ;
CODE_20870D:    JMP CODE_2080B9             ; $20:870D: 4C B9 80    ;

CODE_208710:    LDY $070A                   ; $20:8710: AC 0A 07    ;
CODE_208713:    LDA.w DATA_21C975,y                 ; $20:8713: B9 75 C9    ;
CODE_208716:    STA $0739                   ; $20:8716: 8D 39 07    ;
CODE_208719:    CPY #$07                    ; $20:8719: C0 07       ;
CODE_20871B:    BNE CODE_20873C             ; $20:871B: D0 1F       ;
CODE_20871D:    LDA $31                     ; $20:871D: A5 31       ;
CODE_20871F:    STA $0420                   ; $20:871F: 8D 20 04    ;
CODE_208722:    LDA $32                     ; $20:8722: A5 32       ;
CODE_208724:    STA $0421                   ; $20:8724: 8D 21 04    ;
CODE_208727:    LDA.b #DATA_27E5E3      ; $20:8727: A9 E3       ;
CODE_208729:    STA $31                 ; $20:8729: 85 31       ;Store pointer $27:E5E3 to $31 and $023A
CODE_20872B:    STA $023A               ; $20:872B: 8D 3A 02    ;
CODE_20872E:    LDA.b #DATA_27E5E3>>8   ; $20:872E: A9 E5       ;
CODE_208730:    STA $32                 ; $20:8730: 85 32       ;
CODE_208732:    STA $023B               ; $20:8732: 8D 3B 02    ;
CODE_208735:    LDA.b #DATA_27E5E3>>16  ; $20:8735: A9 27       ;
CODE_208737:    STA $33                 ; $20:8737: 85 33       ;
CODE_208739:    STA $023C               ; $20:8739: 8D 3C 02    ;
CODE_20873C:    LDY #$7F                    ; $20:873C: A0 7F       ;
CODE_20873E:    LDA #$00                    ; $20:873E: A9 00       ;
CODE_208740:    STA $1E04,y                 ; $20:8740: 99 04 1E    ;
CODE_208743:    DEY                         ; $20:8743: 88          ;
CODE_208744:    BPL CODE_208740             ; $20:8744: 10 FA       ;
CODE_208746:    LDY #$80                    ; $20:8746: A0 80       ;
CODE_208748:    LDA #$00                    ; $20:8748: A9 00       ;
CODE_20874A:    STA $1EB8                   ; $20:874A: 8D B8 1E    ;
CODE_20874D:    STA $0043,y                 ; $20:874D: 99 43 00    ;
CODE_208750:    DEY                         ; $20:8750: 88          ;
CODE_208751:    BNE CODE_20874D             ; $20:8751: D0 FA       ;
CODE_208753:    STZ $1CF2                   ; $20:8753: 9C F2 1C    ;
CODE_208756:    LDA $070A                   ; $20:8756: AD 0A 07    ;
CODE_208759:    CMP #$10                    ; $20:8759: C9 10       ;
CODE_20875B:    BEQ CODE_208777             ; $20:875B: F0 1A       ;
CODE_20875D:    CMP #$11                    ; $20:875D: C9 11       ;
CODE_20875F:    BEQ CODE_208777             ; $20:875F: F0 16       ;
CODE_208761:    JSL CODE_209C00             ; $20:8761: 22 00 9C 20 ;
CODE_208765:    JSL CODE_22E0A9             ; $20:8765: 22 A9 E0 22 ;
CODE_208769:    JSR CODE_209683             ; $20:8769: 20 83 96    ;
CODE_20876C:    LDA #$26                    ; $20:876C: A9 26       ;
CODE_20876E:    STA $0612                   ; $20:876E: 8D 12 06    ;
CODE_208771:    STZ $01                     ; $20:8771: 64 01       ;
CODE_208773:    LDA #$FF                    ; $20:8773: A9 FF       ;
CODE_208775:    STA $00                     ; $20:8775: 85 00       ;
CODE_208777:    JSR CODE_20FA17             ; $20:8777: 20 17 FA    ;
CODE_20877A:    JSL CODE_22E0A9             ; $20:877A: 22 A9 E0 22 ;
CODE_20877E:    JSL CODE_20AC81             ; $20:877E: 22 81 AC 20 ;
CODE_208782:    LDA $070A                   ; $20:8782: AD 0A 07    ;
CODE_208785:    CMP #$10                    ; $20:8785: C9 10       ;
CODE_208787:    BEQ CODE_20878C             ; $20:8787: F0 03       ;
CODE_208789:    JMP CODE_2087F0             ; $20:8789: 4C F0 87    ;

CODE_20878C:    LDA #$AE                    ; $20:878C: A9 AE       ;
CODE_20878E:    STA $00                     ; $20:878E: 85 00       ;
CODE_208790:    LDA #$02                    ; $20:8790: A9 02       ;
CODE_208792:    STA $01                     ; $20:8792: 85 01       ;
CODE_208794:    JSR CODE_20FA1A             ; $20:8794: 20 1A FA    ;
CODE_208797:    JSL CODE_20AF85             ; $20:8797: 22 85 AF 20 ;
CODE_20879B:    JSL CODE_239D00             ; $20:879B: 22 00 9D 23 ;
CODE_20879F:    JSL CODE_239871             ; $20:879F: 22 71 98 23 ;
CODE_2087A3:    LDA #$07                    ; $20:87A3: A9 07       ;
CODE_2087A5:    JSR CODE_209610             ; $20:87A5: 20 10 96    ;
CODE_2087A8:    LDA #$02                    ; $20:87A8: A9 02       ;
CODE_2087AA:    JSR CODE_209610             ; $20:87AA: 20 10 96    ;
CODE_2087AD:    JSL CODE_20F58C             ; $20:87AD: 22 8C F5 20 ;
CODE_2087B1:    JSL CODE_29EAA5             ; $20:87B1: 22 A5 EA 29 ;
CODE_2087B5:    JSL CODE_29E766             ; $20:87B5: 22 66 E7 29 ;
CODE_2087B9:    JSL CODE_29E730             ; $20:87B9: 22 30 E7 29 ;
CODE_2087BD:    LDA #$00                    ; $20:87BD: A9 00       ;
CODE_2087BF:    JSR CODE_209610             ; $20:87BF: 20 10 96    ;
CODE_2087C2:    LDA #$C0                    ; $20:87C2: A9 C0       ;
CODE_2087C4:    STA $0100                   ; $20:87C4: 8D 00 01    ;
CODE_2087C7:    JSR CODE_20F9EB             ; $20:87C7: 20 EB F9    ;
CODE_2087CA:    LDA #$01                    ; $20:87CA: A9 01       ;
CODE_2087CC:    STA $021B                   ; $20:87CC: 8D 1B 02    ;
CODE_2087CF:    LDA #$00                    ; $20:87CF: A9 00       ;
CODE_2087D1:    STA $7E3955                 ; $20:87D1: 8F 55 39 7E ;
CODE_2087D5:    STA $100B                   ; $20:87D5: 8D 0B 10    ;
CODE_2087D8:    JSL CODE_29C794             ; $20:87D8: 22 94 C7 29 ;
CODE_2087DC:    JSL CODE_29E29D             ; $20:87DC: 22 9D E2 29 ;
CODE_2087E0:    LDA #$02                    ; $20:87E0: A9 02       ;
CODE_2087E2:    STA $0427                   ; $20:87E2: 8D 27 04    ;
CODE_2087E5:    JSR CODE_20801F             ; $20:87E5: 20 1F 80    ;
CODE_2087E8:    LDA #$C0                    ; $20:87E8: A9 C0       ;
CODE_2087EA:    STA $0100                   ; $20:87EA: 8D 00 01    ;
CODE_2087ED:    JMP CODE_208FA5             ; $20:87ED: 4C A5 8F    ;

CODE_2087F0:    CMP #$11                    ; $20:87F0: C9 11       ;
CODE_2087F2:    BEQ CODE_2087F7             ; $20:87F2: F0 03       ;
CODE_2087F4:    JMP CODE_208876             ; $20:87F4: 4C 76 88    ;
CODE_2087F7:    JSL CODE_20AF6F             ; $20:87F7: 22 6F AF 20 ;
CODE_2087FB:    LDA #$0E                    ; $20:87FB: A9 0E       ;
CODE_2087FD:    STA $1028                   ; $20:87FD: 8D 28 10    ;
CODE_208800:    STZ $1041                   ; $20:8800: 9C 41 10    ;
CODE_208803:    LDA #$FF                    ; $20:8803: A9 FF       ;
CODE_208805:    STA $00                     ; $20:8805: 85 00       ;
CODE_208807:    STZ $01                     ; $20:8807: 64 01       ;
CODE_208809:    JSR CODE_20FA1A             ; $20:8809: 20 1A FA    ;
CODE_20880C:    LDA #$0D                    ; $20:880C: A9 0D       ;
CODE_20880E:    JSR CODE_209610             ; $20:880E: 20 10 96    ;
CODE_208811:    JSL CODE_239DE8             ; $20:8811: 22 E8 9D 23 ;
CODE_208815:    LDA $28                     ; $20:8815: A5 28       ;
CODE_208817:    JSR CODE_209610             ; $20:8817: 20 10 96    ;
CODE_20881A:    LDA $1041                   ; $20:881A: AD 41 10    ;
CODE_20881D:    CMP #$03                    ; $20:881D: C9 03       ;
CODE_20881F:    BNE CODE_208811             ; $20:881F: D0 F0       ;
CODE_208821:    LDA #$02                    ; $20:8821: A9 02       ;
CODE_208823:    JSR CODE_209610             ; $20:8823: 20 10 96    ;
CODE_208826:    JSL CODE_20F58C             ; $20:8826: 22 8C F5 20 ;
CODE_20882A:    JSL CODE_29EAA5             ; $20:882A: 22 A5 EA 29 ;
CODE_20882E:    JSL CODE_29E766             ; $20:882E: 22 66 E7 29 ;
CODE_208832:    JSL CODE_29E730             ; $20:8832: 22 30 E7 29 ;
CODE_208836:    LDA #$00                    ; $20:8836: A9 00       ;
CODE_208838:    JSR CODE_209610             ; $20:8838: 20 10 96    ;
CODE_20883B:    LDA #$C0                    ; $20:883B: A9 C0       ;
CODE_20883D:    STA $0100                   ; $20:883D: 8D 00 01    ;
CODE_208840:    JSR CODE_20F9EB             ; $20:8840: 20 EB F9    ;
CODE_208843:    LDA #$01                    ; $20:8843: A9 01       ;
CODE_208845:    STA $021B                   ; $20:8845: 8D 1B 02    ;
CODE_208848:    LDA #$00                    ; $20:8848: A9 00       ;
CODE_20884A:    STA $7E3955                 ; $20:884A: 8F 55 39 7E ;
CODE_20884E:    JSL CODE_29C794             ; $20:884E: 22 94 C7 29 ;
CODE_208852:    LDA #$80                    ; $20:8852: A9 80       ;
CODE_208854:    STA $4200                   ; $20:8854: 8D 00 42    ;
CODE_208857:    JSL CODE_29E29D             ; $20:8857: 22 9D E2 29 ;
CODE_20885B:    JSR CODE_20801F             ; $20:885B: 20 1F 80    ;
CODE_20885E:    JSL CODE_239E62             ; $20:885E: 22 62 9E 23 ;
CODE_208862:    JSL CODE_29EAA5             ; $20:8862: 22 A5 EA 29 ;
CODE_208866:    LDA $14                     ; $20:8866: A5 14       ;
CODE_208868:    BEQ CODE_20885B             ; $20:8868: F0 F1       ;
CODE_20886A:    LDA #$80                ; $20:886A: A9 80       ;\
CODE_20886C:    STA $1202               ; $20:886C: 8D 02 12    ;/Fade out music
CODE_20886F:    JSL CODE_29E2B6             ; $20:886F: 22 B6 E2 29 ;
CODE_208873:    JMP CODE_208FA5             ; $20:8873: 4C A5 8F    ;

CODE_208876:    CMP #$12                    ; $20:8876: C9 12       ;
CODE_208878:    BNE CODE_20887D             ; $20:8878: D0 03       ;
CODE_20887A:    JMP CODE_2094AE             ; $20:887A: 4C AE 94    ;

CODE_20887D:    STZ $0427                   ; $20:887D: 9C 27 04    ;
CODE_208880:    LDX #$C0                    ; $20:8880: A2 C0       ;
CODE_208882:    LDY $0425                   ; $20:8882: AC 25 04    ;
CODE_208885:    BEQ CODE_208889             ; $20:8885: F0 02       ;
CODE_208887:    LDX #$80                    ; $20:8887: A2 80       ;
CODE_208889:    STX $0100                   ; $20:8889: 8E 00 01    ;
CODE_20888C:    LDA #$15                    ; $20:888C: A9 15       ;
CODE_20888E:    STA $0208                   ; $20:888E: 8D 08 02    ;
CODE_208891:    LDA #$02                    ; $20:8891: A9 02       ;
CODE_208893:    STA $0209                   ; $20:8893: 8D 09 02    ;
CODE_208896:    LDA #$02                    ; $20:8896: A9 02       ;
CODE_208898:    STA $0203                   ; $20:8898: 8D 03 02    ;
CODE_20889B:    LDA #$20                    ; $20:889B: A9 20       ;
CODE_20889D:    STA $0204                   ; $20:889D: 8D 04 02    ;
CODE_2088A0:    LDX #$17                    ; $20:88A0: A2 17       ;
CODE_2088A2:    LDA $02BF                   ; $20:88A2: AD BF 02    ;
CODE_2088A5:    CMP #$01                    ; $20:88A5: C9 01       ;
CODE_2088A7:    BEQ CODE_2088AD             ; $20:88A7: F0 04       ;
CODE_2088A9:    CMP #$07                    ; $20:88A9: C9 07       ;
CODE_2088AB:    BNE CODE_2088C3             ; $20:88AB: D0 16       ;
CODE_2088AD:    STX $0208                   ; $20:88AD: 8E 08 02    ;
CODE_2088B0:    JSL CODE_22E134             ; $20:88B0: 22 34 E1 22 ;
CODE_2088B4:    STZ $021A                   ; $20:88B4: 9C 1A 02    ;
CODE_2088B7:    LDA #$01                    ; $20:88B7: A9 01       ;
CODE_2088B9:    STA $021B                   ; $20:88B9: 8D 1B 02    ;
CODE_2088BC:    LDA #$C0                    ; $20:88BC: A9 C0       ;
CODE_2088BE:    STA $0100                   ; $20:88BE: 8D 00 01    ;
CODE_2088C1:    BRA CODE_2088DD             ; $20:88C1: 80 1A       ;

CODE_2088C3:    CMP #$06                    ; $20:88C3: C9 06       ;
CODE_2088C5:    BNE CODE_2088D0             ; $20:88C5: D0 09       ;
CODE_2088C7:    STX $0208                   ; $20:88C7: 8E 08 02    ;
CODE_2088CA:    JSL CODE_22E499             ; $20:88CA: 22 99 E4 22 ;
CODE_2088CE:    BRA CODE_2088DD             ; $20:88CE: 80 0D       ;

CODE_2088D0:    CMP #$05                    ; $20:88D0: C9 05       ;
CODE_2088D2:    BNE CODE_2088F6             ; $20:88D2: D0 22       ;
CODE_2088D4:    LDX #$17                    ; $20:88D4: A2 17       ;
CODE_2088D6:    STX $0208                   ; $20:88D6: 8E 08 02    ;
CODE_2088D9:    JSL CODE_22E483             ; $20:88D9: 22 83 E4 22 ;
CODE_2088DD:    LDA #$64                    ; $20:88DD: A9 64       ;
CODE_2088DF:    STA $0204                   ; $20:88DF: 8D 04 02    ;
CODE_2088E2:    LDA $02BF                   ; $20:88E2: AD BF 02    ;
CODE_2088E5:    CMP #$07                    ; $20:88E5: C9 07       ;
CODE_2088E7:    BNE CODE_2088EE             ; $20:88E7: D0 05       ;
CODE_2088E9:    LDA #$24                    ; $20:88E9: A9 24       ;
CODE_2088EB:    STA $0204                   ; $20:88EB: 8D 04 02    ;
CODE_2088EE:    LDA #$13                    ; $20:88EE: A9 13       ;
CODE_2088F0:    STA $0209                   ; $20:88F0: 8D 09 02    ;
CODE_2088F3:    JMP CODE_208982             ; $20:88F3: 4C 82 89    ;

CODE_2088F6:    CMP #$02                    ; $20:88F6: C9 02       ;
CODE_2088F8:    BNE CODE_208901             ; $20:88F8: D0 07       ;
CODE_2088FA:    JSL CODE_22E2E4             ; $20:88FA: 22 E4 E2 22 ;
CODE_2088FE:    JMP CODE_208982             ; $20:88FE: 4C 82 89    ;

CODE_208901:    CMP #$0E                    ; $20:8901: C9 0E       ;
CODE_208903:    BNE CODE_20890B             ; $20:8903: D0 06       ;
CODE_208905:    JSL CODE_22E5AC             ; $20:8905: 22 AC E5 22 ;
CODE_208909:    BRA CODE_208982             ; $20:8909: 80 77       ;

CODE_20890B:    CMP #$09                    ; $20:890B: C9 09       ;
CODE_20890D:    BNE CODE_208915             ; $20:890D: D0 06       ;
CODE_20890F:    JSL CODE_22E4D1             ; $20:890F: 22 D1 E4 22 ;
CODE_208913:    BRA CODE_208935             ; $20:8913: 80 20       ;

CODE_208915:    CMP #$0F                    ; $20:8915: C9 0F       ;
CODE_208917:    BNE CODE_20891F             ; $20:8917: D0 06       ;
CODE_208919:    JSL CODE_22E64D             ; $20:8919: 22 4D E6 22 ;
CODE_20891D:    BRA CODE_208935             ; $20:891D: 80 16       ;

CODE_20891F:    CMP #$0A                    ; $20:891F: C9 0A       ;
CODE_208921:    BNE CODE_208929             ; $20:8921: D0 06       ;
CODE_208923:    JSL CODE_22E3E5             ; $20:8923: 22 E5 E3 22 ;
CODE_208927:    BRA CODE_208935             ; $20:8927: 80 0C       ;

CODE_208929:    CMP #$0C                    ; $20:8929: C9 0C       ;
CODE_20892B:    BEQ CODE_208935             ; $20:892B: F0 08       ;
CODE_20892D:    CMP #$0B                    ; $20:892D: C9 0B       ;
CODE_20892F:    BNE CODE_208941             ; $20:892F: D0 10       ;
CODE_208931:    JSL CODE_22E4F5             ; $20:8931: 22 F5 E4 22 ;
CODE_208935:    LDA #$11                    ; $20:8935: A9 11       ;
CODE_208937:    STA $0208                   ; $20:8937: 8D 08 02    ;
CODE_20893A:    LDA #$06                    ; $20:893A: A9 06       ;
CODE_20893C:    STA $0209                   ; $20:893C: 8D 09 02    ;
CODE_20893F:    BRA CODE_208982             ; $20:893F: 80 41       ;

CODE_208941:    CMP #$0D                    ; $20:8941: C9 0D       ;
CODE_208943:    BNE CODE_208953             ; $20:8943: D0 0E       ;
CODE_208945:    JSL CODE_22E518             ; $20:8945: 22 18 E5 22 ;
CODE_208949:    STZ $021A                   ; $20:8949: 9C 1A 02    ;
CODE_20894C:    LDA #$01                    ; $20:894C: A9 01       ;
CODE_20894E:    STA $021B                   ; $20:894E: 8D 1B 02    ;
CODE_208951:    BRA CODE_208982             ; $20:8951: 80 2F       ;

CODE_208953:    CMP #$03                    ; $20:8953: C9 03       ;
CODE_208955:    BEQ CODE_20896F             ; $20:8955: F0 18       ;
CODE_208957:    CMP #$04                    ; $20:8957: C9 04       ;
CODE_208959:    BEQ CODE_20896F             ; $20:8959: F0 14       ;
CODE_20895B:    CMP #$08                    ; $20:895B: C9 08       ;
CODE_20895D:    BNE CODE_208982             ; $20:895D: D0 23       ;
CODE_20895F:    JSL CODE_22E4B1             ; $20:895F: 22 B1 E4 22 ;
CODE_208963:    LDA #$24                    ; $20:8963: A9 24       ;
CODE_208965:    STA $0204                   ; $20:8965: 8D 04 02    ;
CODE_208968:    LDA #$13                    ; $20:8968: A9 13       ;
CODE_20896A:    STA $0209                   ; $20:896A: 8D 09 02    ;
CODE_20896D:    BRA CODE_208982             ; $20:896D: 80 13       ;

CODE_20896F:    JSL CODE_22E338             ; $20:896F: 22 38 E3 22 ;
CODE_208973:    LDA #$22                    ; $20:8973: A9 22       ;
CODE_208975:    STA $0204                   ; $20:8975: 8D 04 02    ;
CODE_208978:    LDA #$13                    ; $20:8978: A9 13       ;
CODE_20897A:    STA $0208                   ; $20:897A: 8D 08 02    ;
CODE_20897D:    LDA #$15                    ; $20:897D: A9 15       ;
CODE_20897F:    STA $0209                   ; $20:897F: 8D 09 02    ;
CODE_208982:    LDA #$02                    ; $20:8982: A9 02       ;
CODE_208984:    JSR CODE_209610             ; $20:8984: 20 10 96    ;
CODE_208987:    JSL CODE_20F58C             ; $20:8987: 22 8C F5 20 ;
CODE_20898B:    JSL CODE_29EAA5             ; $20:898B: 22 A5 EA 29 ;
CODE_20898F:    JSL CODE_29E766             ; $20:898F: 22 66 E7 29 ;
CODE_208993:    JSL CODE_29E730             ; $20:8993: 22 30 E7 29 ;
CODE_208997:    LDA #$00                    ; $20:8997: A9 00       ;
CODE_208999:    JSR CODE_209610             ; $20:8999: 20 10 96    ;
CODE_20899C:    INC $24                     ; $20:899C: E6 24       ;
CODE_20899E:    INC $24                     ; $20:899E: E6 24       ;
CODE_2089A0:    DEC $23                     ; $20:89A0: C6 23       ;
CODE_2089A2:    DEC $23                     ; $20:89A2: C6 23       ;
CODE_2089A4:    JSR CODE_209CC0             ; $20:89A4: 20 C0 9C    ;
CODE_2089A7:    LDA #$40                    ; $20:89A7: A9 40       ;
CODE_2089A9:    STA $0612                   ; $20:89A9: 8D 12 06    ;
CODE_2089AC:    JSL CODE_2AB48E             ; $20:89AC: 22 8E B4 2A ;
CODE_2089B0:    LDA $070A                   ; $20:89B0: AD 0A 07    ;
CODE_2089B3:    CMP #$0F                    ; $20:89B3: C9 0F       ;
CODE_2089B5:    BNE CODE_2089BA             ; $20:89B5: D0 03       ;
CODE_2089B7:    JMP CODE_208A48             ; $20:89B7: 4C 48 8A    ;

CODE_2089BA:    JSL CODE_29EB42             ; $20:89BA: 22 42 EB 29 ;
CODE_2089BE:    LDX $0726                   ; $20:89BE: AE 26 07    ;
CODE_2089C1:    LDA $073D,x                 ; $20:89C1: BD 3D 07    ;
CODE_2089C4:    BNE CODE_2089D6             ; $20:89C4: D0 10       ;
CODE_2089C6:    LDA $05F2                   ; $20:89C6: AD F2 05    ;
CODE_2089C9:    BNE CODE_2089D9             ; $20:89C9: D0 0E       ;
CODE_2089CB:    LDA $0414                   ; $20:89CB: AD 14 04    ;
CODE_2089CE:    BNE CODE_2089D9             ; $20:89CE: D0 09       ;
CODE_2089D0:    LDA.w DATA_21C976                   ; $20:89D0: AD 76 C9    ;
CODE_2089D3:    STA $0739                   ; $20:89D3: 8D 39 07    ;
CODE_2089D6:    JMP CODE_208A48             ; $20:89D6: 4C 48 8A    ;

CODE_2089D9:    LDA $7E398C                 ; $20:89D9: AF 8C 39 7E ;
CODE_2089DD:    STA $0210                   ; $20:89DD: 8D 10 02    ;
CODE_2089E0:    STA $0212                   ; $20:89E0: 8D 12 02    ;
CODE_2089E3:    LDA $7E398B                 ; $20:89E3: AF 8B 39 7E ;
CODE_2089E7:    STA $12                     ; $20:89E7: 85 12       ;
CODE_2089E9:    STA $0211                   ; $20:89E9: 8D 11 02    ;
CODE_2089EC:    LSR A                       ; $20:89EC: 4A          ;
CODE_2089ED:    STA $0213                   ; $20:89ED: 8D 13 02    ;
CODE_2089F0:    ROR $0212                   ; $20:89F0: 6E 12 02    ;
CODE_2089F3:    LDA $7E398E                 ; $20:89F3: AF 8E 39 7E ;
CODE_2089F7:    STA $0216                   ; $20:89F7: 8D 16 02    ;
CODE_2089FA:    LDA $7E398D                 ; $20:89FA: AF 8D 39 7E ;
CODE_2089FE:    STA $13                     ; $20:89FE: 85 13       ;
CODE_208A00:    STA $0217                   ; $20:8A00: 8D 17 02    ;
CODE_208A03:    REP #$20                    ; $20:8A03: C2 20       ;
CODE_208A05:    LDA $0216                   ; $20:8A05: AD 16 02    ;
CODE_208A08:    LSR A                       ; $20:8A08: 4A          ;
CODE_208A09:    LSR A                       ; $20:8A09: 4A          ;
CODE_208A0A:    STA $0218                   ; $20:8A0A: 8D 18 02    ;
CODE_208A0D:    LDA $0216                   ; $20:8A0D: AD 16 02    ;
CODE_208A10:    SEC                         ; $20:8A10: 38          ;
CODE_208A11:    SBC $0218                   ; $20:8A11: ED 18 02    ;
CODE_208A14:    STA $0218                   ; $20:8A14: 8D 18 02    ;
CODE_208A17:    SEP #$20                    ; $20:8A17: E2 20       ;
CODE_208A19:    STZ $05F2                   ; $20:8A19: 9C F2 05    ;
CODE_208A1C:    STZ $0414                   ; $20:8A1C: 9C 14 04    ;
CODE_208A1F:    LDA $0350                   ; $20:8A1F: AD 50 03    ;
CODE_208A22:    CMP #$02                    ; $20:8A22: C9 02       ;
CODE_208A24:    BEQ CODE_208A2A             ; $20:8A24: F0 04       ;
CODE_208A26:    CMP #$23                    ; $20:8A26: C9 23       ;
CODE_208A28:    BNE CODE_208A2F             ; $20:8A28: D0 05       ;
CODE_208A2A:    LDA #$40                    ; $20:8A2A: A9 40       ;
CODE_208A2C:    STA $0218                   ; $20:8A2C: 8D 18 02    ;
CODE_208A2F:    CMP #$03                    ; $20:8A2F: C9 03       ;
CODE_208A31:    BEQ CODE_208A37             ; $20:8A31: F0 04       ;
CODE_208A33:    CMP #$24                    ; $20:8A33: C9 24       ;
CODE_208A35:    BNE CODE_208A3D             ; $20:8A35: D0 06       ;
CODE_208A37:    STZ $0218                   ; $20:8A37: 9C 18 02    ;
CODE_208A3A:    STZ $0219                   ; $20:8A3A: 9C 19 02    ;
CODE_208A3D:    LDA $034F                   ; $20:8A3D: AD 4F 03    ;
CODE_208A40:    BEQ CODE_208A48             ; $20:8A40: F0 06       ;
CODE_208A42:    LDA $0216                   ; $20:8A42: AD 16 02    ;
CODE_208A45:    STA $0218                   ; $20:8A45: 8D 18 02    ;
CODE_208A48:    LDX $0726                   ; $20:8A48: AE 26 07    ;
CODE_208A4B:    LDA $073D,x                 ; $20:8A4B: BD 3D 07    ;
CODE_208A4E:    BEQ CODE_208A53             ; $20:8A4E: F0 03       ;
CODE_208A50:    JMP CODE_208FFD             ; $20:8A50: 4C FD 8F    ;

CODE_208A53:    STZ $0101                   ; $20:8A53: 9C 01 01    ;
CODE_208A56:    LDA #$00                    ; $20:8A56: A9 00       ;
CODE_208A58:    STA $7E3955                 ; $20:8A58: 8F 55 39 7E ;
CODE_208A5C:    JSL CODE_29C794             ; $20:8A5C: 22 94 C7 29 ;
CODE_208A60:    LDA #$80                    ; $20:8A60: A9 80       ;
CODE_208A62:    STA $16                     ; $20:8A62: 85 16       ;
CODE_208A64:    LDA $0713                   ; $20:8A64: AD 13 07    ;
CODE_208A67:    BEQ CODE_208A75             ; $20:8A67: F0 0C       ;
CODE_208A69:    LDA $0425                   ; $20:8A69: AD 25 04    ;
CODE_208A6C:    BNE CODE_208A72             ; $20:8A6C: D0 04       ;
CODE_208A6E:    LDA #$0F                    ; $20:8A6E: A9 0F       ;
CODE_208A70:    STA $16                     ; $20:8A70: 85 16       ;
CODE_208A72:    JMP CODE_208BD5             ; $20:8A72: 4C D5 8B    ;

CODE_208A75:    STZ $20                     ; $20:8A75: 64 20       ;
CODE_208A77:    JSR CODE_2096AA             ; $20:8A77: 20 AA 96    ;
CODE_208A7A:    LDA #$FE                    ; $20:8A7A: A9 FE       ;
CODE_208A7C:    STA $105F                   ; $20:8A7C: 8D 5F 10    ;
CODE_208A7F:    LDA $0425                   ; $20:8A7F: AD 25 04    ;
CODE_208A82:    BEQ CODE_208A94             ; $20:8A82: F0 10       ;
CODE_208A84:    LDY $0376                   ; $20:8A84: AC 76 03    ;
CODE_208A87:    LDA.w DATA_21823C,y                 ; $20:8A87: B9 3C 82    ;
CODE_208A8A:    STA $2E                     ; $20:8A8A: 85 2E       ;
CODE_208A8C:    LDA.w DATA_21824C,y                 ; $20:8A8C: B9 4C 82    ;
CODE_208A8F:    STA $2F                     ; $20:8A8F: 85 2F       ;
CODE_208A91:    JMP CODE_208A9E             ; $20:8A91: 4C 9E 8A    ;

CODE_208A94:    LDA.w DATA_218200                   ; $20:8A94: AD 00 82    ;
CODE_208A97:    STA $2E                     ; $20:8A97: 85 2E       ;
CODE_208A99:    LDA.w DATA_218200+1                     ; $20:8A99: AD 01 82    ;
CODE_208A9C:    STA $2F                     ; $20:8A9C: 85 2F       ;
CODE_208A9E:    STZ $1044                   ; $20:8A9E: 9C 44 10    ;
CODE_208AA1:    LDA $0216                   ; $20:8AA1: AD 16 02    ;
CODE_208AA4:    BEQ CODE_208AB0             ; $20:8AA4: F0 0A       ;
CODE_208AA6:    LDA $2E                     ; $20:8AA6: A5 2E       ;
CODE_208AA8:    CLC                         ; $20:8AA8: 18          ;
CODE_208AA9:    ADC #$F0                    ; $20:8AA9: 69 F0       ;
CODE_208AAB:    STA $2E                     ; $20:8AAB: 85 2E       ;
CODE_208AAD:    INC $1044                   ; $20:8AAD: EE 44 10    ;
CODE_208AB0:    LDY #$04                    ; $20:8AB0: A0 04       ;
CODE_208AB2:    LDA $0216                   ; $20:8AB2: AD 16 02    ;
CODE_208AB5:    CMP.w DATA_21CDDE,y                 ; $20:8AB5: D9 DE CD    ;
CODE_208AB8:    BEQ CODE_208ABD             ; $20:8AB8: F0 03       ;
CODE_208ABA:    DEY                         ; $20:8ABA: 88          ;
CODE_208ABB:    BPL CODE_208AB2             ; $20:8ABB: 10 F5       ;
CODE_208ABD:    STY $1060                   ; $20:8ABD: 8C 60 10    ;
CODE_208AC0:    LDA.w DATA_21CDE3,y                 ; $20:8AC0: B9 E3 CD    ;
CODE_208AC3:    STA $1047                   ; $20:8AC3: 8D 47 10    ;
CODE_208AC6:    STA $1048                   ; $20:8AC6: 8D 48 10    ;
CODE_208AC9:    STA $1049                   ; $20:8AC9: 8D 49 10    ;
CODE_208ACC:    STA $104A                   ; $20:8ACC: 8D 4A 10    ;
CODE_208ACF:    LDA.w DATA_21CDE8,y                 ; $20:8ACF: B9 E8 CD    ;
CODE_208AD2:    STA $104B                   ; $20:8AD2: 8D 4B 10    ;
CODE_208AD5:    LDA.w DATA_21CDF2,y                 ; $20:8AD5: B9 F2 CD    ;
CODE_208AD8:    STA $104D                   ; $20:8AD8: 8D 4D 10    ;
CODE_208ADB:    LDA.w DATA_21CDED,y                 ; $20:8ADB: B9 ED CD    ;
CODE_208ADE:    STA $104C                   ; $20:8ADE: 8D 4C 10    ;
CODE_208AE1:    LDA.w DATA_21CDF7,y                 ; $20:8AE1: B9 F7 CD    ;
CODE_208AE4:    STA $104E                   ; $20:8AE4: 8D 4E 10    ;
CODE_208AE7:    STZ $104F                   ; $20:8AE7: 9C 4F 10    ;
CODE_208AEA:    LDA #$03                    ; $20:8AEA: A9 03       ;
CODE_208AEC:    STA $1045                   ; $20:8AEC: 8D 45 10    ;
CODE_208AEF:    LDY #$01                    ; $20:8AEF: A0 01       ;
CODE_208AF1:    STY $1046                   ; $20:8AF1: 8C 46 10    ;
CODE_208AF4:    LDA #$02                    ; $20:8AF4: A9 02       ;
CODE_208AF6:    STA $0291                   ; $20:8AF6: 8D 91 02    ;
CODE_208AF9:    JSL CODE_2AF9A9             ; $20:8AF9: 22 A9 F9 2A ;
CODE_208AFD:    STZ $0100                   ; $20:8AFD: 9C 00 01    ;
CODE_208B00:    LDA #$80                    ; $20:8B00: A9 80       ;
CODE_208B02:    STA $4200                   ; $20:8B02: 8D 00 42    ;
CODE_208B05:    LDA #$15                    ; $20:8B05: A9 15       ;
CODE_208B07:    STA $0208                   ; $20:8B07: 8D 08 02    ;
CODE_208B0A:    LDA #$02                    ; $20:8B0A: A9 02       ;
CODE_208B0C:    STA $0209                   ; $20:8B0C: 8D 09 02    ;
CODE_208B0F:    LDA #$02                    ; $20:8B0F: A9 02       ;
CODE_208B11:    STA $0203                   ; $20:8B11: 8D 03 02    ;
CODE_208B14:    LDA #$20                    ; $20:8B14: A9 20       ;
CODE_208B16:    STA $0204                   ; $20:8B16: 8D 04 02    ;
CODE_208B19:    LDA $02BF                   ; $20:8B19: AD BF 02    ;
CODE_208B1C:    CMP #$01                    ; $20:8B1C: C9 01       ;
CODE_208B1E:    BEQ CODE_208B31             ; $20:8B1E: F0 11       ;
CODE_208B20:    CMP #$06                    ; $20:8B20: C9 06       ;
CODE_208B22:    BEQ CODE_208B31             ; $20:8B22: F0 0D       ;
CODE_208B24:    CMP #$07                    ; $20:8B24: C9 07       ;
CODE_208B26:    BEQ CODE_208B31             ; $20:8B26: F0 09       ;
CODE_208B28:    CMP #$05                    ; $20:8B28: C9 05       ;
CODE_208B2A:    BNE CODE_208B4C             ; $20:8B2A: D0 20       ;
CODE_208B2C:    LDA #$17                    ; $20:8B2C: A9 17       ;
CODE_208B2E:    STA $0208                   ; $20:8B2E: 8D 08 02    ;
CODE_208B31:    LDA #$C0                    ; $20:8B31: A9 C0       ;
CODE_208B33:    STA $0100                   ; $20:8B33: 8D 00 01    ;
CODE_208B36:    LDA #$64                    ; $20:8B36: A9 64       ;
CODE_208B38:    STA $0204                   ; $20:8B38: 8D 04 02    ;
CODE_208B3B:    LDA #$13                    ; $20:8B3B: A9 13       ;
CODE_208B3D:    STA $0209                   ; $20:8B3D: 8D 09 02    ;
CODE_208B40:    LDA $02BF                   ; $20:8B40: AD BF 02    ;
CODE_208B43:    CMP #$07                    ; $20:8B43: C9 07       ;
CODE_208B45:    BNE CODE_208B4C             ; $20:8B45: D0 05       ;
CODE_208B47:    LDA #$24                    ; $20:8B47: A9 24       ;
CODE_208B49:    STA $0204                   ; $20:8B49: 8D 04 02    ;
CODE_208B4C:    CMP #$03                    ; $20:8B4C: C9 03       ;
CODE_208B4E:    BEQ CODE_208B64             ; $20:8B4E: F0 14       ;
CODE_208B50:    CMP #$04                    ; $20:8B50: C9 04       ;
CODE_208B52:    BEQ CODE_208B64             ; $20:8B52: F0 10       ;
CODE_208B54:    CMP #$08                    ; $20:8B54: C9 08       ;
CODE_208B56:    BNE CODE_208B75             ; $20:8B56: D0 1D       ;
CODE_208B58:    LDA #$64                    ; $20:8B58: A9 64       ;
CODE_208B5A:    STA $0204                   ; $20:8B5A: 8D 04 02    ;
CODE_208B5D:    LDA #$13                    ; $20:8B5D: A9 13       ;
CODE_208B5F:    STA $0209                   ; $20:8B5F: 8D 09 02    ;
CODE_208B62:    BRA CODE_208B93             ; $20:8B62: 80 2F       ;

CODE_208B64:    LDA #$22                    ; $20:8B64: A9 22       ;
CODE_208B66:    STA $0204                   ; $20:8B66: 8D 04 02    ;
CODE_208B69:    LDA #$13                    ; $20:8B69: A9 13       ;
CODE_208B6B:    STA $0208                   ; $20:8B6B: 8D 08 02    ;
CODE_208B6E:    LDA #$15                    ; $20:8B6E: A9 15       ;
CODE_208B70:    STA $0209                   ; $20:8B70: 8D 09 02    ;
CODE_208B73:    BRA CODE_208B93             ; $20:8B73: 80 1E       ;
CODE_208B75:    CMP #$09                    ; $20:8B75: C9 09       ;
CODE_208B77:    BEQ CODE_208B89             ; $20:8B77: F0 10       ;
CODE_208B79:    CMP #$0A                    ; $20:8B79: C9 0A       ;
CODE_208B7B:    BEQ CODE_208B89             ; $20:8B7B: F0 0C       ;
CODE_208B7D:    CMP #$0B                    ; $20:8B7D: C9 0B       ;
CODE_208B7F:    BEQ CODE_208B89             ; $20:8B7F: F0 08       ;
CODE_208B81:    CMP #$0F                    ; $20:8B81: C9 0F       ;
CODE_208B83:    BEQ CODE_208B89             ; $20:8B83: F0 04       ;
CODE_208B85:    CMP #$0C                    ; $20:8B85: C9 0C       ;
CODE_208B87:    BNE CODE_208B93             ; $20:8B87: D0 0A       ;
CODE_208B89:    LDA #$11                    ; $20:8B89: A9 11       ;
CODE_208B8B:    STA $0208                   ; $20:8B8B: 8D 08 02    ;
CODE_208B8E:    LDA #$06                    ; $20:8B8E: A9 06       ;
CODE_208B90:    STA $0209                   ; $20:8B90: 8D 09 02    ;
CODE_208B93:    LDA #$80                    ; $20:8B93: A9 80       ;
CODE_208B95:    STA $0016                   ; $20:8B95: 8D 16 00    ;
CODE_208B98:    JSL CODE_2AFA63             ; $20:8B98: 22 63 FA 2A ;
CODE_208B9C:    LDA $0350                   ; $20:8B9C: AD 50 03    ;
CODE_208B9F:    CMP #$01                    ; $20:8B9F: C9 01       ;
CODE_208BA1:    BEQ CODE_208BAB             ; $20:8BA1: F0 08       ;
CODE_208BA3:    CMP #$21                    ; $20:8BA3: C9 21       ;
CODE_208BA5:    BEQ CODE_208BAB             ; $20:8BA5: F0 04       ;
CODE_208BA7:    CMP #$25                    ; $20:8BA7: C9 25       ;
CODE_208BA9:    BNE CODE_208BAB             ; $20:8BA9: D0 00       ;
CODE_208BAB:    JSR CODE_20801F             ; $20:8BAB: 20 1F 80    ;
CODE_208BAE:    INC $0016                   ; $20:8BAE: EE 16 00    ;
CODE_208BB1:    INC $0016                   ; $20:8BB1: EE 16 00    ;
CODE_208BB4:    LDA $0016                   ; $20:8BB4: AD 16 00    ;
CODE_208BB7:    AND #$0F                    ; $20:8BB7: 29 0F       ;
CODE_208BB9:    STA $0016                   ; $20:8BB9: 8D 16 00    ;
CODE_208BBC:    BNE CODE_208BAB             ; $20:8BBC: D0 ED       ;
CODE_208BBE:    LDA #$0F                    ; $20:8BBE: A9 0F       ;
CODE_208BC0:    STA $0016                   ; $20:8BC0: 8D 16 00    ;
CODE_208BC3:    JSR CODE_20801F             ; $20:8BC3: 20 1F 80    ;
CODE_208BC6:    JSL CODE_2AFA63             ; $20:8BC6: 22 63 FA 2A ;
CODE_208BCA:    JSL CODE_239344             ; $20:8BCA: 22 44 93 23 ;
CODE_208BCE:    LDA $1050                   ; $20:8BCE: AD 50 10    ;
CODE_208BD1:    CMP #$38                    ; $20:8BD1: C9 38       ;
CODE_208BD3:    BNE CODE_208BC3             ; $20:8BD3: D0 EE       ;
CODE_208BD5:    STZ $20                     ; $20:8BD5: 64 20       ;
CODE_208BD7:    LDX #$C0                    ; $20:8BD7: A2 C0       ;
CODE_208BD9:    LDA $0425                   ; $20:8BD9: AD 25 04    ;
CODE_208BDC:    BEQ CODE_208BE0             ; $20:8BDC: F0 02       ;
CODE_208BDE:    LDX #$80                    ; $20:8BDE: A2 80       ;
CODE_208BE0:    STX $0100                   ; $20:8BE0: 8E 00 01    ;
CODE_208BE3:    LDA $070A                   ; $20:8BE3: AD 0A 07    ;
CODE_208BE6:    CMP #$0F                    ; $20:8BE6: C9 0F       ;
CODE_208BE8:    BEQ CODE_208BED             ; $20:8BE8: F0 03       ;
CODE_208BEA:    JMP CODE_208CC0             ; $20:8BEA: 4C C0 8C    ;

CODE_208BED:    STZ $0211                   ; $20:8BED: 9C 11 02    ;
CODE_208BF0:    LDA #$15                    ; $20:8BF0: A9 15       ;
CODE_208BF2:    STA $0208                   ; $20:8BF2: 8D 08 02    ;
CODE_208BF5:    LDA #$04                    ; $20:8BF5: A9 04       ;
CODE_208BF7:    STA $070E                   ; $20:8BF7: 8D 0E 07    ;
CODE_208BFA:    STA $070F                   ; $20:8BFA: 8D 0F 07    ;
CODE_208BFD:    LDA #$50                    ; $20:8BFD: A9 50       ;
CODE_208BFF:    STA $05E7                   ; $20:8BFF: 8D E7 05    ;
CODE_208C02:    LDA #$C4                    ; $20:8C02: A9 C4       ;
CODE_208C04:    STA $05E8                   ; $20:8C04: 8D E8 05    ;
CODE_208C07:    LDA #$0B                    ; $20:8C07: A9 0B       ;
CODE_208C09:    STA $070B                   ; $20:8C09: 8D 0B 07    ;
CODE_208C0C:    LDA #$35                    ; $20:8C0C: A9 35       ;
CODE_208C0E:    STA $070C                   ; $20:8C0E: 8D 0C 07    ;
CODE_208C11:    LDA #$A0                    ; $20:8C11: A9 A0       ;
CODE_208C13:    STA $97                     ; $20:8C13: 85 97       ;
CODE_208C15:    LDA #$78                    ; $20:8C15: A9 78       ;
CODE_208C17:    STA $95                     ; $20:8C17: 85 95       ;
CODE_208C19:    STA $96                     ; $20:8C19: 85 96       ;
CODE_208C1B:    STZ $1040                   ; $20:8C1B: 9C 40 10    ;
CODE_208C1E:    STZ $1028                   ; $20:8C1E: 9C 28 10    ;
CODE_208C21:    LDA #$0D                ; $20:8C21: A9 0D       ;\
CODE_208C23:    STA $1202               ; $20:8C23: 8D 02 12    ;/N-Spade/Spade music
CODE_208C26:    LDA #$80                    ; $20:8C26: A9 80       ;
CODE_208C28:    STA $4200                   ; $20:8C28: 8D 00 42    ;
CODE_208C2B:    JSR CODE_20801F             ; $20:8C2B: 20 1F 80    ;
CODE_208C2E:    JSL CODE_239486             ; $20:8C2E: 22 86 94 23 ;
CODE_208C32:    JSL CODE_29E7AA             ; $20:8C32: 22 AA E7 29 ;
CODE_208C36:    LDA $14                     ; $20:8C36: A5 14       ;
CODE_208C38:    BEQ CODE_208C2B             ; $20:8C38: F0 F1       ;
CODE_208C3A:    LDA $1042                   ; $20:8C3A: AD 42 10    ;
CODE_208C3D:    CMP #$04                    ; $20:8C3D: C9 04       ;
CODE_208C3F:    BNE CODE_208C49             ; $20:8C3F: D0 08       ;
CODE_208C41:    LDA #$01                    ; $20:8C41: A9 01       ;
CODE_208C43:    STA $072D                   ; $20:8C43: 8D 2D 07    ;
CODE_208C46:    JMP CODE_208C50         ; $20:8C46: 4C 50 8C    ;
           
CODE_208C49:    CMP #$07                    ; $20:8C49: C9 07       ;
CODE_208C4B:    BNE CODE_208C50             ; $20:8C4B: D0 03       ;
CODE_208C4D:    JSR $95C1               ; $20:8C4D: 20 C1 95    ;INVALID: Polymorphic jump?
CODE_208C50:    STZ $02D4                   ; $20:8C50: 9C D4 02    ;
CODE_208C53:    STZ $070F                   ; $20:8C53: 9C 0F 07    ;
CODE_208C56:    JSL CODE_29E2B6             ; $20:8C56: 22 B6 E2 29 ;
CODE_208C5A:    LDA #$80                    ; $20:8C5A: A9 80       ;
CODE_208C5C:    STA $16                     ; $20:8C5C: 85 16       ;
CODE_208C5E:    JSR CODE_20801F             ; $20:8C5E: 20 1F 80    ;
CODE_208C61:    STZ $4200                   ; $20:8C61: 9C 00 42    ;
CODE_208C64:    LDA $069A                   ; $20:8C64: AD 9A 06    ;
CODE_208C67:    BEQ CODE_208CBA             ; $20:8C67: F0 51       ;
CODE_208C69:    LDY #$00                    ; $20:8C69: A0 00       ;
CODE_208C6B:    LDA $1042                   ; $20:8C6B: AD 42 10    ;
CODE_208C6E:    CMP #$01                    ; $20:8C6E: C9 01       ;
CODE_208C70:    BNE CODE_208C7B             ; $20:8C70: D0 09       ;
CODE_208C72:    LDA #$01                    ; $20:8C72: A9 01       ;
CODE_208C74:    STA $073B                   ; $20:8C74: 8D 3B 07    ;
CODE_208C77:    LDY #$10                    ; $20:8C77: A0 10       ;
CODE_208C79:    BNE CODE_208C86             ; $20:8C79: D0 0B       ;
CODE_208C7B:    CMP #$02                    ; $20:8C7B: C9 02       ;
CODE_208C7D:    BNE CODE_208C86             ; $20:8C7D: D0 07       ;
CODE_208C7F:    LDA #$02                    ; $20:8C7F: A9 02       ;
CODE_208C81:    STA $073B                   ; $20:8C81: 8D 3B 07    ;
CODE_208C84:    LDY #$11                    ; $20:8C84: A0 11       ;
CODE_208C86:    STY $070A                   ; $20:8C86: 8C 0A 07    ;
CODE_208C89:    STY $1EBF                   ; $20:8C89: 8C BF 1E    ;
CODE_208C8C:    CPY #$00                    ; $20:8C8C: C0 00       ;
CODE_208C8E:    BEQ CODE_208CBA             ; $20:8C8E: F0 2A       ;
CODE_208C90:    LDA $7E3955                 ; $20:8C90: AF 55 39 7E ;
CODE_208C94:    INC A                       ; $20:8C94: 1A          ;
CODE_208C95:    STA $7E3955                 ; $20:8C95: 8F 55 39 7E ;
CODE_208C99:    LDY #$FD                    ; $20:8C99: A0 FD       ;
CODE_208C9B:    LDA #$00                    ; $20:8C9B: A9 00       ;
CODE_208C9D:    STA $0000,y                 ; $20:8C9D: 99 00 00    ;
CODE_208CA0:    DEY                         ; $20:8CA0: 88          ;
CODE_208CA1:    CPY #$75                    ; $20:8CA1: C0 75       ;
CODE_208CA3:    BCS CODE_208CA9                     ; $20:8CA3: B0 04       ;
CODE_208CA5:    CPY #$69                    ; $20:8CA5: C0 69       ;
CODE_208CA7:    BCS CODE_208CA0                     ; $20:8CA7: B0 F7       ;
CODE_208CA9:    CPY #$FF                    ; $20:8CA9: C0 FF       ;
CODE_208CAB:    BNE CODE_208C9D             ; $20:8CAB: D0 F0       ;
CODE_208CAD:    LDY #$CF                    ; $20:8CAD: A0 CF       ;
CODE_208CAF:    STA $0400,y                 ; $20:8CAF: 99 00 04    ;
CODE_208CB2:    DEY                         ; $20:8CB2: 88          ;
CODE_208CB3:    CPY #$FF                    ; $20:8CB3: C0 FF       ;
CODE_208CB5:    BNE CODE_208CAF             ; $20:8CB5: D0 F8       ;
CODE_208CB7:    JMP CODE_208753             ; $20:8CB7: 4C 53 87    ;

CODE_208CBA:    STZ $069A                   ; $20:8CBA: 9C 9A 06    ;
CODE_208CBD:    JMP CODE_208FB1             ; $20:8CBD: 4C B1 8F    ;

CODE_208CC0:    LDA #$10                    ; $20:8CC0: A9 10       ;
CODE_208CC2:    STA $0349                   ; $20:8CC2: 8D 49 03    ;
CODE_208CC5:    LDA #$01                    ; $20:8CC5: A9 01       ;
CODE_208CC7:    LDX $070A                   ; $20:8CC7: AE 0A 07    ;
CODE_208CCA:    CPX #$07                    ; $20:8CCA: E0 07       ;
CODE_208CCC:    BNE CODE_208CD0             ; $20:8CCC: D0 02       ;
CODE_208CCE:    LDA #$11                    ; $20:8CCE: A9 11       ;
CODE_208CD0:    STA $020F                   ; $20:8CD0: 8D 0F 02    ;
CODE_208CD3:    STZ $034D                   ; $20:8CD3: 9C 4D 03    ;
CODE_208CD6:    LDA $0727                   ; $20:8CD6: AD 27 07    ;
CODE_208CD9:    CMP #$06                    ; $20:8CD9: C9 06       ;
CODE_208CDB:    BEQ CODE_208D0E             ; $20:8CDB: F0 31       ;
CODE_208CDD:    LDA $0350                   ; $20:8CDD: AD 50 03    ;
CODE_208CE0:    CMP #$01                    ; $20:8CE0: C9 01       ;
CODE_208CE2:    BEQ CODE_208CEC             ; $20:8CE2: F0 08       ;
CODE_208CE4:    CMP #$21                    ; $20:8CE4: C9 21       ;
CODE_208CE6:    BEQ CODE_208CEC             ; $20:8CE6: F0 04       ;
CODE_208CE8:    CMP #$25                    ; $20:8CE8: C9 25       ;
CODE_208CEA:    BNE CODE_208D0E             ; $20:8CEA: D0 22       ;
CODE_208CEC:    REP #$20                    ; $20:8CEC: C2 20       ;
CODE_208CEE:    LDA #$0F42                  ; $20:8CEE: A9 42 0F    ;
CODE_208CF1:    STA $4370                   ; $20:8CF1: 8D 70 43    ;
CODE_208CF4:    LDA.w #DATA_2AF860                  ; $20:8CF4: A9 60 F8    ;
CODE_208CF7:    STA $4372                   ; $20:8CF7: 8D 72 43    ;
CODE_208CFA:    LDX.b #DATA_2AF860>>16                      ; $20:8CFA: A2 2A       ;
CODE_208CFC:    STX $4374                   ; $20:8CFC: 8E 74 43    ;
CODE_208CFF:    LDX #$7F                    ; $20:8CFF: A2 7F       ;
CODE_208D01:    STX $4377                   ; $20:8D01: 8E 77 43    ;
CODE_208D04:    SEP #$20                    ; $20:8D04: E2 20       ;
CODE_208D06:    LDA #$01                    ; $20:8D06: A9 01       ;
CODE_208D08:    STA $034D                   ; $20:8D08: 8D 4D 03    ;
CODE_208D0B:    STZ $0249                   ; $20:8D0B: 9C 49 02    ;
CODE_208D0E:    LDA #$A1                    ; $20:8D0E: A9 A1       ;
CODE_208D10:    STA $4200                   ; $20:8D10: 8D 00 42    ;
CODE_208D13:    LDY $070A                   ; $20:8D13: AC 0A 07    ;
CODE_208D16:    CPY #$05                    ; $20:8D16: C0 05       ;
CODE_208D18:    BNE CODE_208D20             ; $20:8D18: D0 06       ;
CODE_208D1A:    LDA.w DATA_21C98E                   ; $20:8D1A: AD 8E C9    ;
CODE_208D1D:    STA $1E9F                   ; $20:8D1D: 8D 9F 1E    ;
CODE_208D20:    LDA $034D                   ; $20:8D20: AD 4D 03    ;
CODE_208D23:    BEQ CODE_208D29             ; $20:8D23: F0 04       ;
CODE_208D25:    JSL CODE_2A841C             ; $20:8D25: 22 1C 84 2A ;
CODE_208D29:    JSR CODE_20801F             ; $20:8D29: 20 1F 80    ;
CODE_208D2C:    LDA $1206                   ; $20:8D2C: AD 06 12    ;
CODE_208D2F:    CMP #$04                    ; $20:8D2F: C9 04       ;
CODE_208D31:    BEQ CODE_208D40             ; $20:8D31: F0 0D       ;
CODE_208D33:    LDA $1061                   ; $20:8D33: AD 61 10    ;
CODE_208D36:    BEQ CODE_208D43             ; $20:8D36: F0 0B       ;
CODE_208D38:    CMP $1206                   ; $20:8D38: CD 06 12    ;
CODE_208D3B:    BEQ CODE_208D40             ; $20:8D3B: F0 03       ;
CODE_208D3D:    STA $1202                   ; $20:8D3D: 8D 02 12    ;
CODE_208D40:    STZ $1061                   ; $20:8D40: 9C 61 10    ;
CODE_208D43:    LDA $05F3                   ; $20:8D43: AD F3 05    ;
CODE_208D46:    BMI CODE_208D8A             ; $20:8D46: 30 42       ;
CODE_208D48:    LDY $070A                   ; $20:8D48: AC 0A 07    ;
CODE_208D4B:    CPY #$05                    ; $20:8D4B: C0 05       ;
CODE_208D4D:    BNE CODE_208D71             ; $20:8D4D: D0 22       ;
CODE_208D4F:    LDA $15                     ; $20:8D4F: A5 15       ;
CODE_208D51:    AND #$07                    ; $20:8D51: 29 07       ;
CODE_208D53:    BNE CODE_208D6C             ; $20:8D53: D0 17       ;
CODE_208D55:    INC $1B                     ; $20:8D55: E6 1B       ;
CODE_208D57:    LDA $1B                     ; $20:8D57: A5 1B       ;
CODE_208D59:    CMP $1E9F                   ; $20:8D59: CD 9F 1E    ;
CODE_208D5C:    BNE CODE_208D62             ; $20:8D5C: D0 04       ;
CODE_208D5E:    LDA #$00                    ; $20:8D5E: A9 00       ;
CODE_208D60:    STA $1B                     ; $20:8D60: 85 1B       ;
CODE_208D62:    TAY                         ; $20:8D62: A8          ;
CODE_208D63:    LDA.w DATA_21C98F,y                 ; $20:8D63: B9 8F C9    ;
CODE_208D66:    STA $0245                   ; $20:8D66: 8D 45 02    ;
CODE_208D69:    STZ $0243                   ; $20:8D69: 9C 43 02    ;
CODE_208D6C:    JSR CODE_20A07B             ; $20:8D6C: 20 7B A0    ;
CODE_208D6F:    BRA CODE_208DCB             ; $20:8D6F: 80 5A       ;

CODE_208D71:    CPY #$07                    ; $20:8D71: C0 07       ;
CODE_208D73:    BEQ CODE_208D8A             ; $20:8D73: F0 15       ;
CODE_208D75:    LDA $0567                   ; $20:8D75: AD 67 05    ;
CODE_208D78:    BEQ CODE_208D8C             ; $20:8D78: F0 12       ;
CODE_208D7A:    BPL CODE_208D84             ; $20:8D7A: 10 08       ;
CODE_208D7C:    STZ $0243                   ; $20:8D7C: 9C 43 02    ;
CODE_208D7F:    LDA #$7F                ; $20:8D7F: A9 7F       ;P-Switch duration
CODE_208D81:    STA $0567               ; $20:8D81: 8D 67 05    ;
CODE_208D84:    STZ $0245                   ; $20:8D84: 9C 45 02    ;
CODE_208D87:    JSR CODE_20A07B             ; $20:8D87: 20 7B A0    ;
CODE_208D8A:    BRA CODE_208DCB             ; $20:8D8A: 80 3F       ;

CODE_208D8C:    CPY #$0A                    ; $20:8D8C: C0 0A       ;
CODE_208D8E:    BNE CODE_208DB2             ; $20:8D8E: D0 22       ;
CODE_208D90:    LDA $1EBF                   ; $20:8D90: AD BF 1E    ;
CODE_208D93:    CMP #$15                    ; $20:8D93: C9 15       ;
CODE_208D95:    BNE CODE_208DCB             ; $20:8D95: D0 34       ;
CODE_208D97:    LDY $0246                   ; $20:8D97: AC 46 02    ;
CODE_208D9A:    LDA $15                     ; $20:8D9A: A5 15       ;
CODE_208D9C:    AND #$03                    ; $20:8D9C: 29 03       ;
CODE_208D9E:    BNE CODE_208DAD             ; $20:8D9E: D0 0D       ;
CODE_208DA0:    STZ $0243                   ; $20:8DA0: 9C 43 02    ;
CODE_208DA3:    INY                         ; $20:8DA3: C8          ;
CODE_208DA4:    CPY #$03                    ; $20:8DA4: C0 03       ;
CODE_208DA6:    BNE CODE_208DAA             ; $20:8DA6: D0 02       ;
CODE_208DA8:    LDY #$00                    ; $20:8DA8: A0 00       ;
CODE_208DAA:    STY $0246                   ; $20:8DAA: 8C 46 02    ;
CODE_208DAD:    JSR CODE_20A0C6             ; $20:8DAD: 20 C6 A0    ;
CODE_208DB0:    BRA CODE_208DCB             ; $20:8DB0: 80 19       ;

CODE_208DB2:    LDA $15                     ; $20:8DB2: A5 15       ;
CODE_208DB4:    AND #$18                    ; $20:8DB4: 29 18       ;
CODE_208DB6:    LSR A                       ; $20:8DB6: 4A          ;
CODE_208DB7:    LSR A                       ; $20:8DB7: 4A          ;
CODE_208DB8:    LSR A                       ; $20:8DB8: 4A          ;
CODE_208DB9:    TAX                         ; $20:8DB9: AA          ;
CODE_208DBA:    LDA.w DATA_21C9DF,x                 ; $20:8DBA: BD DF C9    ;
CODE_208DBD:    CMP $0245                   ; $20:8DBD: CD 45 02    ;
CODE_208DC0:    BEQ CODE_208DC5             ; $20:8DC0: F0 03       ;
CODE_208DC2:    STZ $0243                   ; $20:8DC2: 9C 43 02    ;
CODE_208DC5:    STA $0245                   ; $20:8DC5: 8D 45 02    ;
CODE_208DC8:    JSR CODE_20A07B             ; $20:8DC8: 20 7B A0    ;
CODE_208DCB:    LDA $700007                 ; $20:8DCB: AF 07 00 70 ;
CODE_208DCF:    BEQ CODE_208DEE             ; $20:8DCF: F0 1D       ;
CODE_208DD1:    LDA $F8                     ; $20:8DD1: A5 F8       ;
CODE_208DD3:    ORA $F9                     ; $20:8DD3: 05 F9       ;
CODE_208DD5:    AND #$20                    ; $20:8DD5: 29 20       ;
CODE_208DD7:    BEQ CODE_208DDC             ; $20:8DD7: F0 03       ;
CODE_208DD9:    INC $00EC                   ; $20:8DD9: EE EC 00    ;
CODE_208DDC:    LDA $F8                     ; $20:8DDC: A5 F8       ;
CODE_208DDE:    ORA $F9                     ; $20:8DDE: 05 F9       ;
CODE_208DE0:    AND #$10                    ; $20:8DE0: 29 10       ;
CODE_208DE2:    BNE CODE_208DEE             ; $20:8DE2: D0 0A       ;
CODE_208DE4:    LDA $00EC                   ; $20:8DE4: AD EC 00    ;
CODE_208DE7:    AND #$01                    ; $20:8DE7: 29 01       ;
CODE_208DE9:    BEQ CODE_208DEE             ; $20:8DE9: F0 03       ;
CODE_208DEB:    BRL CODE_208D20             ; $20:8DEB: 82 32 FF    ;

CODE_208DEE:    LDA $0349                   ; $20:8DEE: AD 49 03    ;
CODE_208DF1:    BEQ CODE_208DF9             ; $20:8DF1: F0 06       ;
CODE_208DF3:    DEC $0349                   ; $20:8DF3: CE 49 03    ;
CODE_208DF6:    JMP CODE_208E54             ; $20:8DF6: 4C 54 8E    ;

CODE_208DF9:    LDA $0571                   ; $20:8DF9: AD 71 05    ;
CODE_208DFC:    BNE CODE_208E54             ; $20:8DFC: D0 56       ;
CODE_208DFE:    LDA $028C                   ; $20:8DFE: AD 8C 02    ;
CODE_208E01:    CMP #$01                    ; $20:8E01: C9 01       ;
CODE_208E03:    BEQ CODE_208E54             ; $20:8E03: F0 4F       ;
CODE_208E05:    CMP #$03                    ; $20:8E05: C9 03       ;
CODE_208E07:    BEQ CODE_208E54             ; $20:8E07: F0 4B       ;
CODE_208E09:    LDA $1206                   ; $20:8E09: AD 06 12    ;
CODE_208E0C:    CMP #$80                    ; $20:8E0C: C9 80       ;
CODE_208E0E:    BEQ CODE_208E54             ; $20:8E0E: F0 44       ;
CODE_208E10:    CMP #$F0                    ; $20:8E10: C9 F0       ;
CODE_208E12:    BEQ CODE_208E54             ; $20:8E12: F0 40       ;
CODE_208E14:    LDA $18                     ; $20:8E14: A5 18       ;
CODE_208E16:    AND #$10                    ; $20:8E16: 29 10       ;
CODE_208E18:    BEQ CODE_208E54             ; $20:8E18: F0 3A       ;
CODE_208E1A:    LDA $1EBF                   ; $20:8E1A: AD BF 1E    ;
CODE_208E1D:    CMP #$16                    ; $20:8E1D: C9 16       ;
CODE_208E1F:    BEQ CODE_208E54             ; $20:8E1F: F0 33       ;
CODE_208E21:    CMP #$2D                    ; $20:8E21: C9 2D       ;
CODE_208E23:    BEQ CODE_208E54             ; $20:8E23: F0 2F       ;
CODE_208E25:    LDA $02D9                   ; $20:8E25: AD D9 02    ;
CODE_208E28:    BNE CODE_208E54             ; $20:8E28: D0 2A       ;
CODE_208E2A:    LDA $1061                   ; $20:8E2A: AD 61 10    ;
CODE_208E2D:    BNE CODE_208E54             ; $20:8E2D: D0 25       ;
CODE_208E2F:    LDA $BC                     ; $20:8E2F: A5 BC       ;
CODE_208E31:    CMP #$A4                    ; $20:8E31: C9 A4       ;
CODE_208E33:    BEQ CODE_208E39             ; $20:8E33: F0 04       ;
CODE_208E35:    STA $7FC520                 ; $20:8E35: 8F 20 C5 7F ;
CODE_208E39:    LDY #$A4                    ; $20:8E39: A0 A4       ;
CODE_208E3B:    LDA $037A                   ; $20:8E3B: AD 7A 03    ;
CODE_208E3E:    EOR #$01                    ; $20:8E3E: 49 01       ;
CODE_208E40:    STA $037A                   ; $20:8E40: 8D 7A 03    ;
CODE_208E43:    BNE CODE_208E4A             ; $20:8E43: D0 05       ;
CODE_208E45:    LDA $7FC520                 ; $20:8E45: AF 20 C5 7F ;
CODE_208E49:    TAY                         ; $20:8E49: A8          ;
CODE_208E4A:    STY $BC                     ; $20:8E4A: 84 BC       ;
CODE_208E4C:    JSL CODE_22E000             ; $20:8E4C: 22 00 E0 22 ;
CODE_208E50:    JSL CODE_29EBB7             ; $20:8E50: 22 B7 EB 29 ;
CODE_208E54:    LDA $028C                   ; $20:8E54: AD 8C 02    ;
CODE_208E57:    CMP #$03                    ; $20:8E57: C9 03       ;
CODE_208E59:    BNE CODE_208E60             ; $20:8E59: D0 05       ;
CODE_208E5B:    LDA #$01                    ; $20:8E5B: A9 01       ;
CODE_208E5D:    STA $037A                   ; $20:8E5D: 8D 7A 03    ;
CODE_208E60:    LDA $037A                   ; $20:8E60: AD 7A 03    ;
CODE_208E63:    BEQ CODE_208E70             ; $20:8E63: F0 0B       ;
CODE_208E65:    JSL CODE_22E0A9             ; $20:8E65: 22 A9 E0 22 ;
CODE_208E69:    JSL CODE_29EBF7             ; $20:8E69: 22 F7 EB 29 ;
CODE_208E6D:    JMP CODE_208D20             ; $20:8E6D: 4C 20 8D    ;

CODE_208E70:    LDA $BF                     ; $20:8E70: A5 BF       ;
CODE_208E72:    BNE CODE_208E9A             ; $20:8E72: D0 26       ;
CODE_208E74:    LDY $25                     ; $20:8E74: A4 25       ;
CODE_208E76:    LDA $0425                   ; $20:8E76: AD 25 04    ;
CODE_208E79:    BEQ CODE_208E86             ; $20:8E79: F0 0B       ;
CODE_208E7B:    LDA $0216                   ; $20:8E7B: AD 16 02    ;
CODE_208E7E:    AND #$F0                    ; $20:8E7E: 29 F0       ;
CODE_208E80:    ORA $13                     ; $20:8E80: 05 13       ;
CODE_208E82:    STA $B7                     ; $20:8E82: 85 B7       ;
CODE_208E84:    BRA CODE_208E8D             ; $20:8E84: 80 07       ;
CODE_208E86:    LDA $0210                   ; $20:8E86: AD 10 02    ;
CODE_208E89:    STA $B7                     ; $20:8E89: 85 B7       ;
CODE_208E8B:    LDA $12                     ; $20:8E8B: A5 12       ;
CODE_208E8D:    JSL CODE_2097F5             ; $20:8E8D: 22 F5 97 20 ;
CODE_208E91:    LDA $0425                   ; $20:8E91: AD 25 04    ;
CODE_208E94:    BNE CODE_208E9A             ; $20:8E94: D0 04       ;
CODE_208E96:    DEC $24                     ; $20:8E96: C6 24       ;
CODE_208E98:    INC $23                     ; $20:8E98: E6 23       ;
CODE_208E9A:    LDA $B7                     ; $20:8E9A: A5 B7       ;
CODE_208E9C:    PHA                         ; $20:8E9C: 48          ;
CODE_208E9D:    LDA $0425                   ; $20:8E9D: AD 25 04    ;
CODE_208EA0:    BEQ CODE_208EAE             ; $20:8EA0: F0 0C       ;
CODE_208EA2:    LDA $0218                   ; $20:8EA2: AD 18 02    ;
CODE_208EA5:    AND #$F0                    ; $20:8EA5: 29 F0       ;
CODE_208EA7:    ORA $0219                   ; $20:8EA7: 0D 19 02    ;
CODE_208EAA:    STA $B7                     ; $20:8EAA: 85 B7       ;
CODE_208EAC:    BRA CODE_208EB6             ; $20:8EAC: 80 08       ;

CODE_208EAE:    LDA $0212                   ; $20:8EAE: AD 12 02    ;
CODE_208EB1:    STA $B7                     ; $20:8EB1: 85 B7       ;
CODE_208EB3:    LDA $0213                   ; $20:8EB3: AD 13 02    ;
CODE_208EB6:    PLA                         ; $20:8EB6: 68          ;
CODE_208EB7:    STA $B7                     ; $20:8EB7: 85 B7       ;
CODE_208EB9:    LDA $0414                   ; $20:8EB9: AD 14 04    ;
CODE_208EBC:    BEQ CODE_208F21             ; $20:8EBC: F0 63       ;
CODE_208EBE:    LDA $034E                   ; $20:8EBE: AD 4E 03    ;
CODE_208EC1:    BEQ CODE_208F16             ; $20:8EC1: F0 53       ;
CODE_208EC3:    LDY #$08                    ; $20:8EC3: A0 08       ;
CODE_208EC5:    LDA $BB                     ; $20:8EC5: A5 BB       ;
CODE_208EC7:    BNE CODE_208ECB             ; $20:8EC7: D0 02       ;
CODE_208EC9:    LDY #$94                    ; $20:8EC9: A0 94       ;
CODE_208ECB:    STY $BC                     ; $20:8ECB: 84 BC       ;
CODE_208ECD:    LDA #$01                    ; $20:8ECD: A9 01       ;
CODE_208ECF:    STA $9C                     ; $20:8ECF: 85 9C       ;
CODE_208ED1:    STZ $0781                   ; $20:8ED1: 9C 81 07    ;
CODE_208ED4:    STZ $0780                   ; $20:8ED4: 9C 80 07    ;
CODE_208ED7:    JSR CODE_20801F             ; $20:8ED7: 20 1F 80    ;
CODE_208EDA:    JMP CODE_208EF5             ; $20:8EDA: 4C F5 8E    ;

CODE_208EDD:    LDA $F8                     ; $20:8EDD: A5 F8       ;
CODE_208EDF:    AND #$20                    ; $20:8EDF: 29 20       ;
CODE_208EE1:    BEQ CODE_208EE6             ; $20:8EE1: F0 03       ;
CODE_208EE3:    INC $00EC                   ; $20:8EE3: EE EC 00    ;
CODE_208EE6:    LDA $F8                     ; $20:8EE6: A5 F8       ;
CODE_208EE8:    AND #$10                    ; $20:8EE8: 29 10       ;
CODE_208EEA:    BNE CODE_208EF5             ; $20:8EEA: D0 09       ;
CODE_208EEC:    LDA $00EC                   ; $20:8EEC: AD EC 00    ;
CODE_208EEF:    AND #$01                    ; $20:8EEF: 29 01       ;
CODE_208EF1:    BEQ CODE_208EF5             ; $20:8EF1: F0 02       ;
CODE_208EF3:    BRA CODE_208ED7             ; $20:8EF3: 80 E2       ;

CODE_208EF5:    JSL CODE_22E0A9             ; $20:8EF5: 22 A9 E0 22 ;
CODE_208EF9:    JSL CODE_20E237             ; $20:8EF9: 22 37 E2 20 ;
CODE_208EFD:    JSL CODE_278FC1             ; $20:8EFD: 22 C1 8F 27 ;
CODE_208F01:    JSL CODE_27BE7E             ; $20:8F01: 22 7E BE 27 ;
CODE_208F05:    JSL CODE_27B299             ; $20:8F05: 22 99 B2 27 ;
CODE_208F09:    JSL CODE_27DC9E             ; $20:8F09: 22 9E DC 27 ;
CODE_208F0D:    LDA $034E                   ; $20:8F0D: AD 4E 03    ;
CODE_208F10:    CMP #$20                    ; $20:8F10: C9 20       ;
CODE_208F12:    BCC CODE_208ED7             ; $20:8F12: 90 C3       ;
CODE_208F14:    STZ $9C                     ; $20:8F14: 64 9C       ;
CODE_208F16:    STZ $034E                   ; $20:8F16: 9C 4E 03    ;
CODE_208F19:    JSL CODE_29C794             ; $20:8F19: 22 94 C7 29 ;
CODE_208F1D:    JML CODE_29DFAD             ; $20:8F1D: 5C AD DF 29 ;

CODE_208F21:    JSL CODE_22E0A9             ; $20:8F21: 22 A9 E0 22 ;
CODE_208F25:    JSL CODE_209D5A             ; $20:8F25: 22 5A 9D 20 ;
CODE_208F29:    STZ $0781                   ; $20:8F29: 9C 81 07    ;
CODE_208F2C:    STZ $0780                   ; $20:8F2C: 9C 80 07    ;
CODE_208F2F:    JSL CODE_23BFA7             ; $20:8F2F: 22 A7 BF 23 ;
CODE_208F33:    LDA $BF                     ; $20:8F33: A5 BF       ;
CODE_208F35:    CMP #$03                    ; $20:8F35: C9 03       ;
CODE_208F37:    BEQ CODE_208F52             ; $20:8F37: F0 19       ;
CODE_208F39:    JSL CODE_278FC1             ; $20:8F39: 22 C1 8F 27 ;
CODE_208F3D:    JSL CODE_27BE7E             ; $20:8F3D: 22 7E BE 27 ;
CODE_208F41:    JSL CODE_27B299             ; $20:8F41: 22 99 B2 27 ;
CODE_208F45:    JSL CODE_27DC9E             ; $20:8F45: 22 9E DC 27 ;
CODE_208F49:    LDA $0580                   ; $20:8F49: AD 80 05    ;
CODE_208F4C:    BEQ CODE_208F52             ; $20:8F4C: F0 04       ;
CODE_208F4E:    JSL CODE_278500             ; $20:8F4E: 22 00 85 27 ;
CODE_208F52:    LDA $14                     ; $20:8F52: A5 14       ;
CODE_208F54:    BEQ CODE_208F61             ; $20:8F54: F0 0B       ;
CODE_208F56:    LDX $0726                   ; $20:8F56: AE 26 07    ;
CODE_208F59:    LDA $BB                     ; $20:8F59: A5 BB       ;
CODE_208F5B:    STA $0747,x                 ; $20:8F5B: 9D 47 07    ;
CODE_208F5E:    STZ $07BE                   ; $20:8F5E: 9C BE 07    ;
CODE_208F61:    JSL CODE_278000             ; $20:8F61: 22 00 80 27 ;
CODE_208F65:    LDA $0380                   ; $20:8F65: AD 80 03    ;
CODE_208F68:    CMP #$FF                    ; $20:8F68: C9 FF       ;
CODE_208F6A:    BNE CODE_208F8C             ; $20:8F6A: D0 20       ;
CODE_208F6C:    LDA $03EE                   ; $20:8F6C: AD EE 03    ;
CODE_208F6F:    BNE CODE_208F8C             ; $20:8F6F: D0 1B       ;
CODE_208F71:    LDA $037B                   ; $20:8F71: AD 7B 03    ;
CODE_208F74:    BNE CODE_208F8C             ; $20:8F74: D0 16       ;
CODE_208F76:    LDA $28                     ; $20:8F76: A5 28       ;
CODE_208F78:    BNE CODE_208F8C             ; $20:8F78: D0 12       ;
CODE_208F7A:    LDA $041C                   ; $20:8F7A: AD 1C 04    ;
CODE_208F7D:    BNE CODE_208F88             ; $20:8F7D: D0 09       ;
CODE_208F7F:    JSL CODE_29EAA5             ; $20:8F7F: 22 A5 EA 29 ;
CODE_208F83:    LDA $05F2                   ; $20:8F83: AD F2 05    ;
CODE_208F86:    BEQ CODE_208F92             ; $20:8F86: F0 0A       ;
CODE_208F88:    JSL CODE_29D8E0             ; $20:8F88: 22 E0 D8 29 ;
CODE_208F8C:    LDA #$00                    ; $20:8F8C: A9 00       ;
CODE_208F8E:    STA $7E3954                 ; $20:8F8E: 8F 54 39 7E ;
CODE_208F92:    STZ $037B                   ; $20:8F92: 9C 7B 03    ;
CODE_208F95:    LDA $14                     ; $20:8F95: A5 14       ;
CODE_208F97:    BEQ CODE_208FFA             ; $20:8F97: F0 61       ;
CODE_208F99:    LDX $0726                   ; $20:8F99: AE 26 07    ;
CODE_208F9C:    LDA #$01                    ; $20:8F9C: A9 01       ;
CODE_208F9E:    STA $074A,x                 ; $20:8F9E: 9D 4A 07    ;
CODE_208FA1:    JSL CODE_29E2B6             ; $20:8FA1: 22 B6 E2 29 ;
CODE_208FA5:    LDA #$80                    ; $20:8FA5: A9 80       ;
CODE_208FA7:    STA $16                     ; $20:8FA7: 85 16       ;
CODE_208FA9:    LDA #$80                ; $20:8FA9: A9 80       ;\
CODE_208FAB:    STA $1202               ; $20:8FAB: 8D 02 12    ;/Fade out music
CODE_208FAE:    JSR CODE_20801F             ; $20:8FAE: 20 1F 80    ;
CODE_208FB1:    STZ $0728                   ; $20:8FB1: 9C 28 07    ;
CODE_208FB4:    STZ $4200                   ; $20:8FB4: 9C 00 42    ;
CODE_208FB7:    LDX $0726                   ; $20:8FB7: AE 26 07    ;
CODE_208FBA:    LDA $073D,x                 ; $20:8FBA: BD 3D 07    ;
CODE_208FBD:    BEQ CODE_208FD0             ; $20:8FBD: F0 11       ;
CODE_208FBF:    LDA $0713                   ; $20:8FBF: AD 13 07    ;
CODE_208FC2:    BNE CODE_208FD0             ; $20:8FC2: D0 0C       ;
CODE_208FC4:    LDA $7E3955                 ; $20:8FC4: AF 55 39 7E ;
CODE_208FC8:    INC A                       ; $20:8FC8: 1A          ;
CODE_208FC9:    STA $7E3955                 ; $20:8FC9: 8F 55 39 7E ;
CODE_208FCD:    JMP CODE_208691             ; $20:8FCD: 4C 91 86    ;

CODE_208FD0:    LDY #$06                    ; $20:8FD0: A0 06       ;
CODE_208FD2:    JSR CODE_20982D             ; $20:8FD2: 20 2D 98    ;
CODE_208FD5:    STZ $1CF2                   ; $20:8FD5: 9C F2 1C    ;
CODE_208FD8:    LDA #$80                    ; $20:8FD8: A9 80       ;
CODE_208FDA:    STA $1202               ; $20:8FDA: 8D 02 12    ;\
CODE_208FDD:    LDA $0713               ; $20:8FDD: AD 13 07    ;/Fade out music
CODE_208FE0:    BNE CODE_208FF3             ; $20:8FE0: D0 11       ;
CODE_208FE2:    LDA $078E                   ; $20:8FE2: AD 8E 07    ;
CODE_208FE5:    BEQ CODE_208FF3             ; $20:8FE5: F0 0C       ;
CODE_208FE7:    LDA #$A8                    ; $20:8FE7: A9 A8       ;
CODE_208FE9:    STA $FF                     ; $20:8FE9: 85 FF       ;
CODE_208FEB:    LDA #$20                    ; $20:8FEB: A9 20       ;
CODE_208FED:    STA $0100                   ; $20:8FED: 8D 00 01    ;
CODE_208FF0:    JMP CODE_20C617             ; $20:8FF0: 4C 17 C6    ;

CODE_208FF3:    LDA #$28                    ; $20:8FF3: A9 28       ;
CODE_208FF5:    STA $FF                     ; $20:8FF5: 85 FF       ;
CODE_208FF7:    JMP CODE_2090FA             ; $20:8FF7: 4C FA 90    ;

CODE_208FFA:    JMP CODE_208D20             ; $20:8FFA: 4C 20 8D    ;

CODE_208FFD:    LDA #$C0                    ; $20:8FFD: A9 C0       ;
CODE_208FFF:    STA $0100                   ; $20:8FFF: 8D 00 01    ;
CODE_209002:    LDA #$00                    ; $20:9002: A9 00       ;
CODE_209004:    STA $0101                   ; $20:9004: 8D 01 01    ;
CODE_209007:    STZ $0728                   ; $20:9007: 9C 28 07    ;
CODE_20900A:    STZ $14                     ; $20:900A: 64 14       ;
CODE_20900C:    JSL CODE_29C6FA             ; $20:900C: 22 FA C6 29 ;
CODE_209010:    LDA #$00                    ; $20:9010: A9 00       ;
CODE_209012:    STA $7E3955                 ; $20:9012: 8F 55 39 7E ;
CODE_209016:    JSL CODE_29C794             ; $20:9016: 22 94 C7 29 ;
CODE_20901A:    LDA #$80                    ; $20:901A: A9 80       ;
CODE_20901C:    STA $2100                   ; $20:901C: 8D 00 21    ;
CODE_20901F:    STZ $4200                   ; $20:901F: 9C 00 42    ;
CODE_209022:    REP #$20                    ; $20:9022: C2 20       ;
CODE_209024:    LDX #$80                    ; $20:9024: A2 80       ;
CODE_209026:    STX $2115                   ; $20:9026: 8E 15 21    ;
CODE_209029:    LDA #$2800                  ; $20:9029: A9 00 28    ;
CODE_20902C:    STA $2116                   ; $20:902C: 8D 16 21    ;
CODE_20902F:    LDA #$1801                  ; $20:902F: A9 01 18    ;
CODE_209032:    STA $4300                   ; $20:9032: 8D 00 43    ;
CODE_209035:    STA $4310                   ; $20:9035: 8D 10 43    ;
CODE_209038:    STA $4320                   ; $20:9038: 8D 20 43    ;
CODE_20903B:    LDA.w #DATA_33B000                  ; $20:903B: A9 00 B0    ;
CODE_20903E:    STA $4302                   ; $20:903E: 8D 02 43    ;
CODE_209041:    LDA.w #DATA_398000                  ; $20:9041: A9 00 80    ;
CODE_209044:    STA $4312                   ; $20:9044: 8D 12 43    ;
CODE_209047:    LDA.w #DATA_328800                  ; $20:9047: A9 00 88    ;
CODE_20904A:    STA $4322                   ; $20:904A: 8D 22 43    ;
CODE_20904D:    LDX.b #DATA_33B000>>16                      ; $20:904D: A2 33       ;
CODE_20904F:    STX $4304                   ; $20:904F: 8E 04 43    ;
CODE_209052:    LDX.b #DATA_398000>>16                      ; $20:9052: A2 39       ;
CODE_209054:    STX $4314                   ; $20:9054: 8E 14 43    ;
CODE_209057:    LDX.b #DATA_328800>>16                      ; $20:9057: A2 32       ;
CODE_209059:    STX $4324                   ; $20:9059: 8E 24 43    ;
CODE_20905C:    LDA #$1000                  ; $20:905C: A9 00 10    ;
CODE_20905F:    STA $4305                   ; $20:905F: 8D 05 43    ;
CODE_209062:    LDA #$4000                  ; $20:9062: A9 00 40    ;
CODE_209065:    STA $4315                   ; $20:9065: 8D 15 43    ;
CODE_209068:    LDA #$0800                  ; $20:9068: A9 00 08    ;
CODE_20906B:    STA $4325                   ; $20:906B: 8D 25 43    ;
CODE_20906E:    LDX #$01                    ; $20:906E: A2 01       ;
CODE_209070:    STX $420B                   ; $20:9070: 8E 0B 42    ;
CODE_209073:    LDA #$6000                  ; $20:9073: A9 00 60    ;
CODE_209076:    STA $2116                   ; $20:9076: 8D 16 21    ;
CODE_209079:    INX                         ; $20:9079: E8          ;
CODE_20907A:    STX $420B                   ; $20:907A: 8E 0B 42    ;
CODE_20907D:    LDA #$3400                  ; $20:907D: A9 00 34    ;
CODE_209080:    STA $2116                   ; $20:9080: 8D 16 21    ;
CODE_209083:    LDX #$04                    ; $20:9083: A2 04       ;
CODE_209085:    STX $420B                   ; $20:9085: 8E 0B 42    ;
CODE_209088:    SEP #$20                    ; $20:9088: E2 20       ;
CODE_20908A:    JSL CODE_29E29D             ; $20:908A: 22 9D E2 29 ;
CODE_20908E:    JSR CODE_20801F             ; $20:908E: 20 1F 80    ;
CODE_209091:    JSL CODE_29C280             ; $20:9091: 22 80 C2 29 ;
CODE_209095:    LDA $14                     ; $20:9095: A5 14       ;
CODE_209097:    BEQ CODE_20908E             ; $20:9097: F0 F5       ;
CODE_209099:    LDA #$80                ; $20:9099: A9 80       ;\
CODE_20909B:    STA $1202               ; $20:909B: 8D 02 12    ;/Fade out music
CODE_20909E:    LDA #$03                    ; $20:909E: A9 03       ;
CODE_2090A0:    STA $020D                   ; $20:90A0: 8D 0D 02    ;
CODE_2090A3:    JSR CODE_20801F             ; $20:90A3: 20 1F 80    ;
CODE_2090A6:    LDA $0727                   ; $20:90A6: AD 27 07    ;
CODE_2090A9:    CMP #$06                    ; $20:90A9: C9 06       ;
CODE_2090AB:    BNE CODE_2090B6             ; $20:90AB: D0 09       ;
CODE_2090AD:    LDA $020D                   ; $20:90AD: AD 0D 02    ;
CODE_2090B0:    CLC                         ; $20:90B0: 18          ;
CODE_2090B1:    ADC #$10                    ; $20:90B1: 69 10       ;
CODE_2090B3:    STA $020D                   ; $20:90B3: 8D 0D 02    ;
CODE_2090B6:    DEC $16                     ; $20:90B6: C6 16       ;
CODE_2090B8:    BPL CODE_2090A3             ; $20:90B8: 10 E9       ;
CODE_2090BA:    LDA #$80                    ; $20:90BA: A9 80       ;
CODE_2090BC:    STA $16                     ; $20:90BC: 85 16       ;
CODE_2090BE:    STZ $020D                   ; $20:90BE: 9C 0D 02    ;
CODE_2090C1:    LDY #$06                    ; $20:90C1: A0 06       ;
CODE_2090C3:    JSR CODE_20982D             ; $20:90C3: 20 2D 98    ;
CODE_2090C6:    LDX $072B                   ; $20:90C6: AE 2B 07    ;
CODE_2090C9:    DEX                         ; $20:90C9: CA          ;
CODE_2090CA:    STZ $073D,x                 ; $20:90CA: 9E 3D 07    ;
CODE_2090CD:    STZ $0713                   ; $20:90CD: 9C 13 07    ;
CODE_2090D0:    STZ $0722,x                 ; $20:90D0: 9E 22 07    ;
CODE_2090D3:    STZ $0724,x                 ; $20:90D3: 9E 24 07    ;
CODE_2090D6:    DEX                         ; $20:90D6: CA          ;
CODE_2090D7:    BPL CODE_2090CA             ; $20:90D7: 10 F1       ;
CODE_2090D9:    LDX $0726                   ; $20:90D9: AE 26 07    ;
CODE_2090DC:    LDA #$1F                    ; $20:90DC: A9 1F       ;
CODE_2090DE:    CPX #$00                    ; $20:90DE: E0 00       ;
CODE_2090E0:    BEQ CODE_2090E5             ; $20:90E0: F0 03       ;
CODE_2090E2:    CLC                         ; $20:90E2: 18          ;
CODE_2090E3:    ADC #$23                    ; $20:90E3: 69 23       ;
CODE_2090E5:    TAY                         ; $20:90E5: A8          ;
CODE_2090E6:    LDX #$00                    ; $20:90E6: A2 00       ;
CODE_2090E8:    LDA $0715,x                 ; $20:90E8: BD 15 07    ;
CODE_2090EB:    STA $1D80,y                 ; $20:90EB: 99 80 1D    ;
CODE_2090EE:    INY                         ; $20:90EE: C8          ;
CODE_2090EF:    INX                         ; $20:90EF: E8          ;
CODE_2090F0:    CPX #$03                    ; $20:90F0: E0 03       ;
CODE_2090F2:    BNE CODE_2090E8             ; $20:90F2: D0 F4       ;
CODE_2090F4:    INC $0727                   ; $20:90F4: EE 27 07    ;
CODE_2090F7:    JMP CODE_2080B9             ; $20:90F7: 4C B9 80    ;

CODE_2090FA:    LDA #$C0                    ; $20:90FA: A9 C0       ;
CODE_2090FC:    STA $0100                   ; $20:90FC: 8D 00 01    ;
CODE_2090FF:    LDA #$00                    ; $20:90FF: A9 00       ;
CODE_209101:    STA $0101                   ; $20:9101: 8D 01 01    ;
CODE_209104:    LDX $0726                   ; $20:9104: AE 26 07    ;
CODE_209107:    LDA #$1F                    ; $20:9107: A9 1F       ;
CODE_209109:    CPX #$00                    ; $20:9109: E0 00       ;
CODE_20910B:    BEQ CODE_209110             ; $20:910B: F0 03       ;
CODE_20910D:    CLC                         ; $20:910D: 18          ;
CODE_20910E:    ADC #$23                    ; $20:910E: 69 23       ;
CODE_209110:    TAY                         ; $20:9110: A8          ;
CODE_209111:    LDX #$00                    ; $20:9111: A2 00       ;
CODE_209113:    LDA $0715,x                 ; $20:9113: BD 15 07    ;
CODE_209116:    STA $1D80,y                 ; $20:9116: 99 80 1D    ;
CODE_209119:    INY                         ; $20:9119: C8          ;
CODE_20911A:    INX                         ; $20:911A: E8          ;
CODE_20911B:    CPX #$03                    ; $20:911B: E0 03       ;
CODE_20911D:    BNE CODE_209113             ; $20:911D: D0 F4       ;
CODE_20911F:    LDA $1F55                   ; $20:911F: AD 55 1F    ;
CODE_209122:    BEQ CODE_209127             ; $20:9122: F0 03       ;
CODE_209124:    DEC $1F55                   ; $20:9124: CE 55 1F    ;
CODE_209127:    LDY #$06                    ; $20:9127: A0 06       ;
CODE_209129:    LDA $0713                   ; $20:9129: AD 13 07    ;
CODE_20912C:    BNE CODE_209185             ; $20:912C: D0 57       ;
CODE_20912E:    LDA $070A                   ; $20:912E: AD 0A 07    ;
CODE_209131:    CMP #$0F                    ; $20:9131: C9 0F       ;
CODE_209133:    BCS CODE_20917D                     ; $20:9133: B0 48       ;
CODE_209135:    CMP #$07                    ; $20:9135: C9 07       ;
CODE_209137:    BEQ CODE_20917D             ; $20:9137: F0 44       ;
CODE_209139:    LDX $0726                   ; $20:9139: AE 26 07    ;
CODE_20913C:    LDA $7E397D,x               ; $20:913C: BF 7D 39 7E ;
CODE_209140:    STA $7E396A                 ; $20:9140: 8F 6A 39 7E ;
CODE_209144:    LDA $7E397F,x               ; $20:9144: BF 7F 39 7E ;
CODE_209148:    STA $7E396B                 ; $20:9148: 8F 6B 39 7E ;
CODE_20914C:    LDA $7E3981,x               ; $20:914C: BF 81 39 7E ;
CODE_209150:    STA $7E396C                 ; $20:9150: 8F 6C 39 7E ;
CODE_209154:    LDA $7E3975,x               ; $20:9154: BF 75 39 7E ;
CODE_209158:    STA $7E397D,x               ; $20:9158: 9F 7D 39 7E ;
CODE_20915C:    LDA $7E3977,x               ; $20:915C: BF 77 39 7E ;
CODE_209160:    STA $7E397F,x               ; $20:9160: 9F 7F 39 7E ;
CODE_209164:    LDA $7E3979,x               ; $20:9164: BF 79 39 7E ;
CODE_209168:    STA $7E3981,x               ; $20:9168: 9F 81 39 7E ;
CODE_20916C:    LDA $0722,x                 ; $20:916C: BD 22 07    ;
CODE_20916F:    STA $7E3985,x               ; $20:916F: 9F 85 39 7E ;
CODE_209173:    LDA $0724,x                 ; $20:9173: BD 24 07    ;
CODE_209176:    STA $7E3987,x               ; $20:9176: 9F 87 39 7E ;
CODE_20917A:    JMP CODE_20919F             ; $20:917A: 4C 9F 91    ;

CODE_20917D:    LDA #$01                    ; $20:917D: A9 01       ;
CODE_20917F:    STA $7FFF03                 ; $20:917F: 8F 03 FF 7F ;
CODE_209183:    BRA CODE_20919F             ; $20:9183: 80 1A       ;
CODE_209185:    LDY #$02                    ; $20:9185: A0 02       ;
CODE_209187:    STZ $0713                   ; $20:9187: 9C 13 07    ;
CODE_20918A:    STZ $07E3                   ; $20:918A: 9C E3 07    ;
CODE_20918D:    LDX $0726                   ; $20:918D: AE 26 07    ;
CODE_209190:    LDA #$01                    ; $20:9190: A9 01       ;
CODE_209192:    STA $073F,x                 ; $20:9192: 9D 3F 07    ;
CODE_209195:    LDA $078C                   ; $20:9195: AD 8C 07    ;
CODE_209198:    BNE CODE_20919F             ; $20:9198: D0 05       ;
CODE_20919A:    DEC $0736,x                 ; $20:919A: DE 36 07    ;
CODE_20919D:    BMI CODE_2091AA             ; $20:919D: 30 0B       ;
CODE_20919F:    LDA #$80                ; $20:919F: A9 80       ;\
CODE_2091A1:    STA $1202               ; $20:91A1: 8D 02 12    ;/Fade out music
CODE_2091A4:    STY $0729                   ; $20:91A4: 8C 29 07    ;
CODE_2091A7:    JMP CODE_2080E5             ; $20:91A7: 4C E5 80    ;

CODE_2091AA:    LDA #$01                    ; $20:91AA: A9 01       ;
CODE_2091AC:    STA $005A,x                 ; $20:91AC: 9D 5A 00    ;
CODE_2091AF:    STZ $070A                   ; $20:91AF: 9C 0A 07    ;
CODE_2091B2:    STZ $20                     ; $20:91B2: 64 20       ;
CODE_2091B4:    STZ $59                     ; $20:91B4: 64 59       ;
CODE_2091B6:    STZ $0711                   ; $20:91B6: 9C 11 07    ;
CODE_2091B9:    LDA #$58                    ; $20:91B9: A9 58       ;
CODE_2091BB:    STA $1DCB                   ; $20:91BB: 8D CB 1D    ;
CODE_2091BE:    STZ $034D                   ; $20:91BE: 9C 4D 03    ;
CODE_2091C1:    STZ $4200                   ; $20:91C1: 9C 00 42    ;
CODE_2091C4:    JSL CODE_22E0A9             ; $20:91C4: 22 A9 E0 22 ;
CODE_2091C8:    JSR CODE_20F9EB             ; $20:91C8: 20 EB F9    ;
CODE_2091CB:    LDA #$FF                    ; $20:91CB: A9 FF       ;
CODE_2091CD:    STA $00                     ; $20:91CD: 85 00       ;
CODE_2091CF:    STZ $01                     ; $20:91CF: 64 01       ;
CODE_2091D1:    JSR CODE_20FA0A             ; $20:91D1: 20 0A FA    ;
CODE_2091D4:    LDA #$80                    ; $20:91D4: A9 80       ;
CODE_2091D6:    STA $16                     ; $20:91D6: 85 16       ;
CODE_2091D8:    STA $2100                   ; $20:91D8: 8D 00 21    ;
CODE_2091DB:    LDA $0728                   ; $20:91DB: AD 28 07    ;
CODE_2091DE:    BNE CODE_2091EA             ; $20:91DE: D0 0A       ;
CODE_2091E0:    LDA #$0A                ; $20:91E0: A9 0A       ;\
CODE_2091E2:    STA $1202               ; $20:91E2: 8D 02 12    ;/Game over music
CODE_2091E5:    LDA #$A0                    ; $20:91E5: A9 A0       ;
CODE_2091E7:    STA $02D8                   ; $20:91E7: 8D D8 02    ;
CODE_2091EA:    REP #$20                    ; $20:91EA: C2 20       ;
CODE_2091EC:    LDA #$2000                  ; $20:91EC: A9 00 20    ;
CODE_2091EF:    STA $2116                   ; $20:91EF: 8D 16 21    ;
CODE_2091F2:    LDX #$80                    ; $20:91F2: A2 80       ;
CODE_2091F4:    STX $2115                   ; $20:91F4: 8E 15 21    ;
CODE_2091F7:    LDA #$1801                  ; $20:91F7: A9 01 18    ;
CODE_2091FA:    STA $4300                   ; $20:91FA: 8D 00 43    ;
CODE_2091FD:    STA $4310                   ; $20:91FD: 8D 10 43    ;
CODE_209200:    STA $4320                   ; $20:9200: 8D 20 43    ;
CODE_209203:    LDY #$01                    ; $20:9203: A0 01       ;
CODE_209205:    LDX $0727                   ; $20:9205: AE 27 07    ;
CODE_209208:    CPX #$04                    ; $20:9208: E0 04       ;
CODE_20920A:    BNE CODE_20923C             ; $20:920A: D0 30       ;
CODE_20920C:    LDA.w #DATA_39C000                  ; $20:920C: A9 00 C0    ;
CODE_20920F:    STA $4302                   ; $20:920F: 8D 02 43    ;
CODE_209212:    LDX.b #DATA_39C000>>16                      ; $20:9212: A2 39       ;
CODE_209214:    STX $4304                   ; $20:9214: 8E 04 43    ;
CODE_209217:    LDA #$1000                  ; $20:9217: A9 00 10    ;
CODE_20921A:    STA $4305                   ; $20:921A: 8D 05 43    ;
CODE_20921D:    STY $420B                   ; $20:921D: 8C 0B 42    ;
CODE_209220:    LDA #$2800                  ; $20:9220: A9 00 28    ;
CODE_209223:    STA $2116                   ; $20:9223: 8D 16 21    ;
CODE_209226:    LDA.w #DATA_31B000                  ; $20:9226: A9 00 B0    ;
CODE_209229:    STA $4302                   ; $20:9229: 8D 02 43    ;
CODE_20922C:    LDX.b #DATA_31B000>>16                      ; $20:922C: A2 31       ;
CODE_20922E:    STX $4304                   ; $20:922E: 8E 04 43    ;
CODE_209231:    LDA #$1000                  ; $20:9231: A9 00 10    ;
CODE_209234:    STA $4305                   ; $20:9234: 8D 05 43    ;
CODE_209237:    STY $420B                   ; $20:9237: 8C 0B 42    ;
CODE_20923A:    BRA CODE_209250             ; $20:923A: 80 14       ;
CODE_20923C:    LDA.w #DATA_31A000                  ; $20:923C: A9 00 A0    ;
CODE_20923F:    STA $4302                   ; $20:923F: 8D 02 43    ;
CODE_209242:    LDX.b #DATA_31A000>>16                      ; $20:9242: A2 31       ;
CODE_209244:    STX $4304                   ; $20:9244: 8E 04 43    ;
CODE_209247:    LDA #$2000                  ; $20:9247: A9 00 20    ;
CODE_20924A:    STA $4305                   ; $20:924A: 8D 05 43    ;
CODE_20924D:    STY $420B                   ; $20:924D: 8C 0B 42    ;
CODE_209250:    LDA.w #DATA_38C000                  ; $20:9250: A9 00 C0    ;
CODE_209253:    STA $4312                   ; $20:9253: 8D 12 43    ;
CODE_209256:    LDA.w #DATA_388000                  ; $20:9256: A9 00 80    ;
CODE_209259:    STA $4322                   ; $20:9259: 8D 22 43    ;
CODE_20925C:    LDX.b #DATA_388000>>16                      ; $20:925C: A2 38       ;
CODE_20925E:    STX $4314                   ; $20:925E: 8E 14 43    ;
CODE_209261:    STX $4324                   ; $20:9261: 8E 24 43    ;
CODE_209264:    LDA #$4000                  ; $20:9264: A9 00 40    ;
CODE_209267:    STA $4315                   ; $20:9267: 8D 15 43    ;
CODE_20926A:    LDA #$1000                  ; $20:926A: A9 00 10    ;
CODE_20926D:    STA $4325                   ; $20:926D: 8D 25 43    ;
CODE_209270:    LDA #$6000                  ; $20:9270: A9 00 60    ;
CODE_209273:    STA $2116                   ; $20:9273: 8D 16 21    ;
CODE_209276:    LDX #$02                    ; $20:9276: A2 02       ;
CODE_209278:    STX $420B                   ; $20:9278: 8E 0B 42    ;
CODE_20927B:    LDA #$5800                  ; $20:927B: A9 00 58    ;
CODE_20927E:    STA $2116                   ; $20:927E: 8D 16 21    ;
CODE_209281:    LDX #$04                    ; $20:9281: A2 04       ;
CODE_209283:    STX $420B                   ; $20:9283: 8E 0B 42    ;
CODE_209286:    REP #$10                    ; $20:9286: C2 10       ;
CODE_209288:    PHB                         ; $20:9288: 8B          ;
CODE_209289:    LDX.w #DATA_1CBE00                  ; $20:9289: A2 00 BE    ;
CODE_20928C:    LDY #$1300                  ; $20:928C: A0 00 13    ;
CODE_20928F:    LDA #$01FF                  ; $20:928F: A9 FF 01    ;
CODE_209292:    MVN $00, DATA_1CBE00>>16                    ; $20:9292: 54 00 1C    ;
CODE_209295:    PLB                         ; $20:9295: AB          ;
CODE_209296:    SEP #$30                    ; $20:9296: E2 30       ;
CODE_209298:    LDX $072B                   ; $20:9298: AE 2B 07    ;
CODE_20929B:    DEX                         ; $20:929B: CA          ;
CODE_20929C:    LDA $7E3975,x               ; $20:929C: BF 75 39 7E ;
CODE_2092A0:    STA $43,x                   ; $20:92A0: 95 43       ;
CODE_2092A2:    LDA $7E3977,x               ; $20:92A2: BF 77 39 7E ;
CODE_2092A6:    STA $45,x                   ; $20:92A6: 95 45       ;
CODE_2092A8:    LDA $7E3979,x               ; $20:92A8: BF 79 39 7E ;
CODE_2092AC:    STA $47,x                   ; $20:92AC: 95 47       ;
CODE_2092AE:    LDA $7E397B,x               ; $20:92AE: BF 7B 39 7E ;
CODE_2092B2:    STA $52,x                   ; $20:92B2: 95 52       ;
CODE_2092B4:    LDA $7E3992,x               ; $20:92B4: BF 92 39 7E ;
CODE_2092B8:    STA $4B,x                   ; $20:92B8: 95 4B       ;
CODE_2092BA:    DEX                         ; $20:92BA: CA          ;
CODE_2092BB:    BPL CODE_20929C             ; $20:92BB: 10 DF       ;
CODE_2092BD:    JSL CODE_29BE21             ; $20:92BD: 22 21 BE 29 ;
CODE_2092C1:    LDX $0726                   ; $20:92C1: AE 26 07    ;
CODE_2092C4:    LDA $7E3992,x               ; $20:92C4: BF 92 39 7E ;
CODE_2092C8:    STA $4B,x                   ; $20:92C8: 95 4B       ;
CODE_2092CA:    LDY #$00                    ; $20:92CA: A0 00       ;
CODE_2092CC:    LDA $0727               ; $20:92CC: AD 27 07    ; \ Check if in world 8 submap 3 (spotlight submap)
CODE_2092CF:    CMP #$07                ; $20:92CF: C9 07       ;   If so, on game over screen make sure
CODE_2092D1:    BNE CODE_2092DD         ; $20:92D1: D0 0A       ;   to black out the overworld background with the Game Over window showing.
CODE_2092D3:    LDX $0726               ; $20:92D3: AE 26 07    ;
CODE_2092D6:    LDA $45,x               ; $20:92D6: B5 45       ;
CODE_2092D8:    CMP #$02                ; $20:92D8: C9 02       ;
CODE_2092DA:    BNE CODE_2092DD         ; $20:92DA: D0 01       ;
CODE_2092DC:    INY                     ; $20:92DC: C8          ;
CODE_2092DD:    STY $0598               ; $20:92DD: 8C 98 05    ; /
CODE_2092E0:    LDY $0726                   ; $20:92E0: AC 26 07    ;
CODE_2092E3:    LDA $0722,y                 ; $20:92E3: B9 22 07    ;
CODE_2092E6:    STA $B7                     ; $20:92E6: 85 B7       ;
CODE_2092E8:    LDA $0724,y                 ; $20:92E8: B9 24 07    ;
CODE_2092EB:    JSL CODE_2097F5             ; $20:92EB: 22 F5 97 20 ;
CODE_2092EF:    LDA $24                     ; $20:92EF: A5 24       ;
CODE_2092F1:    STA $23                     ; $20:92F1: 85 23       ;
CODE_2092F3:    STZ $1EBF                   ; $20:92F3: 9C BF 1E    ;
CODE_2092F6:    LDA #$20                    ; $20:92F6: A9 20       ;
CODE_2092F8:    STA $0612                   ; $20:92F8: 8D 12 06    ;
CODE_2092FB:    LDA #$02                    ; $20:92FB: A9 02       ;
CODE_2092FD:    JSR CODE_209610             ; $20:92FD: 20 10 96    ;
CODE_209300:    JSL CODE_20F58C             ; $20:9300: 22 8C F5 20 ;
CODE_209304:    JSL CODE_29EAA5             ; $20:9304: 22 A5 EA 29 ;
CODE_209308:    JSL CODE_29E766             ; $20:9308: 22 66 E7 29 ;
CODE_20930C:    JSL CODE_29E730             ; $20:930C: 22 30 E7 29 ;
CODE_209310:    LDA #$00                    ; $20:9310: A9 00       ;
CODE_209312:    JSR CODE_209610             ; $20:9312: 20 10 96    ;
CODE_209315:    LDA $0598                   ; $20:9315: AD 98 05    ;
CODE_209318:    BNE CODE_20931D             ; $20:9318: D0 03       ;
CODE_20931A:    JSR CODE_209CC0             ; $20:931A: 20 C0 9C    ;
CODE_20931D:    JSR CODE_2095B9             ; $20:931D: 20 B9 95    ;
CODE_209320:    JSL CODE_2A8B4B             ; $20:9320: 22 4B 8B 2A ;
CODE_209324:    LDY $0726                   ; $20:9324: AC 26 07    ;
CODE_209327:    LDA $0722,y                 ; $20:9327: B9 22 07    ;
CODE_20932A:    STA $0210                   ; $20:932A: 8D 10 02    ;
CODE_20932D:    STA $B7                     ; $20:932D: 85 B7       ;
CODE_20932F:    LDA $0724,y                 ; $20:932F: B9 24 07    ;
CODE_209332:    STA $12                     ; $20:9332: 85 12       ;
CODE_209334:    STA $0211                   ; $20:9334: 8D 11 02    ;
CODE_209337:    JSL CODE_2097F5             ; $20:9337: 22 F5 97 20 ;
CODE_20933B:    LDA $0728                   ; $20:933B: AD 28 07    ;
CODE_20933E:    BNE CODE_209382             ; $20:933E: D0 42       ;
CODE_209340:    JSL CODE_238000             ; $20:9340: 22 00 80 23 ;
CODE_209344:    JSL CODE_2AF800             ; $20:9344: 22 00 F8 2A ;
CODE_209348:    LDA #$44                    ; $20:9348: A9 44       ;
CODE_20934A:    STA $0287                   ; $20:934A: 8D 87 02    ;
CODE_20934D:    LDX #$14                    ; $20:934D: A2 14       ;
CODE_20934F:    LDA #$2C                    ; $20:934F: A9 2C       ;
CODE_209351:    STA $0281                   ; $20:9351: 8D 81 02    ;
CODE_209354:    LDA #$01                    ; $20:9354: A9 01       ;
CODE_209356:    STA $034D                   ; $20:9356: 8D 4D 03    ;
CODE_209359:    LDA $072B                   ; $20:9359: AD 2B 07    ;
CODE_20935C:    CMP #$02                    ; $20:935C: C9 02       ;
CODE_20935E:    BNE CODE_20937A             ; $20:935E: D0 1A       ;
CODE_209360:    LDA $0726                   ; $20:9360: AD 26 07    ;
CODE_209363:    EOR #$01                    ; $20:9363: 49 01       ;
CODE_209365:    TAY                         ; $20:9365: A8          ;
CODE_209366:    LDA $0736,y                 ; $20:9366: B9 36 07    ;
CODE_209369:    BMI CODE_20937A             ; $20:9369: 30 0F       ;
CODE_20936B:    LDX #$15                    ; $20:936B: A2 15       ;
CODE_20936D:    STZ $034D                   ; $20:936D: 9C 4D 03    ;
CODE_209370:    LDA #$24                    ; $20:9370: A9 24       ;
CODE_209372:    STA $0281                   ; $20:9372: 8D 81 02    ;
CODE_209375:    LDA #$60                    ; $20:9375: A9 60       ;
CODE_209377:    STA $1DCB                   ; $20:9377: 8D CB 1D    ;
CODE_20937A:    TXA                         ; $20:937A: 8A          ;
CODE_20937B:    JSR CODE_209610             ; $20:937B: 20 10 96    ;
CODE_20937E:    JSL CODE_2AF867             ; $20:937E: 22 67 F8 2A ;
CODE_209382:    LDA #$EF                    ; $20:9382: A9 EF       ;
CODE_209384:    STA $0216                   ; $20:9384: 8D 16 02    ;
CODE_209387:    STZ $021B                   ; $20:9387: 9C 1B 02    ;
CODE_20938A:    LDA #$C0                    ; $20:938A: A9 C0       ;
CODE_20938C:    STA $0100                   ; $20:938C: 8D 00 01    ;
CODE_20938F:    JSL CODE_29C794             ; $20:938F: 22 94 C7 29 ;
CODE_209393:    LDA #$01                    ; $20:9393: A9 01       ;
CODE_209395:    STA $020E                   ; $20:9395: 8D 0E 02    ;
CODE_209398:    LDA #$11                    ; $20:9398: A9 11       ;
CODE_20939A:    STA $020F                   ; $20:939A: 8D 0F 02    ;
CODE_20939D:    LDA #$09                    ; $20:939D: A9 09       ;
CODE_20939F:    STA $020C                   ; $20:939F: 8D 0C 02    ;
CODE_2093A2:    STA $2105                   ; $20:93A2: 8D 05 21    ;
CODE_2093A5:    LDA #$17                    ; $20:93A5: A9 17       ;
CODE_2093A7:    STA $0208                   ; $20:93A7: 8D 08 02    ;
CODE_2093AA:    LDA #$03                    ; $20:93AA: A9 03       ;
CODE_2093AC:    STA $021E                   ; $20:93AC: 8D 1E 02    ;
CODE_2093AF:    LDA #$80                    ; $20:93AF: A9 80       ;
CODE_2093B1:    STA $4200                   ; $20:93B1: 8D 00 42    ;
CODE_2093B4:    JSL CODE_22E0A9             ; $20:93B4: 22 A9 E0 22 ;
CODE_2093B8:    JSL CODE_23840D             ; $20:93B8: 22 0D 84 23 ;
CODE_2093BC:    LDX $0726                   ; $20:93BC: AE 26 07    ;
CODE_2093BF:    LDY #$06                    ; $20:93BF: A0 06       ;
CODE_2093C1:    CPX #$00                    ; $20:93C1: E0 00       ;
CODE_2093C3:    BEQ CODE_2093C7             ; $20:93C3: F0 02       ;
CODE_2093C5:    LDY #$29                    ; $20:93C5: A0 29       ;
CODE_2093C7:    LDA #$06                    ; $20:93C7: A9 06       ;
CODE_2093C9:    STA $00                     ; $20:93C9: 85 00       ;
CODE_2093CB:    LDA #$00                    ; $20:93CB: A9 00       ;
CODE_2093CD:    STA $1D9C,y                 ; $20:93CD: 99 9C 1D    ;
CODE_2093D0:    DEY                         ; $20:93D0: 88          ;
CODE_2093D1:    DEC $00                     ; $20:93D1: C6 00       ;
CODE_2093D3:    BPL CODE_2093CD             ; $20:93D3: 10 F8       ;
CODE_2093D5:    LDY #$3F                    ; $20:93D5: A0 3F       ;
CODE_2093D7:    CPX #$00                    ; $20:93D7: E0 00       ;
CODE_2093D9:    BEQ CODE_2093DD             ; $20:93D9: F0 02       ;
CODE_2093DB:    LDY #$7F                    ; $20:93DB: A0 7F       ;
CODE_2093DD:    LDA #$3F                    ; $20:93DD: A9 3F       ;
CODE_2093DF:    STA $00                     ; $20:93DF: 85 00       ;
CODE_2093E1:    REP #$30                    ; $20:93E1: C2 30       ;
CODE_2093E3:    TYA                         ; $20:93E3: 98          ;
CODE_2093E4:    AND #$00FF                  ; $20:93E4: 29 FF 00    ;
CODE_2093E7:    TAY                         ; $20:93E7: A8          ;
CODE_2093E8:    LDA $0727                   ; $20:93E8: AD 27 07    ;
CODE_2093EB:    AND #$00FF                  ; $20:93EB: 29 FF 00    ;
CODE_2093EE:    INC A                       ; $20:93EE: 1A          ;
CODE_2093EF:    ASL A                       ; $20:93EF: 0A          ;
CODE_2093F0:    ASL A                       ; $20:93F0: 0A          ;
CODE_2093F1:    ASL A                       ; $20:93F1: 0A          ;
CODE_2093F2:    ASL A                       ; $20:93F2: 0A          ;
CODE_2093F3:    ASL A                       ; $20:93F3: 0A          ;
CODE_2093F4:    ASL A                       ; $20:93F4: 0A          ;
CODE_2093F5:    DEC A                       ; $20:93F5: 3A          ;
CODE_2093F6:    TAX                         ; $20:93F6: AA          ;
CODE_2093F7:    SEP #$20                    ; $20:93F7: E2 20       ;
CODE_2093F9:    LDA $1D00,y                 ; $20:93F9: B9 00 1D    ;
CODE_2093FC:    AND.w DATA_218000,x                 ; $20:93FC: 3D 00 80    ;
CODE_2093FF:    STA $1D00,y                 ; $20:93FF: 99 00 1D    ;
CODE_209402:    DEX                         ; $20:9402: CA          ;
CODE_209403:    DEY                         ; $20:9403: 88          ;
CODE_209404:    DEC $00                     ; $20:9404: C6 00       ;
CODE_209406:    BPL CODE_2093F9             ; $20:9406: 10 F1       ;
CODE_209408:    SEP #$10                    ; $20:9408: E2 10       ;
CODE_20940A:    JSR CODE_2095CF             ; $20:940A: 20 CF 95    ;
CODE_20940D:    JSL CODE_29E29D             ; $20:940D: 22 9D E2 29 ;
CODE_209411:    LDA #$0F                    ; $20:9411: A9 0F       ;
CODE_209413:    STA $16                     ; $20:9413: 85 16       ;
CODE_209415:    STA $2100                   ; $20:9415: 8D 00 21    ;
CODE_209418:    JSR CODE_20801F             ; $20:9418: 20 1F 80    ;
CODE_20941B:    JSL CODE_22E0A9             ; $20:941B: 22 A9 E0 22 ;
CODE_20941F:    JSL CODE_23840D             ; $20:941F: 22 0D 84 23 ;
CODE_209423:    LDA $0728                   ; $20:9423: AD 28 07    ;
CODE_209426:    BEQ CODE_20942F             ; $20:9426: F0 07       ;
CODE_209428:    DEC A                       ; $20:9428: 3A          ;
CODE_209429:    BEQ CODE_20942F             ; $20:9429: F0 04       ;
CODE_20942B:    JSL CODE_2382A3             ; $20:942B: 22 A3 82 23 ;
CODE_20942F:    LDA $0728                   ; $20:942F: AD 28 07    ;
CODE_209432:    CMP #$06                    ; $20:9432: C9 06       ;
CODE_209434:    BEQ CODE_209441             ; $20:9434: F0 0B       ;
CODE_209436:    CMP #$09                    ; $20:9436: C9 09       ;
CODE_209438:    BNE CODE_209418             ; $20:9438: D0 DE       ;
CODE_20943A:    LDA $072B                   ; $20:943A: AD 2B 07    ;
CODE_20943D:    CMP #$01                    ; $20:943D: C9 01       ;
CODE_20943F:    BEQ CODE_209454             ; $20:943F: F0 13       ;
CODE_209441:    LDA #$80                ; $20:9441: A9 80       ;\
CODE_209443:    STA $1202               ; $20:9443: 8D 02 12    ;/Fade out music
CODE_209446:    JSL CODE_29E2B6             ; $20:9446: 22 B6 E2 29 ;
CODE_20944A:    LDA $0728                   ; $20:944A: AD 28 07    ;
CODE_20944D:    CMP #$09                    ; $20:944D: C9 09       ;
CODE_20944F:    BEQ CODE_209454             ; $20:944F: F0 03       ;
CODE_209451:    JMP CODE_2091C1             ; $20:9451: 4C C1 91    ;

CODE_209454:    STZ $0728                   ; $20:9454: 9C 28 07    ;
CODE_209457:    LDA $1DCB                   ; $20:9457: AD CB 1D    ;
CODE_20945A:    CMP #$70                    ; $20:945A: C9 70       ;
CODE_20945C:    BCC CODE_209461             ; $20:945C: 90 03       ;
CODE_20945E:    JMP CODE_20949B             ; $20:945E: 4C 9B 94    ;

CODE_209461:    STZ $0728                   ; $20:9461: 9C 28 07    ;
CODE_209464:    STZ $1DCB                   ; $20:9464: 9C CB 1D    ;
CODE_209467:    STZ $07E3                   ; $20:9467: 9C E3 07    ;
CODE_20946A:    LDX $0726                   ; $20:946A: AE 26 07    ;
CODE_20946D:    LDA $0210                   ; $20:946D: AD 10 02    ;
CODE_209470:    STA $0722,x                 ; $20:9470: 9D 22 07    ;
CODE_209473:    LDA $12                     ; $20:9473: A5 12       ;
CODE_209475:    STA $0724,x                 ; $20:9475: 9D 24 07    ;
CODE_209478:    LDA $43,x                   ; $20:9478: B5 43       ;
CODE_20947A:    STA $7E3975,x               ; $20:947A: 9F 75 39 7E ;
CODE_20947E:    LDA $45,x                   ; $20:947E: B5 45       ;
CODE_209480:    STA $7E3977,x               ; $20:9480: 9F 77 39 7E ;
CODE_209484:    LDA $47,x                   ; $20:9484: B5 47       ;
CODE_209486:    STA $7E3979,x               ; $20:9486: 9F 79 39 7E ;
CODE_20948A:    LDA $52,x                   ; $20:948A: B5 52       ;
CODE_20948C:    STA $7E397B,x               ; $20:948C: 9F 7B 39 7E ;
CODE_209490:    STZ $073F,x                 ; $20:9490: 9E 3F 07    ;
CODE_209493:    LDX $0726                   ; $20:9493: AE 26 07    ;
CODE_209496:    LDA #$04                    ; $20:9496: A9 04       ;
CODE_209498:    STA $0736,x                 ; $20:9498: 9D 36 07    ;
CODE_20949B:    JSR CODE_2095CF             ; $20:949B: 20 CF 95    ;
CODE_20949E:    LDA #$80                    ; $20:949E: A9 80       ;
CODE_2094A0:    STA $2100                   ; $20:94A0: 8D 00 21    ;
CODE_2094A3:    LDY #$00                    ; $20:94A3: A0 00       ;
CODE_2094A5:    STY $0729                   ; $20:94A5: 8C 29 07    ;
CODE_2094A8:    LDX $0726                   ; $20:94A8: AE 26 07    ;
CODE_2094AB:    JMP CODE_2084F8             ; $20:94AB: 4C F8 84    ;

CODE_2094AE:    LDA #$15                    ; $20:94AE: A9 15       ;
CODE_2094B0:    STA $0208                   ; $20:94B0: 8D 08 02    ;
CODE_2094B3:    LDA #$02                    ; $20:94B3: A9 02       ;
CODE_2094B5:    STA $0209                   ; $20:94B5: 8D 09 02    ;
CODE_2094B8:    LDA #$20                    ; $20:94B8: A9 20       ;
CODE_2094BA:    STA $0204                   ; $20:94BA: 8D 04 02    ;
CODE_2094BD:    JSL CODE_20AFC3             ; $20:94BD: 22 C3 AF 20 ;
CODE_2094C1:    JSR CODE_209CC0             ; $20:94C1: 20 C0 9C    ;
CODE_2094C4:    JSL CODE_2AB48E             ; $20:94C4: 22 8E B4 2A ;
CODE_2094C8:    LDA #$C0                    ; $20:94C8: A9 C0       ;
CODE_2094CA:    STA $0100                   ; $20:94CA: 8D 00 01    ;
CODE_2094CD:    LDA #$80                    ; $20:94CD: A9 80       ;
CODE_2094CF:    STA $0101                   ; $20:94CF: 8D 01 01    ;
CODE_2094D2:    LDA #$11                    ; $20:94D2: A9 11       ;
CODE_2094D4:    STA $1061                   ; $20:94D4: 8D 61 10    ;
CODE_2094D7:    JSL CODE_29C794             ; $20:94D7: 22 94 C7 29 ;
CODE_2094DB:    LDA #$00                    ; $20:94DB: A9 00       ;
CODE_2094DD:    STA $7E3955                 ; $20:94DD: 8F 55 39 7E ;
CODE_2094E1:    JSL CODE_29E29D             ; $20:94E1: 22 9D E2 29 ;
CODE_2094E5:    LDA #$80                    ; $20:94E5: A9 80       ;
CODE_2094E7:    STA $4200                   ; $20:94E7: 8D 00 42    ;
CODE_2094EA:    JSR CODE_20801F             ; $20:94EA: 20 1F 80    ;
CODE_2094ED:    LDA $1061                   ; $20:94ED: AD 61 10    ;
CODE_2094F0:    BEQ CODE_2094F8             ; $20:94F0: F0 06       ;
CODE_2094F2:    STA $1202                   ; $20:94F2: 8D 02 12    ;
CODE_2094F5:    STZ $1061                   ; $20:94F5: 9C 61 10    ;
CODE_2094F8:    JSL CODE_22E0A9             ; $20:94F8: 22 A9 E0 22 ;
CODE_2094FC:    JSL CODE_23E190             ; $20:94FC: 22 90 E1 23 ;
CODE_209500:    LDA $0014                   ; $20:9500: AD 14 00    ;
CODE_209503:    BEQ CODE_2094EA             ; $20:9503: F0 E5       ;
CODE_209505:    JSL CODE_29E2B6             ; $20:9505: 22 B6 E2 29 ;
CODE_209509:    LDA #$80                ; $20:9509: A9 80       ;\
CODE_20950B:    STA $1202               ; $20:950B: 8D 02 12    ;/Fade out music
CODE_20950E:    LDA #$80                    ; $20:950E: A9 80       ;
CODE_209510:    STA $16                     ; $20:9510: 85 16       ;
CODE_209512:    JSR CODE_20801F             ; $20:9512: 20 1F 80    ;
CODE_209515:    LDX $078C                   ; $20:9515: AE 8C 07    ;
CODE_209518:    DEX                         ; $20:9518: CA          ;
CODE_209519:    CPX $0726                   ; $20:9519: EC 26 07    ;
CODE_20951C:    BNE CODE_209521             ; $20:951C: D0 03       ;
CODE_20951E:    JMP CODE_2095AC             ; $20:951E: 4C AC 95    ;

CODE_209521:    TXA                         ; $20:9521: 8A          ;
CODE_209522:    EOR #$01                    ; $20:9522: 49 01       ;
CODE_209524:    TAY                         ; $20:9524: A8          ;
CODE_209525:    LDA $0722,y                 ; $20:9525: B9 22 07    ;
CODE_209528:    STA $05                     ; $20:9528: 85 05       ;
CODE_20952A:    LDA $0724,y                 ; $20:952A: B9 24 07    ;
CODE_20952D:    STA $06                     ; $20:952D: 85 06       ;
CODE_20952F:    PHB                         ; $20:952F: 8B          ;
CODE_209530:    LDA #$7E                    ; $20:9530: A9 7E       ;
CODE_209532:    PHA                         ; $20:9532: 48          ;
CODE_209533:    PLB                         ; $20:9533: AB          ;
CODE_209534:    LDA $397D,y                 ; $20:9534: B9 7D 39    ;
CODE_209537:    STA $00                     ; $20:9537: 85 00       ;
CODE_209539:    LDA $397F,y                 ; $20:9539: B9 7F 39    ;
CODE_20953C:    STA $01                     ; $20:953C: 85 01       ;
CODE_20953E:    LDA $3981,y                 ; $20:953E: B9 81 39    ;
CODE_209541:    STA $02                     ; $20:9541: 85 02       ;
CODE_209543:    LDA $3985,y                 ; $20:9543: B9 85 39    ;
CODE_209546:    STA $03                     ; $20:9546: 85 03       ;
CODE_209548:    LDA $3987,y                 ; $20:9548: B9 87 39    ;
CODE_20954B:    STA $04                     ; $20:954B: 85 04       ;
CODE_20954D:    LDA $397D,x                 ; $20:954D: BD 7D 39    ;
CODE_209550:    STA $397D,y                 ; $20:9550: 99 7D 39    ;
CODE_209553:    LDA $397F,x                 ; $20:9553: BD 7F 39    ;
CODE_209556:    STA $397F,y                 ; $20:9556: 99 7F 39    ;
CODE_209559:    LDA $3981,x                 ; $20:9559: BD 81 39    ;
CODE_20955C:    STA $3981,y                 ; $20:955C: 99 81 39    ;
CODE_20955F:    LDA $3985,x                 ; $20:955F: BD 85 39    ;
CODE_209562:    STA $3985,y                 ; $20:9562: 99 85 39    ;
CODE_209565:    LDA $3987,x                 ; $20:9565: BD 87 39    ;
CODE_209568:    STA $3987,y                 ; $20:9568: 99 87 39    ;
CODE_20956B:    PLB                         ; $20:956B: AB          ;
CODE_20956C:    LDA $00                     ; $20:956C: A5 00       ;
CODE_20956E:    STA $7E397D,x               ; $20:956E: 9F 7D 39 7E ;
CODE_209572:    LDA $01                     ; $20:9572: A5 01       ;
CODE_209574:    STA $7E397F,x               ; $20:9574: 9F 7F 39 7E ;
CODE_209578:    LDA $02                     ; $20:9578: A5 02       ;
CODE_20957A:    STA $7E3981,x               ; $20:957A: 9F 81 39 7E ;
CODE_20957E:    LDA $03                     ; $20:957E: A5 03       ;
CODE_209580:    STA $7E3985,x               ; $20:9580: 9F 85 39 7E ;
CODE_209584:    LDA $04                     ; $20:9584: A5 04       ;
CODE_209586:    STA $7E3987,x               ; $20:9586: 9F 87 39 7E ;
CODE_20958A:    LDA $05                     ; $20:958A: A5 05       ;
CODE_20958C:    STA $0722,x                 ; $20:958C: 9D 22 07    ;
CODE_20958F:    LDA $06                     ; $20:958F: A5 06       ;
CODE_209591:    STA $0724,x                 ; $20:9591: 9D 24 07    ;
CODE_209594:    LDA #$1F                    ; $20:9594: A9 1F       ;
CODE_209596:    CPX #$01                    ; $20:9596: E0 01       ;
CODE_209598:    BNE CODE_20959D             ; $20:9598: D0 03       ;
CODE_20959A:    CLC                         ; $20:959A: 18          ;
CODE_20959B:    ADC #$23                    ; $20:959B: 69 23       ;
CODE_20959D:    TAY                         ; $20:959D: A8          ;
CODE_20959E:    LDX #$00                    ; $20:959E: A2 00       ;
CODE_2095A0:    LDA $1D80,y                 ; $20:95A0: B9 80 1D    ;
CODE_2095A3:    STA $0715,x                 ; $20:95A3: 9D 15 07    ;
CODE_2095A6:    INY                         ; $20:95A6: C8          ;
CODE_2095A7:    INX                         ; $20:95A7: E8          ;
CODE_2095A8:    CPX #$03                    ; $20:95A8: E0 03       ;
CODE_2095AA:    BNE CODE_2095A0             ; $20:95AA: D0 F4       ;
CODE_2095AC:    LDX $078C                   ; $20:95AC: AE 8C 07    ;
CODE_2095AF:    STX $0713                   ; $20:95AF: 8E 13 07    ;
CODE_2095B2:    DEX                         ; $20:95B2: CA          ;
CODE_2095B3:    STX $0726                   ; $20:95B3: 8E 26 07    ;
CODE_2095B6:    JMP CODE_208FB7             ; $20:95B6: 4C B7 8F    ;

CODE_2095B9:    LDA $0727                   ; $20:95B9: AD 27 07    ;
CODE_2095BC:    CMP #$07                    ; $20:95BC: C9 07       ;
CODE_2095BE:    BNE CODE_2095CE             ; $20:95BE: D0 0E       ;
CODE_2095C0:    LDX $0726                   ; $20:95C0: AE 26 07    ;
CODE_2095C3:    LDA $45,x                   ; $20:95C3: B5 45       ;
CODE_2095C5:    CMP #$01                    ; $20:95C5: C9 01       ;
CODE_2095C7:    BNE CODE_2095CE             ; $20:95C7: D0 05       ;
CODE_2095C9:    LDA #$31                    ; $20:95C9: A9 31       ;
CODE_2095CB:    JSR CODE_209610             ; $20:95CB: 20 10 96    ;
CODE_2095CE:    RTS                         ; $20:95CE: 60          ;

CODE_2095CF:    LDY $072B                   ; $20:95CF: AC 2B 07    ;
CODE_2095D2:    CPY #$01                    ; $20:95D2: C0 01       ;
CODE_2095D4:    BEQ CODE_2095DF             ; $20:95D4: F0 09       ;
CODE_2095D6:    DEY                         ; $20:95D6: 88          ;
CODE_2095D7:    LDA $0736,y                 ; $20:95D7: B9 36 07    ;
CODE_2095DA:    BPL CODE_20960E             ; $20:95DA: 10 32       ;
CODE_2095DC:    DEY                         ; $20:95DC: 88          ;
CODE_2095DD:    BPL CODE_2095D7             ; $20:95DD: 10 F8       ;
CODE_2095DF:    LDX #$02                    ; $20:95DF: A2 02       ;
CODE_2095E1:    LDY #$0D                    ; $20:95E1: A0 0D       ;
CODE_2095E3:    LDA $1F17,y                 ; $20:95E3: B9 17 1F    ;
CODE_2095E6:    BEQ CODE_2095F2             ; $20:95E6: F0 0A       ;
CODE_2095E8:    CMP.w DATA_21CDDB,x                 ; $20:95E8: DD DB CD    ;
CODE_2095EB:    BNE CODE_2095F2             ; $20:95EB: D0 05       ;
CODE_2095ED:    LDA #$00                    ; $20:95ED: A9 00       ;
CODE_2095EF:    STA $1F17,y                 ; $20:95EF: 99 17 1F    ;
CODE_2095F2:    DEY                         ; $20:95F2: 88          ;
CODE_2095F3:    BPL CODE_2095E3             ; $20:95F3: 10 EE       ;
CODE_2095F5:    DEX                         ; $20:95F5: CA          ;
CODE_2095F6:    BPL CODE_2095E1             ; $20:95F6: 10 E9       ;
CODE_2095F8:    LDA #$00                    ; $20:95F8: A9 00       ;
CODE_2095FA:    STA $7E3967                 ; $20:95FA: 8F 67 39 7E ;
CODE_2095FE:    STA $7E396F                 ; $20:95FE: 8F 6F 39 7E ;
CODE_209602:    LDA #$1F                    ; $20:9602: A9 1F       ;
CODE_209604:    STA $7E3968                 ; $20:9604: 8F 68 39 7E ;
CODE_209608:    LDA #$40                    ; $20:9608: A9 40       ;
CODE_20960A:    STA $7E3969                 ; $20:960A: 8F 69 39 7E ;
CODE_20960E:    RTS                         ; $20:960E: 60          ;

CODE_20960F:    RTS                         ; $20:960F: 60          ;

CODE_209610:    PHA                         ; $20:9610: 48          ;
CODE_209611:    STA $36                     ; $20:9611: 85 36       ;
CODE_209613:    ASL A                       ; $20:9613: 0A          ;
CODE_209614:    CLC                         ; $20:9614: 18          ;
CODE_209615:    ADC $36                     ; $20:9615: 65 36       ;
CODE_209617:    TAY                         ; $20:9617: A8          ;
CODE_209618:    PHB                         ; $20:9618: 8B          ;
CODE_209619:    LDA #$22                    ; $20:9619: A9 22       ;
CODE_20961B:    PHA                         ; $20:961B: 48          ;
CODE_20961C:    PLB                         ; $20:961C: AB          ;
CODE_20961D:    LDA.w PNTR_228B5C,y                 ; $20:961D: B9 5C 8B    ;
CODE_209620:    STA $36                     ; $20:9620: 85 36       ;
CODE_209622:    LDA.w PNTR_228B5C+1,y                   ; $20:9622: B9 5D 8B    ;
CODE_209625:    STA $37                     ; $20:9625: 85 37       ;
CODE_209627:    LDA.w PNTR_228B5C+2,y                   ; $20:9627: B9 5E 8B    ;
CODE_20962A:    STA $38                     ; $20:962A: 85 38       ;
CODE_20962C:    PLB                         ; $20:962C: AB          ;
CODE_20962D:    JSL CODE_29E8AB             ; $20:962D: 22 AB E8 29 ;
CODE_209631:    PLA                         ; $20:9631: 68          ;
CODE_209632:    BNE CODE_209641             ; $20:9632: D0 0D       ;
CODE_209634:    STA $1600                   ; $20:9634: 8D 00 16    ;
CODE_209637:    STA $1601                   ; $20:9637: 8D 01 16    ;
CODE_20963A:    DEC A                       ; $20:963A: 3A          ;
CODE_20963B:    STA $1602                   ; $20:963B: 8D 02 16    ;
CODE_20963E:    STA $1603                   ; $20:963E: 8D 03 16    ;
CODE_209641:    RTS                         ; $20:9641: 60          ;

PNTR_209642:        dl DATA_29BE00
                    dl DATA_248918
                    dl DATA_268828
                    dl DATA_24ADB0
                    dl DATA_24E660
                    dl DATA_25B030
                    dl DATA_258860
                    dl DATA_258860
                    dl DATA_258860
                    dl DATA_25D510
                    dl DATA_26B020
                    dl DATA_25B030
                    dl DATA_24E660
                    dl DATA_25B030
                    dl DATA_24ADB0
                    dl DATA_20967B
                    dl DATA_20967B
                    dl DATA_20967B
                    dl DATA_23A540

DATA_20967B:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_209683:    LDA $070A                   ; $20:9683: AD 0A 07    ;
CODE_209686:    STA $00                     ; $20:9686: 85 00       ;
CODE_209688:    ASL A                       ; $20:9688: 0A          ;
CODE_209689:    CLC                         ; $20:9689: 18          ;
CODE_20968A:    ADC $00                     ; $20:968A: 65 00       ;
CODE_20968C:    TAX                         ; $20:968C: AA          ;
CODE_20968D:    LDA.l PNTR_209642,x                 ; $20:968D: BF 42 96 20 ;
CODE_209691:    STA $00                     ; $20:9691: 85 00       ;
CODE_209693:    LDA.l PNTR_209642+1,x               ; $20:9693: BF 43 96 20 ;
CODE_209697:    STA $01                     ; $20:9697: 85 01       ;
CODE_209699:    LDA.l PNTR_209642+2,x               ; $20:9699: BF 44 96 20 ;
CODE_20969D:    STA $02                     ; $20:969D: 85 02       ;
CODE_20969F:    LDY #$07                    ; $20:969F: A0 07       ;
CODE_2096A1:    LDA [$00],y                 ; $20:96A1: B7 00       ;
CODE_2096A3:    STA $1E96,y                 ; $20:96A3: 99 96 1E    ;
CODE_2096A6:    DEY                         ; $20:96A6: 88          ;
CODE_2096A7:    BPL CODE_2096A1             ; $20:96A7: 10 F8       ;
CODE_2096A9:    RTS                         ; $20:96A9: 60          ;

CODE_2096AA:    LDY #$1C                    ; $20:96AA: A0 1C       ;
CODE_2096AC:    LDA #$00                    ; $20:96AC: A9 00       ;
CODE_2096AE:    STA $1044,y                 ; $20:96AE: 99 44 10    ;
CODE_2096B1:    DEY                         ; $20:96B1: 88          ;
CODE_2096B2:    BPL CODE_2096AC             ; $20:96B2: 10 F8       ;
CODE_2096B4:    RTS                         ; $20:96B4: 60          ;

CODE_2096B5:    LDA $1053                   ; $20:96B5: AD 53 10    ;
CODE_2096B8:    CLC                         ; $20:96B8: 18          ;
CODE_2096B9:    ADC $1056                   ; $20:96B9: 6D 56 10    ;
CODE_2096BC:    STA $1053                   ; $20:96BC: 8D 53 10    ;
CODE_2096BF:    LDA $1051                   ; $20:96BF: AD 51 10    ;
CODE_2096C2:    ADC #$00                    ; $20:96C2: 69 00       ;
CODE_2096C4:    STA $1051                   ; $20:96C4: 8D 51 10    ;
CODE_2096C7:    LDA $105F                   ; $20:96C7: AD 5F 10    ;
CODE_2096CA:    CMP #$FE                    ; $20:96CA: C9 FE       ;
CODE_2096CC:    BNE CODE_2096F6             ; $20:96CC: D0 28       ;
CODE_2096CE:    LDY $104F                   ; $20:96CE: AC 4F 10    ;
CODE_2096D1:    LDA $1047,y                 ; $20:96D1: B9 47 10    ;
CODE_2096D4:    CMP #$08                    ; $20:96D4: C9 08       ;
CODE_2096D6:    BCS CODE_2096F6                     ; $20:96D6: B0 1E       ;
CODE_2096D8:    LDA $1051                   ; $20:96D8: AD 51 10    ;
CODE_2096DB:    CMP #$04                    ; $20:96DB: C9 04       ;
CODE_2096DD:    BCC CODE_2096F6             ; $20:96DD: 90 17       ;
CODE_2096DF:    LDA #$08                    ; $20:96DF: A9 08       ;
CODE_2096E1:    STA $1051                   ; $20:96E1: 8D 51 10    ;
CODE_2096E4:    LDA $1053                   ; $20:96E4: AD 53 10    ;
CODE_2096E7:    AND #$1F                    ; $20:96E7: 29 1F       ;
CODE_2096E9:    STA $1053                   ; $20:96E9: 8D 53 10    ;
CODE_2096EC:    LDA $104F                   ; $20:96EC: AD 4F 10    ;
CODE_2096EF:    AND #$02                    ; $20:96EF: 29 02       ;
CODE_2096F1:    BEQ CODE_2096F6             ; $20:96F1: F0 03       ;
CODE_2096F3:    STX $105F                   ; $20:96F3: 8E 5F 10    ;
CODE_2096F6:    RTS                         ; $20:96F6: 60          ;

CODE_2096F7:    LDA $1053                   ; $20:96F7: AD 53 10    ;
CODE_2096FA:    AND #$C0                    ; $20:96FA: 29 C0       ;
CODE_2096FC:    STA $1054                   ; $20:96FC: 8D 54 10    ;
CODE_2096FF:    LDA $1051                   ; $20:96FF: AD 51 10    ;
CODE_209702:    AND #$0F                    ; $20:9702: 29 0F       ;
CODE_209704:    STA $1052                   ; $20:9704: 8D 52 10    ;
CODE_209707:    CLC                         ; $20:9707: 18          ;
CODE_209708:    ROR $1052                   ; $20:9708: 6E 52 10    ;
CODE_20970B:    ROR $1054                   ; $20:970B: 6E 54 10    ;
CODE_20970E:    CLC                         ; $20:970E: 18          ;
CODE_20970F:    ROR $1052                   ; $20:970F: 6E 52 10    ;
CODE_209712:    ROR $1054                   ; $20:9712: 6E 54 10    ;
CODE_209715:    LDA $1053                   ; $20:9715: AD 53 10    ;
CODE_209718:    AND #$1F                    ; $20:9718: 29 1F       ;
CODE_20971A:    LSR A                       ; $20:971A: 4A          ;
CODE_20971B:    CLC                         ; $20:971B: 18          ;
CODE_20971C:    ADC $1054                   ; $20:971C: 6D 54 10    ;
CODE_20971F:    STA $1054                   ; $20:971F: 8D 54 10    ;
CODE_209722:    RTS                         ; $20:9722: 60          ;

CODE_209723:    LDA $1053                   ; $20:9723: AD 53 10    ;
CODE_209726:    AND #$01                    ; $20:9726: 29 01       ;
CODE_209728:    STA $1055                   ; $20:9728: 8D 55 10    ;
CODE_20972B:    LDA $1053                   ; $20:972B: AD 53 10    ;
CODE_20972E:    AND #$20                    ; $20:972E: 29 20       ;
CODE_209730:    BNE CODE_209737             ; $20:9730: D0 05       ;
CODE_209732:    ASL $1055                   ; $20:9732: 0E 55 10    ;
CODE_209735:    BRA CODE_20973B             ; $20:9735: 80 04       ;

CODE_209737:    SEC                         ; $20:9737: 38          ;
CODE_209738:    ROL $1055                   ; $20:9738: 2E 55 10    ;
CODE_20973B:    RTS                         ; $20:973B: 60          ;

CODE_20973C:    ASL A                       ; $20:973C: 0A          ;
CODE_20973D:    ADC #$00                    ; $20:973D: 69 00       ;
CODE_20973F:    ASL A                       ; $20:973F: 0A          ;
CODE_209740:    ADC #$00                    ; $20:9740: 69 00       ;
CODE_209742:    STA $0C                     ; $20:9742: 85 0C       ;
CODE_209744:    TXA                         ; $20:9744: 8A          ;
CODE_209745:    LSR A                       ; $20:9745: 4A          ;
CODE_209746:    LSR A                       ; $20:9746: 4A          ;
CODE_209747:    LSR A                       ; $20:9747: 4A          ;
CODE_209748:    STA $0D                     ; $20:9748: 85 0D       ;
CODE_20974A:    LDA $0C                     ; $20:974A: A5 0C       ;
CODE_20974C:    AND #$03                    ; $20:974C: 29 03       ;
CODE_20974E:    ORA #$08                    ; $20:974E: 09 08       ;
CODE_209750:    STA $0E                     ; $20:9750: 85 0E       ;
CODE_209752:    LDA $0C                     ; $20:9752: A5 0C       ;
CODE_209754:    AND #$C0                    ; $20:9754: 29 C0       ;
CODE_209756:    ORA $0D                     ; $20:9756: 05 0D       ;
CODE_209758:    STA $0F                     ; $20:9758: 85 0F       ;
CODE_20975A:    RTL                         ; $20:975A: 6B          ;

CODE_20975B:    TYA                         ; $20:975B: 98          ;
CODE_20975C:    PHA                         ; $20:975C: 48          ;
CODE_20975D:    TXA                         ; $20:975D: 8A          ;
CODE_20975E:    PHA                         ; $20:975E: 48          ;
CODE_20975F:    STZ $0F                     ; $20:975F: 64 0F       ;
CODE_209761:    LDY $0726                   ; $20:9761: AC 26 07    ;
CODE_209764:    CPY #$00                    ; $20:9764: C0 00       ;
CODE_209766:    BEQ CODE_209772             ; $20:9766: F0 0A       ;
CODE_209768:    LDA $0F                     ; $20:9768: A5 0F       ;
CODE_20976A:    CLC                         ; $20:976A: 18          ;
CODE_20976B:    ADC #$23                    ; $20:976B: 69 23       ;
CODE_20976D:    STA $0F                     ; $20:976D: 85 0F       ;
CODE_20976F:    DEY                         ; $20:976F: 88          ;
CODE_209770:    BNE CODE_209768             ; $20:9770: D0 F6       ;
CODE_209772:    TXA                         ; $20:9772: 8A          ;
CODE_209773:    CLC                         ; $20:9773: 18          ;
CODE_209774:    ADC $0F                     ; $20:9774: 65 0F       ;
CODE_209776:    TAX                         ; $20:9776: AA          ;
CODE_209777:    INC $1D9C,x                 ; $20:9777: FE 9C 1D    ;
CODE_20977A:    PLA                         ; $20:977A: 68          ;
CODE_20977B:    TAX                         ; $20:977B: AA          ;
CODE_20977C:    PLA                         ; $20:977C: 68          ;
CODE_20977D:    TAY                         ; $20:977D: A8          ;
CODE_20977E:    RTL                         ; $20:977E: 6B          ;

CODE_20977F:    JSR CODE_2096F7             ; $20:977F: 20 F7 96    ;
CODE_209782:    JSR CODE_209723             ; $20:9782: 20 23 97    ;
CODE_209785:    LDA #$7E                    ; $20:9785: A9 7E       ;
CODE_209787:    STA $30                     ; $20:9787: 85 30       ;
CODE_209789:    LDA $0425                   ; $20:9789: AD 25 04    ;
CODE_20978C:    BEQ CODE_20979E             ; $20:978C: F0 10       ;
CODE_20978E:    LDY $0376                   ; $20:978E: AC 76 03    ;
CODE_209791:    LDA.w DATA_21823C,y                 ; $20:9791: B9 3C 82    ;
CODE_209794:    STA $2E                     ; $20:9794: 85 2E       ;
CODE_209796:    LDA.w DATA_21824C,y                 ; $20:9796: B9 4C 82    ;
CODE_209799:    STA $2F                     ; $20:9799: 85 2F       ;
CODE_20979B:    JMP CODE_2097A8             ; $20:979B: 4C A8 97    ;

CODE_20979E:    LDA.w DATA_218200                   ; $20:979E: AD 00 82    ;
CODE_2097A1:    STA $2E                     ; $20:97A1: 85 2E       ;
CODE_2097A3:    LDA.w DATA_218200+1                     ; $20:97A3: AD 01 82    ;
CODE_2097A6:    STA $2F                     ; $20:97A6: 85 2F       ;
CODE_2097A8:    LDA $1051                   ; $20:97A8: AD 51 10    ;
CODE_2097AB:    AND #$08                    ; $20:97AB: 29 08       ;
CODE_2097AD:    BEQ CODE_2097B1             ; $20:97AD: F0 02       ;
CODE_2097AF:    INC $2F                     ; $20:97AF: E6 2F       ;
CODE_2097B1:    LDA $070A                   ; $20:97B1: AD 0A 07    ;
CODE_2097B4:    ASL A                       ; $20:97B4: 0A          ;
CODE_2097B5:    TAY                         ; $20:97B5: A8          ;
CODE_2097B6:    LDA.w DATA_21CE5A,y                 ; $20:97B6: B9 5A CE    ;
CODE_2097B9:    STA $0C                     ; $20:97B9: 85 0C       ;
CODE_2097BB:    LDA.w DATA_21CE5A+1,y                   ; $20:97BB: B9 5B CE    ;
CODE_2097BE:    STA $0D                     ; $20:97BE: 85 0D       ;
CODE_2097C0:    LDY $070A                   ; $20:97C0: AC 0A 07    ;
CODE_2097C3:    LDA.w DATA_21CE80,y                 ; $20:97C3: B9 80 CE    ;
CODE_2097C6:    STA $0E                     ; $20:97C6: 85 0E       ;
CODE_2097C8:    LDY $1054                   ; $20:97C8: AC 54 10    ;
CODE_2097CB:    LDA [$2E],y                 ; $20:97CB: B7 2E       ;
CODE_2097CD:    REP #$30                    ; $20:97CD: C2 30       ;
CODE_2097CF:    AND #$00FF                  ; $20:97CF: 29 FF 00    ;
CODE_2097D2:    ASL A                       ; $20:97D2: 0A          ;
CODE_2097D3:    ASL A                       ; $20:97D3: 0A          ;
CODE_2097D4:    ASL A                       ; $20:97D4: 0A          ;
CODE_2097D5:    TAY                         ; $20:97D5: A8          ;
CODE_2097D6:    TXA                         ; $20:97D6: 8A          ;
CODE_2097D7:    AND #$00FF                  ; $20:97D7: 29 FF 00    ;
CODE_2097DA:    TAX                         ; $20:97DA: AA          ;
CODE_2097DB:    LDA $1055                   ; $20:97DB: AD 55 10    ;
CODE_2097DE:    AND #$00FF                  ; $20:97DE: 29 FF 00    ;
CODE_2097E1:    ASL A                       ; $20:97E1: 0A          ;
CODE_2097E2:    STA $00                     ; $20:97E2: 85 00       ;
CODE_2097E4:    TYA                         ; $20:97E4: 98          ;
CODE_2097E5:    CLC                         ; $20:97E5: 18          ;
CODE_2097E6:    ADC $00                     ; $20:97E6: 65 00       ;
CODE_2097E8:    TAY                         ; $20:97E8: A8          ;
CODE_2097E9:    LDA [$0C],y                 ; $20:97E9: B7 0C       ;
CODE_2097EB:    STA $0382,x                 ; $20:97EB: 9D 82 03    ;
CODE_2097EE:    STY $00                     ; $20:97EE: 84 00       ;
CODE_2097F0:    STX $02                     ; $20:97F0: 86 02       ;
CODE_2097F2:    SEP #$30                    ; $20:97F2: E2 30       ;
CODE_2097F4:    RTS                         ; $20:97F4: 60          ;

CODE_2097F5:    LDY $0425                   ; $20:97F5: AC 25 04    ;
CODE_2097F8:    BNE CODE_20980C             ; $20:97F8: D0 12       ;
CODE_2097FA:    LDX #$03                    ; $20:97FA: A2 03       ;
CODE_2097FC:    LSR A                       ; $20:97FC: 4A          ;
CODE_2097FD:    ROR $B7                     ; $20:97FD: 66 B7       ;
CODE_2097FF:    DEX                         ; $20:97FF: CA          ;
CODE_209800:    BPL CODE_2097FC             ; $20:9800: 10 FA       ;
CODE_209802:    LDA $B7                     ; $20:9802: A5 B7       ;
CODE_209804:    STA $24                     ; $20:9804: 85 24       ;
CODE_209806:    CLC                         ; $20:9806: 18          ;
CODE_209807:    ADC #$10                    ; $20:9807: 69 10       ;
CODE_209809:    STA $23                     ; $20:9809: 85 23       ;
CODE_20980B:    RTL                         ; $20:980B: 6B          ;

CODE_20980C:    LDA $B7                     ; $20:980C: A5 B7       ;
CODE_20980E:    BEQ CODE_209821             ; $20:980E: F0 11       ;
CODE_209810:    SEC                         ; $20:9810: 38          ;
CODE_209811:    SBC #$10                    ; $20:9811: E9 10       ;
CODE_209813:    STA $B7                     ; $20:9813: 85 B7       ;
CODE_209815:    CMP #$F0                    ; $20:9815: C9 F0       ;
CODE_209817:    BCC CODE_209821             ; $20:9817: 90 08       ;
CODE_209819:    SEC                         ; $20:9819: 38          ;
CODE_20981A:    SBC #$11                    ; $20:981A: E9 11       ;
CODE_20981C:    STA $B7                     ; $20:981C: 85 B7       ;
CODE_20981E:    CLC                         ; $20:981E: 18          ;
CODE_20981F:    ADC #$10                    ; $20:981F: 69 10       ;
CODE_209821:    STA $23                     ; $20:9821: 85 23       ;
CODE_209823:    CLC                         ; $20:9823: 18          ;
CODE_209824:    ADC #$E0                    ; $20:9824: 69 E0       ;
CODE_209826:    BCC CODE_20982A             ; $20:9826: 90 02       ;
CODE_209828:    ADC #$00                    ; $20:9828: 69 00       ;
CODE_20982A:    STA $24                     ; $20:982A: 85 24       ;
CODE_20982C:    RTL                         ; $20:982C: 6B          ;

CODE_20982D:    STY $01                     ; $20:982D: 84 01       ;
CODE_20982F:    LDY #$00                    ; $20:982F: A0 00       ;
CODE_209831:    STY $00                     ; $20:9831: 84 00       ;
CODE_209833:    TYA                         ; $20:9833: 98          ;
CODE_209834:    LDX $01                     ; $20:9834: A6 01       ;
CODE_209836:    CPX #$01                    ; $20:9836: E0 01       ;
CODE_209838:    BEQ CODE_20983C             ; $20:9838: F0 02       ;
CODE_20983A:    STA ($00),y                 ; $20:983A: 91 00       ;
CODE_20983C:    DEY                         ; $20:983C: 88          ;
CODE_20983D:    BNE CODE_209834             ; $20:983D: D0 F5       ;
CODE_20983F:    DEC $01                     ; $20:983F: C6 01       ;
CODE_209841:    BPL CODE_209834             ; $20:9841: 10 F1       ;
CODE_209843:    RTS                         ; $20:9843: 60          ;

CODE_209844:    PHY                         ; $20:9844: 5A          ;
CODE_209845:    PHB                         ; $20:9845: 8B          ;
CODE_209846:    LDY #$7E                    ; $20:9846: A0 7E       ;
CODE_209848:    PHY                         ; $20:9848: 5A          ;
CODE_209849:    PLB                         ; $20:9849: AB          ;
CODE_20984A:    STA $2000,x                 ; $20:984A: 9D 00 20    ;
CODE_20984D:    STA $21B0,x                 ; $20:984D: 9D B0 21    ;
CODE_209850:    STA $2360,x                 ; $20:9850: 9D 60 23    ;
CODE_209853:    STA $2510,x                 ; $20:9853: 9D 10 25    ;
CODE_209856:    STA $26C0,x                 ; $20:9856: 9D C0 26    ;
CODE_209859:    STA $2870,x                 ; $20:9859: 9D 70 28    ;
CODE_20985C:    STA $2A20,x                 ; $20:985C: 9D 20 2A    ;
CODE_20985F:    STA $2BD0,x                 ; $20:985F: 9D D0 2B    ;
CODE_209862:    STA $2D80,x                 ; $20:9862: 9D 80 2D    ;
CODE_209865:    STA $2F30,x                 ; $20:9865: 9D 30 2F    ;
CODE_209868:    STA $30E0,x                 ; $20:9868: 9D E0 30    ;
CODE_20986B:    STA $3290,x                 ; $20:986B: 9D 90 32    ;
CODE_20986E:    STA $3440,x                 ; $20:986E: 9D 40 34    ;
CODE_209871:    STA $35F0,x                 ; $20:9871: 9D F0 35    ;
CODE_209874:    STA $37A0,x                 ; $20:9874: 9D A0 37    ;
CODE_209877:    STZ $4000,x                 ; $20:9877: 9E 00 40    ;
CODE_20987A:    STZ $41B0,x                 ; $20:987A: 9E B0 41    ;
CODE_20987D:    STZ $4360,x                 ; $20:987D: 9E 60 43    ;
CODE_209880:    STZ $4510,x                 ; $20:9880: 9E 10 45    ;
CODE_209883:    STZ $46C0,x                 ; $20:9883: 9E C0 46    ;
CODE_209886:    STZ $4870,x                 ; $20:9886: 9E 70 48    ;
CODE_209889:    STZ $4A20,x                 ; $20:9889: 9E 20 4A    ;
CODE_20988C:    STZ $4BD0,x                 ; $20:988C: 9E D0 4B    ;
CODE_20988F:    STZ $4D80,x                 ; $20:988F: 9E 80 4D    ;
CODE_209892:    STZ $4F30,x                 ; $20:9892: 9E 30 4F    ;
CODE_209895:    STZ $50E0,x                 ; $20:9895: 9E E0 50    ;
CODE_209898:    STZ $5290,x                 ; $20:9898: 9E 90 52    ;
CODE_20989B:    STZ $5440,x                 ; $20:989B: 9E 40 54    ;
CODE_20989E:    STZ $55F0,x                 ; $20:989E: 9E F0 55    ;
CODE_2098A1:    STZ $57A0,x                 ; $20:98A1: 9E A0 57    ;
CODE_2098A4:    INX                         ; $20:98A4: E8          ;
CODE_2098A5:    PLB                         ; $20:98A5: AB          ;
CODE_2098A6:    PLY                         ; $20:98A6: 7A          ;
CODE_2098A7:    RTL                         ; $20:98A7: 6B          ;

CODE_2098A8:    PHY                         ; $20:98A8: 5A          ;
CODE_2098A9:    PHB                         ; $20:98A9: 8B          ;
CODE_2098AA:    LDY #$7E                    ; $20:98AA: A0 7E       ;
CODE_2098AC:    PHY                         ; $20:98AC: 5A          ;
CODE_2098AD:    PLB                         ; $20:98AD: AB          ;
CODE_2098AE:    STA $20C0,x                 ; $20:98AE: 9D C0 20    ;
CODE_2098B1:    STA $2270,x                 ; $20:98B1: 9D 70 22    ;
CODE_2098B4:    STA $2420,x                 ; $20:98B4: 9D 20 24    ;
CODE_2098B7:    STA $25D0,x                 ; $20:98B7: 9D D0 25    ;
CODE_2098BA:    STA $2780,x                 ; $20:98BA: 9D 80 27    ;
CODE_2098BD:    STA $2930,x                 ; $20:98BD: 9D 30 29    ;
CODE_2098C0:    STA $2AE0,x                 ; $20:98C0: 9D E0 2A    ;
CODE_2098C3:    STA $2C90,x                 ; $20:98C3: 9D 90 2C    ;
CODE_2098C6:    STA $2E40,x                 ; $20:98C6: 9D 40 2E    ;
CODE_2098C9:    STA $2FF0,x                 ; $20:98C9: 9D F0 2F    ;
CODE_2098CC:    STA $31A0,x                 ; $20:98CC: 9D A0 31    ;
CODE_2098CF:    STA $3350,x                 ; $20:98CF: 9D 50 33    ;
CODE_2098D2:    STA $3500,x                 ; $20:98D2: 9D 00 35    ;
CODE_2098D5:    STA $36B0,x                 ; $20:98D5: 9D B0 36    ;
CODE_2098D8:    STA $3860,x                 ; $20:98D8: 9D 60 38    ;
CODE_2098DB:    STZ $40C0,x                 ; $20:98DB: 9E C0 40    ;
CODE_2098DE:    STZ $4270,x                 ; $20:98DE: 9E 70 42    ;
CODE_2098E1:    STZ $4420,x                 ; $20:98E1: 9E 20 44    ;
CODE_2098E4:    STZ $45D0,x                 ; $20:98E4: 9E D0 45    ;
CODE_2098E7:    STZ $4780,x                 ; $20:98E7: 9E 80 47    ;
CODE_2098EA:    STZ $4930,x                 ; $20:98EA: 9E 30 49    ;
CODE_2098ED:    STZ $4AE0,x                 ; $20:98ED: 9E E0 4A    ;
CODE_2098F0:    STZ $4C90,x                 ; $20:98F0: 9E 90 4C    ;
CODE_2098F3:    STZ $4E40,x                 ; $20:98F3: 9E 40 4E    ;
CODE_2098F6:    STZ $4FF0,x                 ; $20:98F6: 9E F0 4F    ;
CODE_2098F9:    STZ $51A0,x                 ; $20:98F9: 9E A0 51    ;
CODE_2098FC:    STZ $5350,x                 ; $20:98FC: 9E 50 53    ;
CODE_2098FF:    STZ $5500,x                 ; $20:98FF: 9E 00 55    ;
CODE_209902:    STZ $56B0,x                 ; $20:9902: 9E B0 56    ;
CODE_209905:    STZ $5860,x                 ; $20:9905: 9E 60 58    ;
CODE_209908:    PLB                         ; $20:9908: AB          ;
CODE_209909:    PLY                         ; $20:9909: 7A          ;
CODE_20990A:    RTL                         ; $20:990A: 6B          ;

CODE_20990B:    STZ $0700               ; $20:990B: 9C 00 07    ;
CODE_20990E:    STZ $0704                   ; $20:990E: 9C 04 07    ;
CODE_209911:    STZ $0703                   ; $20:9911: 9C 03 07    ;
CODE_209914:    STZ $0701                   ; $20:9914: 9C 01 07    ;
CODE_209917:    STZ $0702                   ; $20:9917: 9C 02 07    ;
CODE_20991A:    LDA #$7E                    ; $20:991A: A9 7E       ;
CODE_20991C:    STA $30                     ; $20:991C: 85 30       ;
CODE_20991E:    LDY #$00                    ; $20:991E: A0 00       ;
CODE_209920:    LDA [$2B],y                 ; $20:9920: B7 2B       ;
CODE_209922:    STA $1DFE                   ; $20:9922: 8D FE 1D    ;
CODE_209925:    INY                         ; $20:9925: C8          ;
CODE_209926:    LDA [$2B],y                 ; $20:9926: B7 2B       ;
CODE_209928:    STA $1DFF                   ; $20:9928: 8D FF 1D    ;
CODE_20992B:    INY                         ; $20:992B: C8          ;
CODE_20992C:    LDA [$2B],y                 ; $20:992C: B7 2B       ;
CODE_20992E:    STA $1E00                   ; $20:992E: 8D 00 1E    ;
CODE_209931:    INY                         ; $20:9931: C8          ;
CODE_209932:    LDA [$2B],y                 ; $20:9932: B7 2B       ;
CODE_209934:    STA $1E01                   ; $20:9934: 8D 01 1E    ;
CODE_209937:    INY                         ; $20:9937: C8          ;
CODE_209938:    LDA [$2B],y                 ; $20:9938: B7 2B       ;
CODE_20993A:    STA $1E02                   ; $20:993A: 8D 02 1E    ;
CODE_20993D:    INY                         ; $20:993D: C8          ;
CODE_20993E:    LDA [$2B],y                 ; $20:993E: B7 2B       ;
CODE_209940:    STA $1E03                   ; $20:9940: 8D 03 1E    ;
CODE_209943:    INY                         ; $20:9943: C8          ;
CODE_209944:    LDA $0414                   ; $20:9944: AD 14 04    ;
CODE_209947:    BNE CODE_209974             ; $20:9947: D0 2B       ;
CODE_209949:    LDA [$2B],y                 ; $20:9949: B7 2B       ;
CODE_20994B:    AND #$E0                    ; $20:994B: 29 E0       ;
CODE_20994D:    LSR A                       ; $20:994D: 4A          ;
CODE_20994E:    LSR A                       ; $20:994E: 4A          ;
CODE_20994F:    LSR A                       ; $20:994F: 4A          ;
CODE_209950:    LSR A                       ; $20:9950: 4A          ;
CODE_209951:    LSR A                       ; $20:9951: 4A          ;
CODE_209952:    TAX                         ; $20:9952: AA          ;
CODE_209953:    LDA.w DATA_21CE2A,x                 ; $20:9953: BD 2A CE    ;
CODE_209956:    STA $55                     ; $20:9956: 85 55       ;
CODE_209958:    LDA.w DATA_21CE32,x                 ; $20:9958: BD 32 CE    ;
CODE_20995B:    STA $70                     ; $20:995B: 85 70       ;
CODE_20995D:    STZ $43                     ; $20:995D: 64 43       ;
CODE_20995F:    LDA.w DATA_21CE3A,x                 ; $20:995F: BD 3A CE    ;
CODE_209962:    STA $0216                   ; $20:9962: 8D 16 02    ;
CODE_209965:    LSR A                       ; $20:9965: 4A          ;
CODE_209966:    LSR A                       ; $20:9966: 4A          ;
CODE_209967:    STA $0218                   ; $20:9967: 8D 18 02    ;
CODE_20996A:    LDA $0216                   ; $20:996A: AD 16 02    ;
CODE_20996D:    SEC                         ; $20:996D: 38          ;
CODE_20996E:    SBC $0218                   ; $20:996E: ED 18 02    ;
CODE_209971:    STA $0218                   ; $20:9971: 8D 18 02    ;
CODE_209974:    LDA [$2B],y                 ; $20:9974: B7 2B       ;
CODE_209976:    AND #$0F                    ; $20:9976: 29 0F       ;
CODE_209978:    STA $22                     ; $20:9978: 85 22       ;
CODE_20997A:    STA $0376                   ; $20:997A: 8D 76 03    ;
CODE_20997D:    INY                         ; $20:997D: C8          ;
CODE_20997E:    LDA [$2B],y                 ; $20:997E: B7 2B       ;
CODE_209980:    AND #$03                    ; $20:9980: 29 03       ;
CODE_209982:    STA $073B                   ; $20:9982: 8D 3B 07    ;
CODE_209985:    LDA [$2B],y                 ; $20:9985: B7 2B       ;
CODE_209987:    AND #$1C                    ; $20:9987: 29 1C       ;
CODE_209989:    LSR A                       ; $20:9989: 4A          ;
CODE_20998A:    LSR A                       ; $20:998A: 4A          ;
CODE_20998B:    STA $073C                   ; $20:998B: 8D 3C 07    ;
CODE_20998E:    LDA [$2B],y                 ; $20:998E: B7 2B       ;
CODE_209990:    AND #$60                    ; $20:9990: 29 60       ;
CODE_209992:    LSR A                       ; $20:9992: 4A          ;
CODE_209993:    LSR A                       ; $20:9993: 4A          ;
CODE_209994:    LSR A                       ; $20:9994: 4A          ;
CODE_209995:    LSR A                       ; $20:9995: 4A          ;
CODE_209996:    LSR A                       ; $20:9996: 4A          ;
CODE_209997:    STA $0426                   ; $20:9997: 8D 26 04    ;
CODE_20999A:    LDA [$2B],y                 ; $20:999A: B7 2B       ;
CODE_20999C:    AND #$80                    ; $20:999C: 29 80       ;
CODE_20999E:    STA $0562                   ; $20:999E: 8D 62 05    ;
CODE_2099A1:    INY                         ; $20:99A1: C8          ;
CODE_2099A2:    LDA [$2B],y                 ; $20:99A2: B7 2B       ;
CODE_2099A4:    AND #$80                    ; $20:99A4: 29 80       ;
CODE_2099A6:    STA $0379                   ; $20:99A6: 8D 79 03    ;
CODE_2099A9:    LDA [$2B],y                 ; $20:99A9: B7 2B       ;
CODE_2099AB:    AND #$60                    ; $20:99AB: 29 60       ;
CODE_2099AD:    LSR A                       ; $20:99AD: 4A          ;
CODE_2099AE:    LSR A                       ; $20:99AE: 4A          ;
CODE_2099AF:    LSR A                       ; $20:99AF: 4A          ;
CODE_2099B0:    LSR A                       ; $20:99B0: 4A          ;
CODE_2099B1:    LSR A                       ; $20:99B1: 4A          ;
CODE_2099B2:    STA $0424                   ; $20:99B2: 8D 24 04    ;
CODE_2099B5:    CMP #$02                    ; $20:99B5: C9 02       ;
CODE_2099B7:    BNE CODE_2099DB             ; $20:99B7: D0 22       ;
CODE_2099B9:    LDX #$00                    ; $20:99B9: A2 00       ;
CODE_2099BB:    LDA $0216                   ; $20:99BB: AD 16 02    ;
CODE_2099BE:    CMP #$B0                    ; $20:99BE: C9 B0       ;
CODE_2099C0:    BCC CODE_2099C4             ; $20:99C0: 90 02       ;
CODE_2099C2:    LDX #$EF                    ; $20:99C2: A2 EF       ;
CODE_2099C4:    STX $0216                   ; $20:99C4: 8E 16 02    ;
CODE_2099C7:    TXA                         ; $20:99C7: 8A          ;
CODE_2099C8:    STA $7E398E                 ; $20:99C8: 8F 8E 39 7E ;
CODE_2099CC:    LSR A                       ; $20:99CC: 4A          ;
CODE_2099CD:    LSR A                       ; $20:99CD: 4A          ;
CODE_2099CE:    STA $0218                   ; $20:99CE: 8D 18 02    ;
CODE_2099D1:    LDA $0216                   ; $20:99D1: AD 16 02    ;
CODE_2099D4:    SEC                         ; $20:99D4: 38          ;
CODE_2099D5:    SBC $0218                   ; $20:99D5: ED 18 02    ;
CODE_2099D8:    STA $0218                   ; $20:99D8: 8D 18 02    ;
CODE_2099DB:    LDA [$2B],y                 ; $20:99DB: B7 2B       ;
CODE_2099DD:    AND #$10                    ; $20:99DD: 29 10       ;
CODE_2099DF:    STA $0425                   ; $20:99DF: 8D 25 04    ;
CODE_2099E2:    BEQ CODE_209A09             ; $20:99E2: F0 25       ;
CODE_2099E4:    LDX $0414                   ; $20:99E4: AE 14 04    ;
CODE_2099E7:    BNE CODE_2099F3             ; $20:99E7: D0 0A       ;
CODE_2099E9:    LDA $0376                   ; $20:99E9: AD 76 03    ;
CODE_2099EC:    STA $13                     ; $20:99EC: 85 13       ;
CODE_2099EE:    STA $55                     ; $20:99EE: 85 55       ;
CODE_2099F0:    JMP CODE_209A09             ; $20:99F0: 4C 09 9A    ;

CODE_2099F3:    STZ $0376                   ; $20:99F3: 9C 76 03    ;
CODE_2099F6:    LDA $55                     ; $20:99F6: A5 55       ;
CODE_2099F8:    BEQ CODE_209A03             ; $20:99F8: F0 09       ;
CODE_2099FA:    LDA $22                     ; $20:99FA: A5 22       ;
CODE_2099FC:    STA $13                     ; $20:99FC: 85 13       ;
CODE_2099FE:    STA $55                     ; $20:99FE: 85 55       ;
CODE_209A00:    STA $0376                   ; $20:9A00: 8D 76 03    ;
CODE_209A03:    LDA $13                     ; $20:9A03: A5 13       ;
CODE_209A05:    STA $7E398D                 ; $20:9A05: 8F 8D 39 7E ;
CODE_209A09:    LDA [$2B],y                 ; $20:9A09: B7 2B       ;
CODE_209A0B:    AND #$0F                    ; $20:9A0B: 29 0F       ;
CODE_209A0D:    STA $1EBA                   ; $20:9A0D: 8D BA 1E    ;
CODE_209A10:    INY                         ; $20:9A10: C8          ;
CODE_209A11:    LDA [$2B],y                 ; $20:9A11: B7 2B       ;
CODE_209A13:    AND #$E0                    ; $20:9A13: 29 E0       ;
CODE_209A15:    LSR A                       ; $20:9A15: 4A          ;
CODE_209A16:    LSR A                       ; $20:9A16: 4A          ;
CODE_209A17:    LSR A                       ; $20:9A17: 4A          ;
CODE_209A18:    LSR A                       ; $20:9A18: 4A          ;
CODE_209A19:    LSR A                       ; $20:9A19: 4A          ;
CODE_209A1A:    STA $0545                   ; $20:9A1A: 8D 45 05    ;
CODE_209A1D:    LDA [$2B],y                 ; $20:9A1D: B7 2B       ;
CODE_209A1F:    AND #$1F                    ; $20:9A1F: 29 1F       ;
CODE_209A21:    STA $1EBF                   ; $20:9A21: 8D BF 1E    ;
CODE_209A24:    INY                         ; $20:9A24: C8          ;
CODE_209A25:    LDA [$2B],y                 ; $20:9A25: B7 2B       ;
CODE_209A27:    AND #$30                    ; $20:9A27: 29 30       ;
CODE_209A29:    ASL A                       ; $20:9A29: 0A          ;
CODE_209A2A:    ORA $1EBF                   ; $20:9A2A: 0D BF 1E    ;
CODE_209A2D:    STA $1EBF                   ; $20:9A2D: 8D BF 1E    ;
CODE_209A30:    LDA $0414                   ; $20:9A30: AD 14 04    ;
CODE_209A33:    BNE CODE_209A49             ; $20:9A33: D0 14       ;
CODE_209A35:    LDA [$2B],y                 ; $20:9A35: B7 2B       ;
CODE_209A37:    AND #$C0                    ; $20:9A37: 29 C0       ;
CODE_209A39:    CLC                         ; $20:9A39: 18          ;
CODE_209A3A:    ROL A                       ; $20:9A3A: 2A          ;
CODE_209A3B:    ROL A                       ; $20:9A3B: 2A          ;
CODE_209A3C:    ROL A                       ; $20:9A3C: 2A          ;
CODE_209A3D:    TAX                         ; $20:9A3D: AA          ;
CODE_209A3E:    LDA.w DATA_21CE42,x                 ; $20:9A3E: BD 42 CE    ;
CODE_209A41:    STA $05EE                   ; $20:9A41: 8D EE 05    ;
CODE_209A44:    BNE CODE_209A49             ; $20:9A44: D0 03       ;
CODE_209A46:    INC $05F3                   ; $20:9A46: EE F3 05    ;
CODE_209A49:    LDA [$2B],y                 ; $20:9A49: B7 2B       ;
CODE_209A4B:    AND #$0F                    ; $20:9A4B: 29 0F       ;
CODE_209A4D:    CMP #$07                    ; $20:9A4D: C9 07       ;
CODE_209A4F:    BNE CODE_209A6A             ; $20:9A4F: D0 19       ;
CODE_209A51:    LDA $0727               ; $20:9A51: AD 27 07    ;
CODE_209A54:    BNE CODE_209A6A             ; $20:9A54: D0 14       ;
CODE_209A56:    LDA $001E                   ; $20:9A56: AD 1E 00    ;
CODE_209A59:    BNE CODE_209A6A             ; $20:9A59: D0 0F       ;
CODE_209A5B:    LDX $0726                   ; $20:9A5B: AE 26 07    ;
CODE_209A5E:    LDA $7E3979,x               ; $20:9A5E: BF 79 39 7E ;
CODE_209A62:    CMP #$A0                    ; $20:9A62: C9 A0       ;
CODE_209A64:    BNE CODE_209A6A             ; $20:9A64: D0 04       ;
CODE_209A66:    LDA #$04                    ; $20:9A66: A9 04       ;
CODE_209A68:    BRA CODE_209A72             ; $20:9A68: 80 08       ;

CODE_209A6A:    LDA [$2B],y                 ; $20:9A6A: B7 2B       ;
CODE_209A6C:    AND #$0F                    ; $20:9A6C: 29 0F       ;
CODE_209A6E:    TAX                         ; $20:9A6E: AA          ;
CODE_209A6F:    LDA.w DATA_21CE46,x     ; $20:9A6F: BD 46 CE    ; Level music table        
CODE_209A72:    STA $1061                   ; $20:9A72: 8D 61 10    ;
CODE_209A75:    STA $1062                   ; $20:9A75: 8D 62 10    ;
CODE_209A78:    LDA $2142                   ; $20:9A78: AD 42 21    ;
CODE_209A7B:    CMP #$0D                    ; $20:9A7B: C9 0D       ;
CODE_209A7D:    BNE CODE_209A82             ; $20:9A7D: D0 03       ;
CODE_209A7F:    STZ $1061                   ; $20:9A7F: 9C 61 10    ;
CODE_209A82:    INY                         ; $20:9A82: C8          ;
CODE_209A83:    LDA [$2B],y                 ; $20:9A83: B7 2B       ;
CODE_209A85:    AND #$0F                    ; $20:9A85: 29 0F       ;
CODE_209A87:    STA $02BF                   ; $20:9A87: 8D BF 02    ;
CODE_209A8A:    LDA [$2B],y                 ; $20:9A8A: B7 2B       ;
CODE_209A8C:    LSR A                       ; $20:9A8C: 4A          ;
CODE_209A8D:    LSR A                       ; $20:9A8D: 4A          ;
CODE_209A8E:    LSR A                       ; $20:9A8E: 4A          ;
CODE_209A8F:    LSR A                       ; $20:9A8F: 4A          ;
CODE_209A90:    STA $02BE                   ; $20:9A90: 8D BE 02    ;
CODE_209A93:    INY                         ; $20:9A93: C8          ;
CODE_209A94:    LDA [$2B],y                 ; $20:9A94: B7 2B       ;
CODE_209A96:    STA $0350                   ; $20:9A96: 8D 50 03    ;
CODE_209A99:    LDA $2B                     ; $20:9A99: A5 2B       ;
CODE_209A9B:    CLC                         ; $20:9A9B: 18          ;
CODE_209A9C:    ADC #$0D                    ; $20:9A9C: 69 0D       ;
CODE_209A9E:    STA $2B                     ; $20:9A9E: 85 2B       ;
CODE_209AA0:    LDA $2C                     ; $20:9AA0: A5 2C       ;
CODE_209AA2:    ADC #$00                    ; $20:9AA2: 69 00       ;
CODE_209AA4:    STA $2C                     ; $20:9AA4: 85 2C       ;
CODE_209AA6:    LDA [$2B]                   ; $20:9AA6: A7 2B       ;
CODE_209AA8:    AND #$E0                    ; $20:9AA8: 29 E0       ;
CODE_209AAA:    CMP #$C0                    ; $20:9AAA: C9 C0       ;
CODE_209AAC:    BNE CODE_209AE0             ; $20:9AAC: D0 32       ;
CODE_209AAE:    LDA [$2B]                   ; $20:9AAE: A7 2B       ;
CODE_209AB0:    AND #$0F                    ; $20:9AB0: 29 0F       ;
CODE_209AB2:    CMP $0211                   ; $20:9AB2: CD 11 02    ;
CODE_209AB5:    BNE CODE_209ACF             ; $20:9AB5: D0 18       ;
CODE_209AB7:    LDY #$01                    ; $20:9AB7: A0 01       ;
CODE_209AB9:    LDA [$2B],y                 ; $20:9AB9: B7 2B       ;
CODE_209ABB:    PHA                         ; $20:9ABB: 48          ;
CODE_209ABC:    AND #$0F                    ; $20:9ABC: 29 0F       ;
CODE_209ABE:    STA $073B                   ; $20:9ABE: 8D 3B 07    ;
CODE_209AC1:    PLA                         ; $20:9AC1: 68          ;
CODE_209AC2:    LSR A                       ; $20:9AC2: 4A          ;
CODE_209AC3:    LSR A                       ; $20:9AC3: 4A          ;
CODE_209AC4:    LSR A                       ; $20:9AC4: 4A          ;
CODE_209AC5:    LSR A                       ; $20:9AC5: 4A          ;
CODE_209AC6:    STA $073C                   ; $20:9AC6: 8D 3C 07    ;
CODE_209AC9:    INY                         ; $20:9AC9: C8          ;
CODE_209ACA:    LDA [$2B],y                 ; $20:9ACA: B7 2B       ;
CODE_209ACC:    STA $070A                   ; $20:9ACC: 8D 0A 07    ;
CODE_209ACF:    LDA $002B                   ; $20:9ACF: AD 2B 00    ;
CODE_209AD2:    CLC                         ; $20:9AD2: 18          ;
CODE_209AD3:    ADC #$03                    ; $20:9AD3: 69 03       ;
CODE_209AD5:    STA $002B                   ; $20:9AD5: 8D 2B 00    ;
CODE_209AD8:    LDA #$00                    ; $20:9AD8: A9 00       ;
CODE_209ADA:    ADC $002C                   ; $20:9ADA: 6D 2C 00    ;
CODE_209ADD:    STA $002C                   ; $20:9ADD: 8D 2C 00    ;
CODE_209AE0:    LDY #$00                    ; $20:9AE0: A0 00       ;
CODE_209AE2:    LDA [$2B],y                 ; $20:9AE2: B7 2B       ;
CODE_209AE4:    CMP #$FF                    ; $20:9AE4: C9 FF       ;
CODE_209AE6:    BEQ CODE_209B29             ; $20:9AE6: F0 41       ;
CODE_209AE8:    STA $0E                     ; $20:9AE8: 85 0E       ;
CODE_209AEA:    INY                         ; $20:9AEA: C8          ;
CODE_209AEB:    LDA [$2B],y                 ; $20:9AEB: B7 2B       ;
CODE_209AED:    STA $0F                     ; $20:9AED: 85 0F       ;
CODE_209AEF:    INY                         ; $20:9AEF: C8          ;
CODE_209AF0:    LDA [$2B],y                 ; $20:9AF0: B7 2B       ;
CODE_209AF2:    STA $0706                   ; $20:9AF2: 8D 06 07    ;
CODE_209AF5:    INY                         ; $20:9AF5: C8          ;
CODE_209AF6:    TYA                         ; $20:9AF6: 98          ;
CODE_209AF7:    CLC                         ; $20:9AF7: 18          ;
CODE_209AF8:    ADC $2B                     ; $20:9AF8: 65 2B       ;
CODE_209AFA:    STA $2B                     ; $20:9AFA: 85 2B       ;
CODE_209AFC:    LDA $2C                     ; $20:9AFC: A5 2C       ;
CODE_209AFE:    ADC #$00                    ; $20:9AFE: 69 00       ;
CODE_209B00:    STA $2C                     ; $20:9B00: 85 2C       ;
CODE_209B02:    LDA $0E                     ; $20:9B02: A5 0E       ;
CODE_209B04:    AND #$E0                    ; $20:9B04: 29 E0       ;
CODE_209B06:    CMP #$E0                    ; $20:9B06: C9 E0       ;
CODE_209B08:    BNE CODE_209B10             ; $20:9B08: D0 06       ;
CODE_209B0A:    JSL CODE_23BED4             ; $20:9B0A: 22 D4 BE 23 ;
CODE_209B0E:    BRA CODE_209AE0             ; $20:9B0E: 80 D0       ;

CODE_209B10:    JSL CODE_209B65             ; $20:9B10: 22 65 9B 20 ;
CODE_209B14:    LDA $0706                   ; $20:9B14: AD 06 07    ;
CODE_209B17:    AND #$F0                    ; $20:9B17: 29 F0       ;
CODE_209B19:    BEQ CODE_209B22             ; $20:9B19: F0 07       ;
CODE_209B1B:    JSL CODE_209C40             ; $20:9B1B: 22 40 9C 20 ;
CODE_209B1F:    JMP CODE_209B26             ; $20:9B1F: 4C 26 9B    ;

CODE_209B22:    JSL CODE_209C80             ; $20:9B22: 22 80 9C 20 ;
CODE_209B26:    JMP CODE_209AE0             ; $20:9B26: 4C E0 9A    ;

CODE_209B29:    LDA $0350                   ; $20:9B29: AD 50 03    ;
CODE_209B2C:    BEQ CODE_209B54             ; $20:9B2C: F0 26       ;
CODE_209B2E:    JSL CODE_2A8DB6             ; $20:9B2E: 22 B6 8D 2A ;
CODE_209B32:    LDA $034F                   ; $20:9B32: AD 4F 03    ;
CODE_209B35:    BEQ CODE_209B43             ; $20:9B35: F0 0C       ;
CODE_209B37:    LDA $0216                   ; $20:9B37: AD 16 02    ;
CODE_209B3A:    STA $0218                   ; $20:9B3A: 8D 18 02    ;
CODE_209B3D:    LDA $0217                   ; $20:9B3D: AD 17 02    ;
CODE_209B40:    STA $0219                   ; $20:9B40: 8D 19 02    ;
CODE_209B43:    LDA $0350                   ; $20:9B43: AD 50 03    ;
CODE_209B46:    CMP #$03                    ; $20:9B46: C9 03       ;
CODE_209B48:    BEQ CODE_209B4E             ; $20:9B48: F0 04       ;
CODE_209B4A:    CMP #$24                    ; $20:9B4A: C9 24       ;
CODE_209B4C:    BNE CODE_209B54             ; $20:9B4C: D0 06       ;
CODE_209B4E:    STZ $0218                   ; $20:9B4E: 9C 18 02    ;
CODE_209B51:    STZ $0219                   ; $20:9B51: 9C 19 02    ;
CODE_209B54:    LDA $1EBF                   ; $20:9B54: AD BF 1E    ;
CODE_209B57:    CMP #$07                    ; $20:9B57: C9 07       ;
CODE_209B59:    BNE CODE_209B64             ; $20:9B59: D0 09       ;
CODE_209B5B:    STZ $05EE                   ; $20:9B5B: 9C EE 05    ;
CODE_209B5E:    STZ $05EF                   ; $20:9B5E: 9C EF 05    ;
CODE_209B61:    STZ $05F0                   ; $20:9B61: 9C F0 05    ;
CODE_209B64:    RTL                         ; $20:9B64: 6B          ;

CODE_209B65:    LDA $0E                     ; $20:9B65: A5 0E       ;
CODE_209B67:    ASL A                       ; $20:9B67: 0A          ;
CODE_209B68:    ASL A                       ; $20:9B68: 0A          ;
CODE_209B69:    ASL A                       ; $20:9B69: 0A          ;
CODE_209B6A:    ASL A                       ; $20:9B6A: 0A          ;
CODE_209B6B:    STA $06                     ; $20:9B6B: 85 06       ;
CODE_209B6D:    LDA $0F                     ; $20:9B6D: A5 0F       ;
CODE_209B6F:    AND #$0F                    ; $20:9B6F: 29 0F       ;
CODE_209B71:    ORA $06                     ; $20:9B71: 05 06       ;
CODE_209B73:    STA $0700                   ; $20:9B73: 8D 00 07    ;
CODE_209B76:    LDA $0F                     ; $20:9B76: A5 0F       ;
CODE_209B78:    AND #$F0                    ; $20:9B78: 29 F0       ;
CODE_209B7A:    LSR A                       ; $20:9B7A: 4A          ;
CODE_209B7B:    LSR A                       ; $20:9B7B: 4A          ;
CODE_209B7C:    LSR A                       ; $20:9B7C: 4A          ;
CODE_209B7D:    TAX                         ; $20:9B7D: AA          ;
CODE_209B7E:    LDA $0425                   ; $20:9B7E: AD 25 04    ;
CODE_209B81:    BEQ CODE_209B92             ; $20:9B81: F0 0F       ;
CODE_209B83:    TXA                         ; $20:9B83: 8A          ;
CODE_209B84:    LSR A                       ; $20:9B84: 4A          ;
CODE_209B85:    TAX                         ; $20:9B85: AA          ;
CODE_209B86:    LDA.w DATA_21823C,x                 ; $20:9B86: BD 3C 82    ;
CODE_209B89:    STA $2E                     ; $20:9B89: 85 2E       ;
CODE_209B8B:    LDA.w DATA_21824C,x                 ; $20:9B8B: BD 4C 82    ;
CODE_209B8E:    STA $2F                     ; $20:9B8E: 85 2F       ;
CODE_209B90:    BRA CODE_209BB2             ; $20:9B90: 80 20       ;

CODE_209B92:    CPX #$1E                    ; $20:9B92: E0 1E       ;
CODE_209B94:    BNE CODE_209B98             ; $20:9B94: D0 02       ;
CODE_209B96:    DEX                         ; $20:9B96: CA          ;
CODE_209B97:    DEX                         ; $20:9B97: CA          ;
CODE_209B98:    LDA #$7E                    ; $20:9B98: A9 7E       ;
CODE_209B9A:    STA $0030                   ; $20:9B9A: 8D 30 00    ;
CODE_209B9D:    LDA.w DATA_218200,x                 ; $20:9B9D: BD 00 82    ;
CODE_209BA0:    STA $2E                     ; $20:9BA0: 85 2E       ;
CODE_209BA2:    LDA.w DATA_218200+1,x                   ; $20:9BA2: BD 01 82    ;
CODE_209BA5:    STA $2F                     ; $20:9BA5: 85 2F       ;
CODE_209BA7:    INC A                       ; $20:9BA7: 1A          ;
CODE_209BA8:    STA $04                     ; $20:9BA8: 85 04       ;
CODE_209BAA:    LDA $0E                     ; $20:9BAA: A5 0E       ;
CODE_209BAC:    AND #$10                    ; $20:9BAC: 29 10       ;
CODE_209BAE:    BEQ CODE_209BB2             ; $20:9BAE: F0 02       ;
CODE_209BB0:    INC $2F                     ; $20:9BB0: E6 2F       ;
CODE_209BB2:    LDA $2F                     ; $20:9BB2: A5 2F       ;
CODE_209BB4:    STA $05                     ; $20:9BB4: 85 05       ;
CODE_209BB6:    RTL                         ; $20:9BB6: 6B          ;

CODE_209BB7:    PHY                         ; $20:9BB7: 5A          ;
CODE_209BB8:    PHX                         ; $20:9BB8: DA          ;
CODE_209BB9:    LDA $0F                     ; $20:9BB9: A5 0F       ;
CODE_209BBB:    PHA                         ; $20:9BBB: 48          ;
CODE_209BBC:    LDA $0C                     ; $20:9BBC: A5 0C       ;
CODE_209BBE:    PHA                         ; $20:9BBE: 48          ;
CODE_209BBF:    LDA $0F                     ; $20:9BBF: A5 0F       ;
CODE_209BC1:    LSR A                       ; $20:9BC1: 4A          ;
CODE_209BC2:    LSR A                       ; $20:9BC2: 4A          ;
CODE_209BC3:    LSR A                       ; $20:9BC3: 4A          ;
CODE_209BC4:    LSR A                       ; $20:9BC4: 4A          ;
CODE_209BC5:    STA $0F                     ; $20:9BC5: 85 0F       ;
CODE_209BC7:    LDA $0E                     ; $20:9BC7: A5 0E       ;
CODE_209BC9:    ASL A                       ; $20:9BC9: 0A          ;
CODE_209BCA:    ASL A                       ; $20:9BCA: 0A          ;
CODE_209BCB:    ASL A                       ; $20:9BCB: 0A          ;
CODE_209BCC:    ASL A                       ; $20:9BCC: 0A          ;
CODE_209BCD:    ORA $0F                     ; $20:9BCD: 05 0F       ;
CODE_209BCF:    STA $0F                     ; $20:9BCF: 85 0F       ;
CODE_209BD1:    LDA $0F                     ; $20:9BD1: A5 0F       ;
CODE_209BD3:    AND #$F8                    ; $20:9BD3: 29 F8       ;
CODE_209BD5:    LSR A                       ; $20:9BD5: 4A          ;
CODE_209BD6:    LSR A                       ; $20:9BD6: 4A          ;
CODE_209BD7:    ORA $0C                     ; $20:9BD7: 05 0C       ;
CODE_209BD9:    STA $0C                     ; $20:9BD9: 85 0C       ;
CODE_209BDB:    LDA $0415                   ; $20:9BDB: AD 15 04    ;
CODE_209BDE:    BEQ CODE_209BE7             ; $20:9BDE: F0 07       ;
CODE_209BE0:    LDA $0C                     ; $20:9BE0: A5 0C       ;
CODE_209BE2:    CLC                         ; $20:9BE2: 18          ;
CODE_209BE3:    ADC #$40                    ; $20:9BE3: 69 40       ;
CODE_209BE5:    STA $0C                     ; $20:9BE5: 85 0C       ;
CODE_209BE7:    LDA $0F                     ; $20:9BE7: A5 0F       ;
CODE_209BE9:    AND #$07                    ; $20:9BE9: 29 07       ;
CODE_209BEB:    TAX                         ; $20:9BEB: AA          ;
CODE_209BEC:    LDY $0C                     ; $20:9BEC: A4 0C       ;
CODE_209BEE:    LDA $1E04,y                 ; $20:9BEE: B9 04 1E    ;
CODE_209BF1:    ORA.w DATA_21CE52,x                 ; $20:9BF1: 1D 52 CE    ;
CODE_209BF4:    STA $1E04,y                 ; $20:9BF4: 99 04 1E    ;
CODE_209BF7:    PLA                         ; $20:9BF7: 68          ;
CODE_209BF8:    STA $0C                     ; $20:9BF8: 85 0C       ;
CODE_209BFA:    PLA                         ; $20:9BFA: 68          ;
CODE_209BFB:    STA $0F                     ; $20:9BFB: 85 0F       ;
CODE_209BFD:    PLX                         ; $20:9BFD: FA          ;
CODE_209BFE:    PLY                         ; $20:9BFE: 7A          ;
CODE_209BFF:    RTL                         ; $20:9BFF: 6B          ;

CODE_209C00:    LDA $070A                   ; $20:9C00: AD 0A 07    ;
CODE_209C03:    JSL CODE_20FB3A         ; $20:9C03: 22 3A FB 20 ; ExecutePtrLong

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

CODE_209C40:    LDA $070A                   ; $20:9C40: AD 0A 07    ;
CODE_209C43:    JSL CODE_20FB3A         ; $20:9C43: 22 3A FB 20 ; ExecutePtrLong

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
               
CODE_209C80:    LDA $070A               ; $20:9C80: AD 0A 07    ;
CODE_209C83:    JSL CODE_20FB3A         ; $20:9C83: 22 3A FB 20 ; ExecutePtrLong

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
  
CODE_209CC0:    LDA $0425                   ; $20:9CC0: AD 25 04    ;
CODE_209CC3:    BNE CODE_209CFC             ; $20:9CC3: D0 37       ;
CODE_209CC5:    LDX $25                     ; $20:9CC5: A6 25       ;
CODE_209CC7:    LDA $0210                   ; $20:9CC7: AD 10 02    ;
CODE_209CCA:    STA $26,x                   ; $20:9CCA: 95 26       ;
CODE_209CCC:    JSR CODE_209DB5         ; $20:9CCC: 20 B5 9D    ; prepare $0380 buffer with 2 vertical strips
CODE_209CCF:    JSL CODE_29E953         ; $20:9CCF: 22 53 E9 29 ; dma those strips to vram
CODE_209CD3:    LDX $25                     ; $20:9CD3: A6 25       ;
CODE_209CD5:    LDA $26,x                   ; $20:9CD5: B5 26       ;
CODE_209CD7:    CLC                         ; $20:9CD7: 18          ;
CODE_209CD8:    ADC.w DATA_21CE93+2,x                   ; $20:9CD8: 7D 95 CE    ;
CODE_209CDB:    STA $26,x                   ; $20:9CDB: 95 26       ;
CODE_209CDD:    LDX $25                     ; $20:9CDD: A6 25       ;
CODE_209CDF:    LDA $26,x                   ; $20:9CDF: B5 26       ;
CODE_209CE1:    AND #$08                    ; $20:9CE1: 29 08       ;
CODE_209CE3:    CMP.w DATA_21CE93+4,x                   ; $20:9CE3: DD 97 CE    ;
CODE_209CE6:    BNE CODE_209CF0             ; $20:9CE6: D0 08       ;
CODE_209CE8:    LDA $23,x                   ; $20:9CE8: B5 23       ;
CODE_209CEA:    CLC                         ; $20:9CEA: 18          ;
CODE_209CEB:    ADC.w DATA_21CE93,x                 ; $20:9CEB: 7D 93 CE    ;
CODE_209CEE:    STA $23,x                   ; $20:9CEE: 95 23       ;
CODE_209CF0:    DEC $0612                   ; $20:9CF0: CE 12 06    ;
CODE_209CF3:    BNE CODE_209CCC             ; $20:9CF3: D0 D7       ;
CODE_209CF5:    LDA #$FF                    ; $20:9CF5: A9 FF       ;
CODE_209CF7:    STA $26                     ; $20:9CF7: 85 26       ;
CODE_209CF9:    STA $27                     ; $20:9CF9: 85 27       ;
CODE_209CFB:    RTS                         ; $20:9CFB: 60          ;

CODE_209CFC:    STZ $25                     ; $20:9CFC: 64 25       ;
CODE_209CFE:    LDA #$E0                    ; $20:9CFE: A9 E0       ;
CODE_209D00:    STA $0216                   ; $20:9D00: 8D 16 02    ;
CODE_209D03:    CLC                         ; $20:9D03: 18          ;
CODE_209D04:    ADC #$08                    ; $20:9D04: 69 08       ;
CODE_209D06:    STA $26                     ; $20:9D06: 85 26       ;
CODE_209D08:    LDY $0376                   ; $20:9D08: AC 76 03    ;
CODE_209D0B:    DEY                         ; $20:9D0B: 88          ;
CODE_209D0C:    TYA                         ; $20:9D0C: 98          ;
CODE_209D0D:    ORA #$E0                    ; $20:9D0D: 09 E0       ;
CODE_209D0F:    STA $23                     ; $20:9D0F: 85 23       ;
CODE_209D11:    LDA $0376                   ; $20:9D11: AD 76 03    ;
CODE_209D14:    BEQ CODE_209D23             ; $20:9D14: F0 0D       ;
CODE_209D16:    ASL A                       ; $20:9D16: 0A          ;
CODE_209D17:    ASL A                       ; $20:9D17: 0A          ;
CODE_209D18:    ASL A                       ; $20:9D18: 0A          ;
CODE_209D19:    ASL A                       ; $20:9D19: 0A          ;
CODE_209D1A:    STA $06                     ; $20:9D1A: 85 06       ;
CODE_209D1C:    LDA $23                     ; $20:9D1C: A5 23       ;
CODE_209D1E:    SEC                         ; $20:9D1E: 38          ;
CODE_209D1F:    SBC $06                     ; $20:9D1F: E5 06       ;
CODE_209D21:    STA $23                     ; $20:9D21: 85 23       ;
CODE_209D23:    JSR CODE_209E7E             ; $20:9D23: 20 7E 9E    ;
CODE_209D26:    JSR CODE_209EAE             ; $20:9D26: 20 AE 9E    ;
CODE_209D29:    JSL CODE_29EA32             ; $20:9D29: 22 32 EA 29 ;
CODE_209D2D:    LDA $0216                   ; $20:9D2D: AD 16 02    ;
CODE_209D30:    CLC                         ; $20:9D30: 18          ;
CODE_209D31:    ADC #$08                    ; $20:9D31: 69 08       ;
CODE_209D33:    STA $0216                   ; $20:9D33: 8D 16 02    ;
CODE_209D36:    AND #$08                    ; $20:9D36: 29 08       ;
CODE_209D38:    BNE CODE_209D4D             ; $20:9D38: D0 13       ;
CODE_209D3A:    LDA $23                     ; $20:9D3A: A5 23       ;
CODE_209D3C:    CLC                         ; $20:9D3C: 18          ;
CODE_209D3D:    ADC #$10                    ; $20:9D3D: 69 10       ;
CODE_209D3F:    STA $23                     ; $20:9D3F: 85 23       ;
CODE_209D41:    AND #$F0                    ; $20:9D41: 29 F0       ;
CODE_209D43:    BNE CODE_209D4D             ; $20:9D43: D0 08       ;
CODE_209D45:    INC $23                     ; $20:9D45: E6 23       ;
CODE_209D47:    LDA #$0F                    ; $20:9D47: A9 0F       ;
CODE_209D49:    AND $23                     ; $20:9D49: 25 23       ;
CODE_209D4B:    STA $23                     ; $20:9D4B: 85 23       ;
CODE_209D4D:    LDA $0216                   ; $20:9D4D: AD 16 02    ;
CODE_209D50:    CMP #$D0                    ; $20:9D50: C9 D0       ;
CODE_209D52:    BNE CODE_209D23             ; $20:9D52: D0 CF       ;
CODE_209D54:    STZ $0216                   ; $20:9D54: 9C 16 02    ;
CODE_209D57:    STZ $26                     ; $20:9D57: 64 26       ;
CODE_209D59:    RTS                         ; $20:9D59: 60          ;

CODE_209D5A:    LDA $0425                   ; $20:9D5A: AD 25 04    ;
CODE_209D5D:    BEQ CODE_209D63             ; $20:9D5D: F0 04       ;
CODE_209D5F:    JSR CODE_209D9E             ; $20:9D5F: 20 9E 9D    ;
CODE_209D62:    RTL                         ; $20:9D62: 6B          ;

CODE_209D63:    LDX $25                     ; $20:9D63: A6 25       ;
CODE_209D65:    LDA $0210                   ; $20:9D65: AD 10 02    ;
CODE_209D68:    AND #$F8                    ; $20:9D68: 29 F8       ;
CODE_209D6A:    CMP $26,x                   ; $20:9D6A: D5 26       ;
CODE_209D6C:    BEQ CODE_209D95             ; $20:9D6C: F0 27       ;
CODE_209D6E:    TAY                         ; $20:9D6E: A8          ;
CODE_209D6F:    LDA $0612                   ; $20:9D6F: AD 12 06    ;
CODE_209D72:    BNE CODE_209D87             ; $20:9D72: D0 13       ;
CODE_209D74:    LDA $0210                   ; $20:9D74: AD 10 02    ;
CODE_209D77:    AND #$07                    ; $20:9D77: 29 07       ;
CODE_209D79:    CPX #$00                    ; $20:9D79: E0 00       ;
CODE_209D7B:    BNE CODE_209D83             ; $20:9D7B: D0 06       ;
CODE_209D7D:    CMP #$02                    ; $20:9D7D: C9 02       ;
CODE_209D7F:    BCS CODE_209D87                     ; $20:9D7F: B0 06       ;
CODE_209D81:    BRA CODE_209D95             ; $20:9D81: 80 12       ;

CODE_209D83:    CMP #$05                    ; $20:9D83: C9 05       ;
CODE_209D85:    BCS CODE_209D95                     ; $20:9D85: B0 0E       ;
CODE_209D87:    STY $26,x                   ; $20:9D87: 94 26       ;
CODE_209D89:    LDA $25                     ; $20:9D89: A5 25       ;
CODE_209D8B:    EOR #$01                    ; $20:9D8B: 49 01       ;
CODE_209D8D:    TAX                         ; $20:9D8D: AA          ;
CODE_209D8E:    LDA #$FF                    ; $20:9D8E: A9 FF       ;
CODE_209D90:    STA $26,x                   ; $20:9D90: 95 26       ;
CODE_209D92:    JSR CODE_209DB5             ; $20:9D92: 20 B5 9D    ;
CODE_209D95:    LDA $0707                   ; $20:9D95: AD 07 07    ;
CODE_209D98:    BEQ CODE_209D9D             ; $20:9D98: F0 03       ;
CODE_209D9A:    JSR CODE_209E7D             ; $20:9D9A: 20 7D 9E    ;
CODE_209D9D:    RTL                         ; $20:9D9D: 6B          ;

CODE_209D9E:    LDA $0216                   ; $20:9D9E: AD 16 02    ;
CODE_209DA1:    AND #$F8                    ; $20:9DA1: 29 F8       ;
CODE_209DA3:    CMP $26                     ; $20:9DA3: C5 26       ;
CODE_209DA5:    BEQ CODE_209DB4             ; $20:9DA5: F0 0D       ;
CODE_209DA7:    LDA $0216                   ; $20:9DA7: AD 16 02    ;
CODE_209DAA:    AND #$F8                    ; $20:9DAA: 29 F8       ;
CODE_209DAC:    STA $26                     ; $20:9DAC: 85 26       ;
CODE_209DAE:    JSR CODE_209E7E             ; $20:9DAE: 20 7E 9E    ;
CODE_209DB1:    JSR CODE_209EAE             ; $20:9DB1: 20 AE 9E    ;
CODE_209DB4:    RTS                         ; $20:9DB4: 60          ;

CODE_209DB5:    LDA #$FF                    ; $20:9DB5: A9 FF       ;
CODE_209DB7:    STA $7F2000                 ; $20:9DB7: 8F 00 20 7F ;
CODE_209DBB:    LDX $25                     ; $20:9DBB: A6 25       ;
CODE_209DBD:    LDA $26,x                   ; $20:9DBD: B5 26       ;
CODE_209DBF:    AND #$08                    ; $20:9DBF: 29 08       ;
CODE_209DC1:    LSR A                       ; $20:9DC1: 4A          ;
CODE_209DC2:    LSR A                       ; $20:9DC2: 4A          ;
CODE_209DC3:    LSR A                       ; $20:9DC3: 4A          ;
CODE_209DC4:    STA $C2                     ; $20:9DC4: 85 C2       ;
CODE_209DC6:    LDA $0210                   ; $20:9DC6: AD 10 02    ;
CODE_209DC9:    AND #$0F                    ; $20:9DC9: 29 0F       ;
CODE_209DCB:    CPX #$00                    ; $20:9DCB: E0 00       ;
CODE_209DCD:    BNE CODE_209DD5             ; $20:9DCD: D0 06       ;
CODE_209DCF:    CMP #$04                    ; $20:9DCF: C9 04       ;
CODE_209DD1:    BCS CODE_209DD9                     ; $20:9DD1: B0 06       ;
CODE_209DD3:    BRA CODE_209DDE             ; $20:9DD3: 80 09       ;

CODE_209DD5:    CMP #$0C                    ; $20:9DD5: C9 0C       ;
CODE_209DD7:    BCS CODE_209DDE                     ; $20:9DD7: B0 05       ;
CODE_209DD9:    LDA #$01                    ; $20:9DD9: A9 01       ;
CODE_209DDB:    STA $0707                   ; $20:9DDB: 8D 07 07    ;
CODE_209DDE:    LDY $070A                   ; $20:9DDE: AC 0A 07    ;
CODE_209DE1:    LDA.w DATA_21CE80,y                 ; $20:9DE1: B9 80 CE    ;
CODE_209DE4:    STA $08                     ; $20:9DE4: 85 08       ;
CODE_209DE6:    LDA $070A                   ; $20:9DE6: AD 0A 07    ;
CODE_209DE9:    ASL A                       ; $20:9DE9: 0A          ;
CODE_209DEA:    TAY                         ; $20:9DEA: A8          ;
CODE_209DEB:    LDA.w DATA_21CE5A,y                 ; $20:9DEB: B9 5A CE    ;
CODE_209DEE:    STA $06                     ; $20:9DEE: 85 06       ;
CODE_209DF0:    LDX.w DATA_21CE5A+1,y                   ; $20:9DF0: BE 5B CE    ;
CODE_209DF3:    STX $07                     ; $20:9DF3: 86 07       ;
CODE_209DF5:    LDX $25                     ; $20:9DF5: A6 25       ;
CODE_209DF7:    LDA $23,x                   ; $20:9DF7: B5 23       ;
CODE_209DF9:    AND #$F0                    ; $20:9DF9: 29 F0       ;
CODE_209DFB:    LSR A                       ; $20:9DFB: 4A          ;
CODE_209DFC:    LSR A                       ; $20:9DFC: 4A          ;
CODE_209DFD:    LSR A                       ; $20:9DFD: 4A          ;
CODE_209DFE:    TAY                         ; $20:9DFE: A8          ;
CODE_209DFF:    LDA #$7E                    ; $20:9DFF: A9 7E       ;
CODE_209E01:    STA $0F                     ; $20:9E01: 85 0F       ;
CODE_209E03:    REP #$20                    ; $20:9E03: C2 20       ;
CODE_209E05:    LDA.w DATA_218200,y                 ; $20:9E05: B9 00 82    ;
CODE_209E08:    STA $0D                     ; $20:9E08: 85 0D       ;
CODE_209E0A:    LDA #$001A                  ; $20:9E0A: A9 1A 00    ;
CODE_209E0D:    STA $00                     ; $20:9E0D: 85 00       ;
CODE_209E0F:    LDA $23,x                   ; $20:9E0F: B5 23       ;
CODE_209E11:    AND #$000F                  ; $20:9E11: 29 0F 00    ;
CODE_209E14:    STA $09                     ; $20:9E14: 85 09       ;
CODE_209E16:    REP #$10                    ; $20:9E16: C2 10       ;
CODE_209E18:    LDX #$0000                  ; $20:9E18: A2 00 00    ;
CODE_209E1B:    LDY $09                     ; $20:9E1B: A4 09       ;
CODE_209E1D:    LDA [$0D],y                 ; $20:9E1D: B7 0D       ;
CODE_209E1F:    AND #$00FF                  ; $20:9E1F: 29 FF 00    ;
CODE_209E22:    ASL A                       ; $20:9E22: 0A          ;
CODE_209E23:    ASL A                       ; $20:9E23: 0A          ;
CODE_209E24:    ASL A                       ; $20:9E24: 0A          ;
CODE_209E25:    TAY                         ; $20:9E25: A8          ;
CODE_209E26:    LDA $C2                     ; $20:9E26: A5 C2       ;
CODE_209E28:    AND #$00FF                  ; $20:9E28: 29 FF 00    ;
CODE_209E2B:    BEQ CODE_209E31             ; $20:9E2B: F0 04       ;
CODE_209E2D:    INY                         ; $20:9E2D: C8          ;
CODE_209E2E:    INY                         ; $20:9E2E: C8          ;
CODE_209E2F:    INY                         ; $20:9E2F: C8          ;
CODE_209E30:    INY                         ; $20:9E30: C8          ;
CODE_209E31:    PHY                         ; $20:9E31: 5A          ;
CODE_209E32:    LDA $09                     ; $20:9E32: A5 09       ;
CODE_209E34:    CLC                         ; $20:9E34: 18          ;
CODE_209E35:    ADC #$2000                  ; $20:9E35: 69 00 20    ;
CODE_209E38:    TAY                         ; $20:9E38: A8          ;
CODE_209E39:    LDA [$0D],y                 ; $20:9E39: B7 0D       ;
CODE_209E3B:    AND #$00FF                  ; $20:9E3B: 29 FF 00    ;
CODE_209E3E:    BEQ CODE_209E46             ; $20:9E3E: F0 06       ;
CODE_209E40:    PLA                         ; $20:9E40: 68          ;
CODE_209E41:    CLC                         ; $20:9E41: 18          ;
CODE_209E42:    ADC #$0800                  ; $20:9E42: 69 00 08    ;
CODE_209E45:    PHA                         ; $20:9E45: 48          ;
CODE_209E46:    PLY                         ; $20:9E46: 7A          ;
CODE_209E47:    LDA [$06],y                 ; $20:9E47: B7 06       ;
CODE_209E49:    STA $0382,x                 ; $20:9E49: 9D 82 03    ;
CODE_209E4C:    INY                         ; $20:9E4C: C8          ;
CODE_209E4D:    INY                         ; $20:9E4D: C8          ;
CODE_209E4E:    LDA [$06],y                 ; $20:9E4E: B7 06       ;
CODE_209E50:    STA $0384,x                 ; $20:9E50: 9D 84 03    ;
CODE_209E53:    LDA $09                     ; $20:9E53: A5 09       ;
CODE_209E55:    CLC                         ; $20:9E55: 18          ;
CODE_209E56:    ADC #$0010                  ; $20:9E56: 69 10 00    ;
CODE_209E59:    STA $09                     ; $20:9E59: 85 09       ;
CODE_209E5B:    INX                         ; $20:9E5B: E8          ;
CODE_209E5C:    INX                         ; $20:9E5C: E8          ;
CODE_209E5D:    INX                         ; $20:9E5D: E8          ;
CODE_209E5E:    INX                         ; $20:9E5E: E8          ;
CODE_209E5F:    DEC $00                     ; $20:9E5F: C6 00       ;
CODE_209E61:    BPL CODE_209E1B             ; $20:9E61: 10 B8       ;
CODE_209E63:    SEP #$30                    ; $20:9E63: E2 30       ;
CODE_209E65:    LDX $25                     ; $20:9E65: A6 25       ;
CODE_209E67:    LDA $23,x                   ; $20:9E67: B5 23       ;
CODE_209E69:    AND #$0F                    ; $20:9E69: 29 0F       ;
CODE_209E6B:    ASL A                       ; $20:9E6B: 0A          ;
CODE_209E6C:    ORA $C2                     ; $20:9E6C: 05 C2       ;
CODE_209E6E:    STA $0381                   ; $20:9E6E: 8D 81 03    ;
CODE_209E71:    LDA $23,x                   ; $20:9E71: B5 23       ;
CODE_209E73:    AND #$10                    ; $20:9E73: 29 10       ;
CODE_209E75:    BEQ CODE_209E79             ; $20:9E75: F0 02       ;
CODE_209E77:    LDA #$04                    ; $20:9E77: A9 04       ;
CODE_209E79:    STA $0380                   ; $20:9E79: 8D 80 03    ;
CODE_209E7C:    RTS                         ; $20:9E7C: 60          ;

CODE_209E7D:    RTS                         ; $20:9E7D: 60          ;

CODE_209E7E:    REP #$20                    ; $20:9E7E: C2 20       ;
CODE_209E80:    LDX $25                     ; $20:9E80: A6 25       ;
CODE_209E82:    LDA $23,x                   ; $20:9E82: B5 23       ;
CODE_209E84:    AND #$00F0                  ; $20:9E84: 29 F0 00    ;
CODE_209E87:    ASL A                       ; $20:9E87: 0A          ;
CODE_209E88:    ASL A                       ; $20:9E88: 0A          ;
CODE_209E89:    XBA                         ; $20:9E89: EB          ;
CODE_209E8A:    STA $0380                   ; $20:9E8A: 8D 80 03    ;
CODE_209E8D:    SEP #$20                    ; $20:9E8D: E2 20       ;
CODE_209E8F:    LDA $23,x                   ; $20:9E8F: B5 23       ;
CODE_209E91:    AND #$01                    ; $20:9E91: 29 01       ;
CODE_209E93:    BEQ CODE_209E9D             ; $20:9E93: F0 08       ;
CODE_209E95:    LDA $0380                   ; $20:9E95: AD 80 03    ;
CODE_209E98:    EOR #$08                    ; $20:9E98: 49 08       ;
CODE_209E9A:    STA $0380                   ; $20:9E9A: 8D 80 03    ;
CODE_209E9D:    LDA $0216                   ; $20:9E9D: AD 16 02    ;
CODE_209EA0:    AND #$08                    ; $20:9EA0: 29 08       ;
CODE_209EA2:    BEQ CODE_209EAD             ; $20:9EA2: F0 09       ;
CODE_209EA4:    LDA $0381                   ; $20:9EA4: AD 81 03    ;
CODE_209EA7:    CLC                         ; $20:9EA7: 18          ;
CODE_209EA8:    ADC #$20                    ; $20:9EA8: 69 20       ;
CODE_209EAA:    STA $0381                   ; $20:9EAA: 8D 81 03    ;
CODE_209EAD:    RTS                         ; $20:9EAD: 60          ;

CODE_209EAE:    LDX $25                     ; $20:9EAE: A6 25       ;
CODE_209EB0:    LDA $23,x                   ; $20:9EB0: B5 23       ;
CODE_209EB2:    AND #$0F                    ; $20:9EB2: 29 0F       ;
CODE_209EB4:    TAY                         ; $20:9EB4: A8          ;
CODE_209EB5:    LDA.w DATA_21823C,y                 ; $20:9EB5: B9 3C 82    ;
CODE_209EB8:    STA $2E                     ; $20:9EB8: 85 2E       ;
CODE_209EBA:    LDA.w DATA_21824C,y                 ; $20:9EBA: B9 4C 82    ;
CODE_209EBD:    STA $2F                     ; $20:9EBD: 85 2F       ;
CODE_209EBF:    REP #$20                    ; $20:9EBF: C2 20       ;
CODE_209EC1:    LDA $23,x                   ; $20:9EC1: B5 23       ;
CODE_209EC3:    AND #$000F                  ; $20:9EC3: 29 0F 00    ;
CODE_209EC6:    ASL A                       ; $20:9EC6: 0A          ;
CODE_209EC7:    ASL A                       ; $20:9EC7: 0A          ;
CODE_209EC8:    ASL A                       ; $20:9EC8: 0A          ;
CODE_209EC9:    ASL A                       ; $20:9EC9: 0A          ;
CODE_209ECA:    CLC                         ; $20:9ECA: 18          ;
CODE_209ECB:    ADC $2E                     ; $20:9ECB: 65 2E       ;
CODE_209ECD:    STA $2E                     ; $20:9ECD: 85 2E       ;
CODE_209ECF:    SEP #$20                    ; $20:9ECF: E2 20       ;
CODE_209ED1:    LDA $23,x                   ; $20:9ED1: B5 23       ;
CODE_209ED3:    AND #$F0                    ; $20:9ED3: 29 F0       ;
CODE_209ED5:    STA $06                     ; $20:9ED5: 85 06       ;
CODE_209ED7:    STZ $07                     ; $20:9ED7: 64 07       ;
CODE_209ED9:    STZ $08                     ; $20:9ED9: 64 08       ;
CODE_209EDB:    STZ $09                     ; $20:9EDB: 64 09       ;
CODE_209EDD:    REP #$30                    ; $20:9EDD: C2 30       ;
CODE_209EDF:    LDY $06                     ; $20:9EDF: A4 06       ;
CODE_209EE1:    LDA [$2E],y                 ; $20:9EE1: B7 2E       ;
CODE_209EE3:    STA $0A                     ; $20:9EE3: 85 0A       ;
CODE_209EE5:    INC $06                     ; $20:9EE5: E6 06       ;
CODE_209EE7:    SEP #$30                    ; $20:9EE7: E2 30       ;
CODE_209EE9:    JSL CODE_209F37             ; $20:9EE9: 22 37 9F 20 ;
CODE_209EED:    REP #$30                    ; $20:9EED: C2 30       ;
CODE_209EEF:    TYA                         ; $20:9EEF: 98          ;
CODE_209EF0:    AND #$00FF                  ; $20:9EF0: 29 FF 00    ;
CODE_209EF3:    ASL A                       ; $20:9EF3: 0A          ;
CODE_209EF4:    ASL A                       ; $20:9EF4: 0A          ;
CODE_209EF5:    ASL A                       ; $20:9EF5: 0A          ;
CODE_209EF6:    TAY                         ; $20:9EF6: A8          ;
CODE_209EF7:    LDX $08                     ; $20:9EF7: A6 08       ;
CODE_209EF9:    LDA $0216                   ; $20:9EF9: AD 16 02    ;
CODE_209EFC:    AND #$0008                  ; $20:9EFC: 29 08 00    ;
CODE_209EFF:    BEQ CODE_209F03             ; $20:9EFF: F0 02       ;
CODE_209F01:    INY                         ; $20:9F01: C8          ;
CODE_209F02:    INY                         ; $20:9F02: C8          ;
CODE_209F03:    PHY                         ; $20:9F03: 5A          ;
CODE_209F04:    LDA $06                     ; $20:9F04: A5 06       ;
CODE_209F06:    DEC A                       ; $20:9F06: 3A          ;
CODE_209F07:    CLC                         ; $20:9F07: 18          ;
CODE_209F08:    ADC #$2000                  ; $20:9F08: 69 00 20    ;
CODE_209F0B:    TAY                         ; $20:9F0B: A8          ;
CODE_209F0C:    LDA [$2E],y                 ; $20:9F0C: B7 2E       ;
CODE_209F0E:    AND #$00FF                  ; $20:9F0E: 29 FF 00    ;
CODE_209F11:    BEQ CODE_209F19             ; $20:9F11: F0 06       ;
CODE_209F13:    PLA                         ; $20:9F13: 68          ;
CODE_209F14:    CLC                         ; $20:9F14: 18          ;
CODE_209F15:    ADC #$0800                  ; $20:9F15: 69 00 08    ;
CODE_209F18:    PHA                         ; $20:9F18: 48          ;
CODE_209F19:    PLY                         ; $20:9F19: 7A          ;
CODE_209F1A:    LDA [$0C],y                 ; $20:9F1A: B7 0C       ;
CODE_209F1C:    STA $0382,x                 ; $20:9F1C: 9D 82 03    ;
CODE_209F1F:    INY                         ; $20:9F1F: C8          ;
CODE_209F20:    INY                         ; $20:9F20: C8          ;
CODE_209F21:    INY                         ; $20:9F21: C8          ;
CODE_209F22:    INY                         ; $20:9F22: C8          ;
CODE_209F23:    LDA [$0C],y                 ; $20:9F23: B7 0C       ;
CODE_209F25:    STA $0384,x                 ; $20:9F25: 9D 84 03    ;
CODE_209F28:    INX                         ; $20:9F28: E8          ;
CODE_209F29:    INX                         ; $20:9F29: E8          ;
CODE_209F2A:    INX                         ; $20:9F2A: E8          ;
CODE_209F2B:    INX                         ; $20:9F2B: E8          ;
CODE_209F2C:    STX $08                     ; $20:9F2C: 86 08       ;
CODE_209F2E:    CPX #$0040                  ; $20:9F2E: E0 40 00    ;
CODE_209F31:    BCC CODE_209EDF             ; $20:9F31: 90 AC       ;
CODE_209F33:    SEP #$30                    ; $20:9F33: E2 30       ;
CODE_209F35:    RTS                         ; $20:9F35: 60          ;

CODE_209F36:    RTS                         ; $20:9F36: 60          ;

CODE_209F37:    LDY $070A                   ; $20:9F37: AC 0A 07    ;
CODE_209F3A:    LDA.w DATA_21CE80,y                 ; $20:9F3A: B9 80 CE    ;
CODE_209F3D:    STA $0E                     ; $20:9F3D: 85 0E       ;
CODE_209F3F:    LDA $070A                   ; $20:9F3F: AD 0A 07    ;
CODE_209F42:    ASL A                       ; $20:9F42: 0A          ;
CODE_209F43:    TAX                         ; $20:9F43: AA          ;
CODE_209F44:    LDA.w DATA_21CE5A,x                 ; $20:9F44: BD 5A CE    ;
CODE_209F47:    STA $0C                     ; $20:9F47: 85 0C       ;
CODE_209F49:    LDA.w DATA_21CE5A+1,x                   ; $20:9F49: BD 5B CE    ;
CODE_209F4C:    STA $0D                     ; $20:9F4C: 85 0D       ;
CODE_209F4E:    LDY $0A                     ; $20:9F4E: A4 0A       ;
CODE_209F50:    RTL                         ; $20:9F50: 6B          ;
CODE_209F51:    LDX $07                     ; $20:9F51: A6 07       ;
CODE_209F53:    LDA [$2E],y                 ; $20:9F53: B7 2E       ;
CODE_209F55:    ASL A                       ; $20:9F55: 0A          ;
CODE_209F56:    ROL $03F0,x                 ; $20:9F56: 3E F0 03    ;
CODE_209F59:    ASL A                       ; $20:9F59: 0A          ;
CODE_209F5A:    ROL $03F0,x                 ; $20:9F5A: 3E F0 03    ;
CODE_209F5D:    DEY                         ; $20:9F5D: 88          ;
CODE_209F5E:    LDA [$2E],y                 ; $20:9F5E: B7 2E       ;
CODE_209F60:    ASL A                       ; $20:9F60: 0A          ;
CODE_209F61:    ROL $03F0,x                 ; $20:9F61: 3E F0 03    ;
CODE_209F64:    ASL A                       ; $20:9F64: 0A          ;
CODE_209F65:    ROL $03F0,x                 ; $20:9F65: 3E F0 03    ;
CODE_209F68:    RTS                         ; $20:9F68: 60          ;
CODE_209F69:    LDA $0C                     ; $20:9F69: A5 0C       ;
CODE_209F6B:    PHA                         ; $20:9F6B: 48          ;
CODE_209F6C:    TAY                         ; $20:9F6C: A8          ;
CODE_209F6D:    LDA $0D                     ; $20:9F6D: A5 0D       ;
CODE_209F6F:    PHA                         ; $20:9F6F: 48          ;
CODE_209F70:    JSL CODE_209FC1             ; $20:9F70: 22 C1 9F 20 ;
CODE_209F74:    STA $0D                     ; $20:9F74: 85 0D       ;
CODE_209F76:    LDA.w DATA_21823C,y                 ; $20:9F76: B9 3C 82    ;
CODE_209F79:    STA $2E                     ; $20:9F79: 85 2E       ;
CODE_209F7B:    STA $D8                     ; $20:9F7B: 85 D8       ;
CODE_209F7D:    LDA.w DATA_21824C,y                 ; $20:9F7D: B9 4C 82    ;
CODE_209F80:    STA $2F                     ; $20:9F80: 85 2F       ;
CODE_209F82:    CLC                         ; $20:9F82: 18          ;
CODE_209F83:    ADC #$20                    ; $20:9F83: 69 20       ;
CODE_209F85:    STA $D9                     ; $20:9F85: 85 D9       ;
CODE_209F87:    LDA #$7E                    ; $20:9F87: A9 7E       ;
CODE_209F89:    STA $DA                     ; $20:9F89: 85 DA       ;
CODE_209F8B:    LDA $0D                     ; $20:9F8B: A5 0D       ;
CODE_209F8D:    AND #$F0                    ; $20:9F8D: 29 F0       ;
CODE_209F8F:    STA $0E                     ; $20:9F8F: 85 0E       ;
CODE_209F91:    LDA $0F                     ; $20:9F91: A5 0F       ;
CODE_209F93:    LSR A                       ; $20:9F93: 4A          ;
CODE_209F94:    LSR A                       ; $20:9F94: 4A          ;
CODE_209F95:    LSR A                       ; $20:9F95: 4A          ;
CODE_209F96:    LSR A                       ; $20:9F96: 4A          ;
CODE_209F97:    ORA $0E                     ; $20:9F97: 05 0E       ;
CODE_209F99:    TAY                         ; $20:9F99: A8          ;
CODE_209F9A:    PLA                         ; $20:9F9A: 68          ;
CODE_209F9B:    STA $0D                     ; $20:9F9B: 85 0D       ;
CODE_209F9D:    PLA                         ; $20:9F9D: 68          ;
CODE_209F9E:    STA $0C                     ; $20:9F9E: 85 0C       ;
CODE_209FA0:    LDA [$D8],y                 ; $20:9FA0: B7 D8       ;
CODE_209FA2:    BEQ CODE_209FBC             ; $20:9FA2: F0 18       ;
CODE_209FA4:    PHX                         ; $20:9FA4: DA          ;
CODE_209FA5:    LDA $070A                   ; $20:9FA5: AD 0A 07    ;
CODE_209FA8:    ASL A                       ; $20:9FA8: 0A          ;
CODE_209FA9:    TAX                         ; $20:9FA9: AA          ;
CODE_209FAA:    LDA.w DATA_21AB57,x                 ; $20:9FAA: BD 57 AB    ;
CODE_209FAD:    STA $DB                     ; $20:9FAD: 85 DB       ;
CODE_209FAF:    LDA.w DATA_21AB57+1,x                   ; $20:9FAF: BD 58 AB    ;
CODE_209FB2:    STA $DC                     ; $20:9FB2: 85 DC       ;
CODE_209FB4:    LDA [$2E],y                 ; $20:9FB4: B7 2E       ;
CODE_209FB6:    TAY                         ; $20:9FB6: A8          ;
CODE_209FB7:    LDA ($DB),y                 ; $20:9FB7: B1 DB       ;
CODE_209FB9:    PLX                         ; $20:9FB9: FA          ;
CODE_209FBA:    BRA CODE_209FBE             ; $20:9FBA: 80 02       ;
CODE_209FBC:    LDA [$2E],y                 ; $20:9FBC: B7 2E       ;
CODE_209FBE:    STA $B3                     ; $20:9FBE: 85 B3       ;
CODE_209FC0:    RTL                         ; $20:9FC0: 6B          ;

CODE_209FC1:    CPY #$00                    ; $20:9FC1: C0 00       ;
CODE_209FC3:    BMI CODE_209FD3             ; $20:9FC3: 30 0E       ;
CODE_209FC5:    CLC                         ; $20:9FC5: 18          ;
CODE_209FC6:    ADC.w DATA_21CEB2,y                 ; $20:9FC6: 79 B2 CE    ;
CODE_209FC9:    BCS CODE_209FCF                     ; $20:9FC9: B0 04       ;
CODE_209FCB:    CMP #$F0                    ; $20:9FCB: C9 F0       ;
CODE_209FCD:    BCC CODE_209FD3             ; $20:9FCD: 90 04       ;
CODE_209FCF:    CLC                         ; $20:9FCF: 18          ;
CODE_209FD0:    ADC #$10                    ; $20:9FD0: 69 10       ;
CODE_209FD2:    INY                         ; $20:9FD2: C8          ;
CODE_209FD3:    RTL                         ; $20:9FD3: 6B          ;

CODE_209FD4:    CPY #$00                    ; $20:9FD4: C0 00       ;
CODE_209FD6:    BMI CODE_209FDF             ; $20:9FD6: 30 07       ;
CODE_209FD8:    SEC                         ; $20:9FD8: 38          ;
CODE_209FD9:    SBC.w DATA_21CEB2,y                 ; $20:9FD9: F9 B2 CE    ;
CODE_209FDC:    BCS CODE_209FDF                     ; $20:9FDC: B0 01       ;
CODE_209FDE:    DEY                         ; $20:9FDE: 88          ;
CODE_209FDF:    RTL                         ; $20:9FDF: 6B          ;

CODE_209FE0:    STZ $B4                     ; $20:9FE0: 64 B4       ;
CODE_209FE2:    STZ $B5                     ; $20:9FE2: 64 B5       ;
CODE_209FE4:    STZ $B6                     ; $20:9FE4: 64 B6       ;
CODE_209FE6:    LDA $0F                     ; $20:9FE6: A5 0F       ;
CODE_209FE8:    LSR A                       ; $20:9FE8: 4A          ;
CODE_209FE9:    LSR A                       ; $20:9FE9: 4A          ;
CODE_209FEA:    LSR A                       ; $20:9FEA: 4A          ;
CODE_209FEB:    LSR A                       ; $20:9FEB: 4A          ;
CODE_209FEC:    STA $B2                     ; $20:9FEC: 85 B2       ;
CODE_209FEE:    LDA $0E                     ; $20:9FEE: A5 0E       ;
CODE_209FF0:    AND #$0F                    ; $20:9FF0: 29 0F       ;
CODE_209FF2:    ASL A                       ; $20:9FF2: 0A          ;
CODE_209FF3:    TAX                         ; $20:9FF3: AA          ;
CODE_209FF4:    LDA.w DATA_218200,x                 ; $20:9FF4: BD 00 82    ;
CODE_209FF7:    STA $2E                     ; $20:9FF7: 85 2E       ;
CODE_209FF9:    LDA.w DATA_218200+1,x                   ; $20:9FF9: BD 01 82    ;
CODE_209FFC:    STA $2F                     ; $20:9FFC: 85 2F       ;
CODE_209FFE:    LDA.w DATA_21821E,x                 ; $20:9FFE: BD 1E 82    ;
CODE_20A001:    STA $D8                     ; $20:A001: 85 D8       ;
CODE_20A003:    LDA.w DATA_21821E+1,x                   ; $20:A003: BD 1F 82    ;
CODE_20A006:    STA $D9                     ; $20:A006: 85 D9       ;
CODE_20A008:    LDA #$7E                    ; $20:A008: A9 7E       ;
CODE_20A00A:    STA $DA                     ; $20:A00A: 85 DA       ;
CODE_20A00C:    LDA $0C                     ; $20:A00C: A5 0C       ;
CODE_20A00E:    BEQ CODE_20A014             ; $20:A00E: F0 04       ;
CODE_20A010:    INC $2F                     ; $20:A010: E6 2F       ;
CODE_20A012:    INC $D9                     ; $20:A012: E6 D9       ;
CODE_20A014:    LDA $0D                     ; $20:A014: A5 0D       ;
CODE_20A016:    AND #$F0                    ; $20:A016: 29 F0       ;
CODE_20A018:    ORA $B2                     ; $20:A018: 05 B2       ;
CODE_20A01A:    STA $0B                     ; $20:A01A: 85 0B       ;
CODE_20A01C:    TAY                         ; $20:A01C: A8          ;
CODE_20A01D:    LDA [$D8],y                 ; $20:A01D: B7 D8       ;
CODE_20A01F:    BEQ CODE_20A037             ; $20:A01F: F0 16       ;
CODE_20A021:    LDA $070A                   ; $20:A021: AD 0A 07    ;
CODE_20A024:    ASL A                       ; $20:A024: 0A          ;
CODE_20A025:    TAX                         ; $20:A025: AA          ;
CODE_20A026:    LDA.w DATA_21AB57,x                 ; $20:A026: BD 57 AB    ;
CODE_20A029:    STA $DB                     ; $20:A029: 85 DB       ;
CODE_20A02B:    LDA.w DATA_21AB57+1,x                   ; $20:A02B: BD 58 AB    ;
CODE_20A02E:    STA $DC                     ; $20:A02E: 85 DC       ;
CODE_20A030:    LDA [$2E],y                 ; $20:A030: B7 2E       ;
CODE_20A032:    TAY                         ; $20:A032: A8          ;
CODE_20A033:    LDA ($DB),y                 ; $20:A033: B1 DB       ;
CODE_20A035:    BRA CODE_20A039             ; $20:A035: 80 02       ;

CODE_20A037:    LDA [$2E],y                 ; $20:A037: B7 2E       ;
CODE_20A039:    STA $B3                     ; $20:A039: 85 B3       ;
CODE_20A03B:    LDY $070A                   ; $20:A03B: AC 0A 07    ;
CODE_20A03E:    CPY #$03                    ; $20:A03E: C0 03       ;
CODE_20A040:    BEQ CODE_20A046             ; $20:A040: F0 04       ;
CODE_20A042:    CPY #$0E                    ; $20:A042: C0 0E       ;
CODE_20A044:    BNE CODE_20A074             ; $20:A044: D0 2E       ;
CODE_20A046:    STZ $00                     ; $20:A046: 64 00       ;
CODE_20A048:    LDA $B3                     ; $20:A048: A5 B3       ;
CODE_20A04A:    STA $01                     ; $20:A04A: 85 01       ;
CODE_20A04C:    AND #$C0                    ; $20:A04C: 29 C0       ;
CODE_20A04E:    CLC                         ; $20:A04E: 18          ;
CODE_20A04F:    ROL A                       ; $20:A04F: 2A          ;
CODE_20A050:    ROL A                       ; $20:A050: 2A          ;
CODE_20A051:    ROL A                       ; $20:A051: 2A          ;
CODE_20A052:    TAY                         ; $20:A052: A8          ;
CODE_20A053:    LDA $01                     ; $20:A053: A5 01       ;
CODE_20A055:    CMP $1E96,y                 ; $20:A055: D9 96 1E    ;
CODE_20A058:    BCC CODE_20A074             ; $20:A058: 90 1A       ;
CODE_20A05A:    TYA                         ; $20:A05A: 98          ;
CODE_20A05B:    ASL A                       ; $20:A05B: 0A          ;
CODE_20A05C:    TAX                         ; $20:A05C: AA          ;
CODE_20A05D:    LDA.w DATA_21AAD0,x                 ; $20:A05D: BD D0 AA    ;
CODE_20A060:    STA $02                     ; $20:A060: 85 02       ;
CODE_20A062:    LDA.w DATA_21AAD0+1,x                   ; $20:A062: BD D1 AA    ;
CODE_20A065:    STA $03                     ; $20:A065: 85 03       ;
CODE_20A067:    LDX $00                     ; $20:A067: A6 00       ;
CODE_20A069:    LDA $01                     ; $20:A069: A5 01       ;
CODE_20A06B:    SEC                         ; $20:A06B: 38          ;
CODE_20A06C:    SBC $1E96,y                 ; $20:A06C: F9 96 1E    ;
CODE_20A06F:    TAY                         ; $20:A06F: A8          ;
CODE_20A070:    LDA ($02),y                 ; $20:A070: B1 02       ;
CODE_20A072:    STA $B4,x                   ; $20:A072: 95 B4       ;
CODE_20A074:    LDA $B3                     ; $20:A074: A5 B3       ;
CODE_20A076:    RTL                         ; $20:A076: 6B          ;
CODE_20A077:    JSR CODE_208753             ; $20:A077: 20 53 87    ;
CODE_20A07A:    RTL                         ; $20:A07A: 6B          ;
CODE_20A07B:    LDA $0243                   ; $20:A07B: AD 43 02    ;
CODE_20A07E:    BMI CODE_20A0C5             ; $20:A07E: 30 45       ;
CODE_20A080:    CMP #$08                    ; $20:A080: C9 08       ;
CODE_20A082:    BCC CODE_20A08A             ; $20:A082: 90 06       ;
CODE_20A084:    LDA #$FF                    ; $20:A084: A9 FF       ;
CODE_20A086:    STA $0243                   ; $20:A086: 8D 43 02    ;
CODE_20A089:    RTS                         ; $20:A089: 60          ;
CODE_20A08A:    LDX $0245                   ; $20:A08A: AE 45 02    ;
CODE_20A08D:    LDA.w DATA_21CA14,x                 ; $20:A08D: BD 14 CA    ;
CODE_20A090:    STA $0242                   ; $20:A090: 8D 42 02    ;
CODE_20A093:    LDA.w DATA_21CA19,x                 ; $20:A093: BD 19 CA    ;
CODE_20A096:    STA $0241                   ; $20:A096: 8D 41 02    ;
CODE_20A099:    LDA.w DATA_21CA1E,x                 ; $20:A099: BD 1E CA    ;
CODE_20A09C:    STA $0240                   ; $20:A09C: 8D 40 02    ;
CODE_20A09F:    LDA $0243                   ; $20:A09F: AD 43 02    ;
CODE_20A0A2:    ASL A                       ; $20:A0A2: 0A          ;
CODE_20A0A3:    TAY                         ; $20:A0A3: A8          ;
CODE_20A0A4:    REP #$20                    ; $20:A0A4: C2 20       ;
CODE_20A0A6:    LDA #$0200                  ; $20:A0A6: A9 00 02    ;
CODE_20A0A9:    STA $02CA                   ; $20:A0A9: 8D CA 02    ;
CODE_20A0AC:    LDA $0240                   ; $20:A0AC: AD 40 02    ;
CODE_20A0AF:    CLC                         ; $20:A0AF: 18          ;
CODE_20A0B0:    ADC.w DATA_21E925,y                 ; $20:A0B0: 79 25 E9    ;
CODE_20A0B3:    STA $0240                   ; $20:A0B3: 8D 40 02    ;
CODE_20A0B6:    LDA #$2800                  ; $20:A0B6: A9 00 28    ;
CODE_20A0B9:    CLC                         ; $20:A0B9: 18          ;
CODE_20A0BA:    ADC.w DATA_21E935,y                 ; $20:A0BA: 79 35 E9    ;
CODE_20A0BD:    STA $023E                   ; $20:A0BD: 8D 3E 02    ;
CODE_20A0C0:    SEP #$20                    ; $20:A0C0: E2 20       ;
CODE_20A0C2:    INC $0243                   ; $20:A0C2: EE 43 02    ;
CODE_20A0C5:    RTS                         ; $20:A0C5: 60          ;
CODE_20A0C6:    LDA $0243                   ; $20:A0C6: AD 43 02    ;
CODE_20A0C9:    BMI CODE_20A111             ; $20:A0C9: 30 46       ;
CODE_20A0CB:    CMP #$04                    ; $20:A0CB: C9 04       ;
CODE_20A0CD:    BCC CODE_20A0D5             ; $20:A0CD: 90 06       ;
CODE_20A0CF:    LDA #$FF                    ; $20:A0CF: A9 FF       ;
CODE_20A0D1:    STA $0243                   ; $20:A0D1: 8D 43 02    ;
CODE_20A0D4:    RTS                         ; $20:A0D4: 60          ;
CODE_20A0D5:    LDX $0246                   ; $20:A0D5: AE 46 02    ;
CODE_20A0D8:    LDA.w DATA_21CA23,x                 ; $20:A0D8: BD 23 CA    ;
CODE_20A0DB:    STA $0242                   ; $20:A0DB: 8D 42 02    ;
CODE_20A0DE:    LDA.w DATA_21CA26,x                 ; $20:A0DE: BD 26 CA    ;
CODE_20A0E1:    STA $0241                   ; $20:A0E1: 8D 41 02    ;
CODE_20A0E4:    LDA.w DATA_21CA29,x                 ; $20:A0E4: BD 29 CA    ;
CODE_20A0E7:    STA $0240                   ; $20:A0E7: 8D 40 02    ;
CODE_20A0EA:    LDA $0243                   ; $20:A0EA: AD 43 02    ;
CODE_20A0ED:    ASL A                       ; $20:A0ED: 0A          ;
CODE_20A0EE:    ASL A                       ; $20:A0EE: 0A          ;
CODE_20A0EF:    TAY                         ; $20:A0EF: A8          ;
CODE_20A0F0:    REP #$20                    ; $20:A0F0: C2 20       ;
CODE_20A0F2:    LDA #$0400                  ; $20:A0F2: A9 00 04    ;
CODE_20A0F5:    STA $02CA                   ; $20:A0F5: 8D CA 02    ;
CODE_20A0F8:    LDA $0240                   ; $20:A0F8: AD 40 02    ;
CODE_20A0FB:    CLC                         ; $20:A0FB: 18          ;
CODE_20A0FC:    ADC.w DATA_21E925,y                 ; $20:A0FC: 79 25 E9    ;
CODE_20A0FF:    STA $0240                   ; $20:A0FF: 8D 40 02    ;
CODE_20A102:    LDA #$2800                  ; $20:A102: A9 00 28    ;
CODE_20A105:    CLC                         ; $20:A105: 18          ;
CODE_20A106:    ADC.w DATA_21E935,y                 ; $20:A106: 79 35 E9    ;
CODE_20A109:    STA $023E                   ; $20:A109: 8D 3E 02    ;
CODE_20A10C:    SEP #$20                    ; $20:A10C: E2 20       ;
CODE_20A10E:    INC $0243                   ; $20:A10E: EE 43 02    ;
CODE_20A111:    RTS                         ; $20:A111: 60          ;

CODE_20A112:    JML CODE_009641             ; $20:A112: 5C 41 96 00 ;

CODE_20A116:    NOP                         ; $20:A116: EA          ;
CODE_20A117:    NOP                         ; $20:A117: EA          ;
CODE_20A118:    LDA #$AA                    ; $20:A118: A9 AA       ;
CODE_20A11A:    STA $702000                 ; $20:A11A: 8F 00 20 70 ;
CODE_20A11E:    CMP $700000                 ; $20:A11E: CF 00 00 70 ;
CODE_20A122:    BNE CODE_20A112             ; $20:A122: D0 EE       ;
CODE_20A124:    LDA #$55                    ; $20:A124: A9 55       ;
CODE_20A126:    STA $702000                 ; $20:A126: 8F 00 20 70 ;
CODE_20A12A:    CMP $700000                 ; $20:A12A: CF 00 00 70 ;
CODE_20A12E:    BNE CODE_20A112             ; $20:A12E: D0 E2       ;
CODE_20A130:    SEI                         ; $20:A130: 78          ;
CODE_20A131:    STZ $4200                   ; $20:A131: 9C 00 42    ;
CODE_20A134:    STZ $420B                   ; $20:A134: 9C 0B 42    ;
CODE_20A137:    STZ $420C                   ; $20:A137: 9C 0C 42    ;
CODE_20A13A:    LDA #$80                    ; $20:A13A: A9 80       ;
CODE_20A13C:    STA $2100                   ; $20:A13C: 8D 00 21    ;
CODE_20A13F:    REP #$20                    ; $20:A13F: C2 20       ;
CODE_20A141:    PHD                         ; $20:A141: 0B          ;
CODE_20A142:    LDA #$2100                  ; $20:A142: A9 00 21    ;
CODE_20A145:    TCD                         ; $20:A145: 5B          ;
CODE_20A146:    SEP #$30                    ; $20:A146: E2 30       ;
CODE_20A148:    LDA #$21                ; $20:A148: A9 21       ;Data bank: $21
CODE_20A14A:    PHA                         ; $20:A14A: 48          ;
CODE_20A14B:    PLB                         ; $20:A14B: AB          ;
CODE_20A14C:    LDA #$03                    ; $20:A14C: A9 03       ;
CODE_20A14E:    STA $021E                   ; $20:A14E: 8D 1E 02    ;
CODE_20A151:    STA $01                     ; $20:A151: 85 01       ;
CODE_20A153:    LDA #$09                    ; $20:A153: A9 09       ;
CODE_20A155:    STA $05                     ; $20:A155: 85 05       ;
CODE_20A157:    STA $020C                   ; $20:A157: 8D 0C 02    ;
CODE_20A15A:    STZ $020D                   ; $20:A15A: 9C 0D 02    ;
CODE_20A15D:    LDA #$03                    ; $20:A15D: A9 03       ;
CODE_20A15F:    STA $07                     ; $20:A15F: 85 07       ;
CODE_20A161:    LDA #$13                    ; $20:A161: A9 13       ;
CODE_20A163:    STA $08                     ; $20:A163: 85 08       ;
CODE_20A165:    LDA #$51                    ; $20:A165: A9 51       ;
CODE_20A167:    STA $09                     ; $20:A167: 85 09       ;
CODE_20A169:    STZ $0A                     ; $20:A169: 64 0A       ;
CODE_20A16B:    LDA #$22                    ; $20:A16B: A9 22       ;
CODE_20A16D:    STA $0B                     ; $20:A16D: 85 0B       ;
CODE_20A16F:    LDA #$05                    ; $20:A16F: A9 05       ;
CODE_20A171:    STA $0C                     ; $20:A171: 85 0C       ;
CODE_20A173:    LDA #$15                    ; $20:A173: A9 15       ;
CODE_20A175:    STA $2C                     ; $20:A175: 85 2C       ;
CODE_20A177:    STA $0208                   ; $20:A177: 8D 08 02    ;
CODE_20A17A:    LDA #$02                    ; $20:A17A: A9 02       ;
CODE_20A17C:    STA $2D                     ; $20:A17C: 85 2D       ;
CODE_20A17E:    STA $0209                   ; $20:A17E: 8D 09 02    ;
CODE_20A181:    LDA #$00                    ; $20:A181: A9 00       ;
CODE_20A183:    STA $30                     ; $20:A183: 85 30       ;
CODE_20A185:    STA $0203                   ; $20:A185: 8D 03 02    ;
CODE_20A188:    LDA #$00                    ; $20:A188: A9 00       ;
CODE_20A18A:    STA $31                     ; $20:A18A: 85 31       ;
CODE_20A18C:    STA $0204                   ; $20:A18C: 8D 04 02    ;
CODE_20A18F:    LDA #$20                    ; $20:A18F: A9 20       ;
CODE_20A191:    STA $0205                   ; $20:A191: 8D 05 02    ;
CODE_20A194:    LDA #$40                    ; $20:A194: A9 40       ;
CODE_20A196:    STA $0206                   ; $20:A196: 8D 06 02    ;
CODE_20A199:    LDA #$80                    ; $20:A199: A9 80       ;
CODE_20A19B:    STA $0207                   ; $20:A19B: 8D 07 02    ;
CODE_20A19E:    STZ $33                     ; $20:A19E: 64 33       ;
CODE_20A1A0:    PLD                         ; $20:A1A0: 2B          ;
CODE_20A1A1:    STZ $1208                   ; $20:A1A1: 9C 08 12    ;
CODE_20A1A4:    STZ $1209                   ; $20:A1A4: 9C 09 12    ;
CODE_20A1A7:    STZ $120E                   ; $20:A1A7: 9C 0E 12    ;
CODE_20A1AA:    STZ $120F                   ; $20:A1AA: 9C 0F 12    ;
CODE_20A1AD:    STZ $120A                   ; $20:A1AD: 9C 0A 12    ;
CODE_20A1B0:    STZ $120B                   ; $20:A1B0: 9C 0B 12    ;
CODE_20A1B3:    STA $120D                   ; $20:A1B3: 8D 0D 12    ;
CODE_20A1B6:    LDA #$01                    ; $20:A1B6: A9 01       ;
CODE_20A1B8:    STA $120C                   ; $20:A1B8: 8D 0C 12    ;
CODE_20A1BB:    JMP CODE_208051             ; $20:A1BB: 4C 51 80    ;

CODE_20A1BE:    STA $08                     ; $20:A1BE: 85 08       ;
CODE_20A1C0:    STX $09                     ; $20:A1C0: 86 09       ;
CODE_20A1C2:    STY $0A                     ; $20:A1C2: 84 0A       ;
CODE_20A1C4:    STZ $00                     ; $20:A1C4: 64 00       ;
CODE_20A1C6:    LDA #$A5                    ; $20:A1C6: A9 A5       ;
CODE_20A1C8:    STA $01                     ; $20:A1C8: 85 01       ;
CODE_20A1CA:    LDA #$7F                    ; $20:A1CA: A9 7F       ;
CODE_20A1CC:    STA $02                     ; $20:A1CC: 85 02       ;
CODE_20A1CE:    JSR CODE_20A20A             ; $20:A1CE: 20 0A A2    ;
CODE_20A1D1:    RTL                         ; $20:A1D1: 6B          ;

CODE_20A1D2:    STA $08                     ; $20:A1D2: 85 08       ;
CODE_20A1D4:    STX $09                     ; $20:A1D4: 86 09       ;
CODE_20A1D6:    STY $0A                     ; $20:A1D6: 84 0A       ;
CODE_20A1D8:    STZ $00                     ; $20:A1D8: 64 00       ;
CODE_20A1DA:    LDA #$60                    ; $20:A1DA: A9 60       ;
CODE_20A1DC:    STA $01                     ; $20:A1DC: 85 01       ;
CODE_20A1DE:    LDA #$7E                    ; $20:A1DE: A9 7E       ;
CODE_20A1E0:    STA $02                     ; $20:A1E0: 85 02       ;
CODE_20A1E2:    JSR CODE_20A20A             ; $20:A1E2: 20 0A A2    ;
CODE_20A1E5:    RTL                         ; $20:A1E5: 6B          ;

CODE_20A1E6:    STA $08                     ; $20:A1E6: 85 08       ;
CODE_20A1E8:    STX $09                     ; $20:A1E8: 86 09       ;
CODE_20A1EA:    STY $0A                     ; $20:A1EA: 84 0A       ;
CODE_20A1EC:    STZ $00                     ; $20:A1EC: 64 00       ;
CODE_20A1EE:    LDA #$80                    ; $20:A1EE: A9 80       ;
CODE_20A1F0:    STA $01                     ; $20:A1F0: 85 01       ;
CODE_20A1F2:    LDA #$7E                    ; $20:A1F2: A9 7E       ;
CODE_20A1F4:    STA $02                     ; $20:A1F4: 85 02       ;
CODE_20A1F6:    JSR CODE_20A20A             ; $20:A1F6: 20 0A A2    ;
CODE_20A1F9:    RTL                         ; $20:A1F9: 6B          ;

CODE_20A1FA:    STA $08                     ; $20:A1FA: 85 08       ;
CODE_20A1FC:    STX $09                     ; $20:A1FC: 86 09       ;
CODE_20A1FE:    STY $0A                     ; $20:A1FE: 84 0A       ;
CODE_20A200:    STZ $00                     ; $20:A200: 64 00       ;
CODE_20A202:    LDA #$00                    ; $20:A202: A9 00       ;
CODE_20A204:    STA $01                     ; $20:A204: 85 01       ;
CODE_20A206:    LDA #$7F                    ; $20:A206: A9 7F       ;
CODE_20A208:    STA $02                     ; $20:A208: 85 02       ;
CODE_20A20A:    REP #$10                    ; $20:A20A: C2 10       ;
CODE_20A20C:    LDY #$0000                  ; $20:A20C: A0 00 00    ;
CODE_20A20F:    JSR CODE_20A2A5             ; $20:A20F: 20 A5 A2    ;
CODE_20A212:    CMP #$FF                    ; $20:A212: C9 FF       ;
CODE_20A214:    BNE CODE_20A219             ; $20:A214: D0 03       ;
CODE_20A216:    SEP #$10                    ; $20:A216: E2 10       ;
CODE_20A218:    RTS                         ; $20:A218: 60          ;

CODE_20A219:    STA $05                     ; $20:A219: 85 05       ;
CODE_20A21B:    AND #$E0                    ; $20:A21B: 29 E0       ;
CODE_20A21D:    CMP #$E0                    ; $20:A21D: C9 E0       ;
CODE_20A21F:    BEQ CODE_20A22B             ; $20:A21F: F0 0A       ;
CODE_20A221:    PHA                         ; $20:A221: 48          ;
CODE_20A222:    LDA $05                     ; $20:A222: A5 05       ;
CODE_20A224:    REP #$20                    ; $20:A224: C2 20       ;
CODE_20A226:    AND #$001F                  ; $20:A226: 29 1F 00    ;
CODE_20A229:    BRA CODE_20A23D             ; $20:A229: 80 12       ;

CODE_20A22B:    LDA $05                     ; $20:A22B: A5 05       ;
CODE_20A22D:    ASL A                       ; $20:A22D: 0A          ;
CODE_20A22E:    ASL A                       ; $20:A22E: 0A          ;
CODE_20A22F:    ASL A                       ; $20:A22F: 0A          ;
CODE_20A230:    AND #$E0                    ; $20:A230: 29 E0       ;
CODE_20A232:    PHA                     ; $20:A232: 48          ;
CODE_20A233:    LDA $05                     ; $20:A233: A5 05       ;
CODE_20A235:    AND #$03                ; $20:A235: 29 03       ;
CODE_20A236:    XBA                     ; $20:A236: EB          ;
CODE_20A238:    JSR CODE_20A2A5             ; $20:A238: 20 A5 A2    ;
CODE_20A23B:    REP #$20                    ; $20:A23B: C2 20       ;
CODE_20A23D:    INC A                       ; $20:A23D: 1A          ;
CODE_20A23E:    STA $03                     ; $20:A23E: 85 03       ;
CODE_20A240:    SEP #$20                    ; $20:A240: E2 20       ;
CODE_20A242:    PLA                         ; $20:A242: 68          ;
CODE_20A243:    BEQ CODE_20A25B             ; $20:A243: F0 16       ;
CODE_20A245:    BMI CODE_20A28D             ; $20:A245: 30 46       ;
CODE_20A247:    ASL A                       ; $20:A247: 0A          ;
CODE_20A248:    BPL CODE_20A26A             ; $20:A248: 10 20       ;
CODE_20A24A:    ASL A                       ; $20:A24A: 0A          ;
CODE_20A24B:    BPL CODE_20A277             ; $20:A24B: 10 2A       ;
CODE_20A24D:    JSR CODE_20A2A5             ; $20:A24D: 20 A5 A2    ;
CODE_20A250:    LDX $03                     ; $20:A250: A6 03       ;
CODE_20A252:    STA [$00],y                 ; $20:A252: 97 00       ;
CODE_20A254:    INC A                       ; $20:A254: 1A          ;
CODE_20A255:    INY                         ; $20:A255: C8          ;
CODE_20A256:    DEX                         ; $20:A256: CA          ;
CODE_20A257:    BNE CODE_20A252             ; $20:A257: D0 F9       ;
CODE_20A259:    BRA CODE_20A20F             ; $20:A259: 80 B4       ;

CODE_20A25B:    JSR CODE_20A2A5             ; $20:A25B: 20 A5 A2    ;
CODE_20A25E:    STA [$00],y                 ; $20:A25E: 97 00       ;
CODE_20A260:    INY                         ; $20:A260: C8          ;
CODE_20A261:    LDX $03                     ; $20:A261: A6 03       ;
CODE_20A263:    DEX                         ; $20:A263: CA          ;
CODE_20A264:    STX $03                     ; $20:A264: 86 03       ;
CODE_20A266:    BNE CODE_20A25B             ; $20:A266: D0 F3       ;
CODE_20A268:    BRA CODE_20A20F             ; $20:A268: 80 A5       ;

CODE_20A26A:    JSR CODE_20A2A5             ; $20:A26A: 20 A5 A2    ;
CODE_20A26D:    LDX $03                     ; $20:A26D: A6 03       ;
CODE_20A26F:    STA [$00],y                 ; $20:A26F: 97 00       ;
CODE_20A271:    INY                         ; $20:A271: C8          ;
CODE_20A272:    DEX                         ; $20:A272: CA          ;
CODE_20A273:    BNE CODE_20A26F             ; $20:A273: D0 FA       ;
CODE_20A275:    BRA CODE_20A20F             ; $20:A275: 80 98       ;

CODE_20A277:    JSR CODE_20A2B4             ; $20:A277: 20 B4 A2    ;
CODE_20A27A:    LDX $03                     ; $20:A27A: A6 03       ;
CODE_20A27C:    XBA                         ; $20:A27C: EB          ;
CODE_20A27D:    STA [$00],y                 ; $20:A27D: 97 00       ;
CODE_20A27F:    INY                         ; $20:A27F: C8          ;
CODE_20A280:    DEX                         ; $20:A280: CA          ;
CODE_20A281:    BEQ CODE_20A28A             ; $20:A281: F0 07       ;
CODE_20A283:    XBA                         ; $20:A283: EB          ;
CODE_20A284:    STA [$00],y                 ; $20:A284: 97 00       ;
CODE_20A286:    INY                         ; $20:A286: C8          ;
CODE_20A287:    DEX                         ; $20:A287: CA          ;
CODE_20A288:    BNE CODE_20A27C             ; $20:A288: D0 F2       ;
CODE_20A28A:    JMP CODE_20A20F             ; $20:A28A: 4C 0F A2    ;

CODE_20A28D:    JSR CODE_20A2B4             ; $20:A28D: 20 B4 A2    ;
CODE_20A290:    TAX                         ; $20:A290: AA          ;
CODE_20A291:    PHY                         ; $20:A291: 5A          ;
CODE_20A292:    TXY                         ; $20:A292: 9B          ;
CODE_20A293:    LDA [$00],y                 ; $20:A293: B7 00       ;
CODE_20A295:    PLY                         ; $20:A295: 7A          ;
CODE_20A296:    STA [$00],y                 ; $20:A296: 97 00       ;
CODE_20A298:    INY                         ; $20:A298: C8          ;
CODE_20A299:    INX                         ; $20:A299: E8          ;
CODE_20A29A:    REP #$20                    ; $20:A29A: C2 20       ;
CODE_20A29C:    DEC $03                     ; $20:A29C: C6 03       ;
CODE_20A29E:    SEP #$20                    ; $20:A29E: E2 20       ;
CODE_20A2A0:    BNE CODE_20A291             ; $20:A2A0: D0 EF       ;
CODE_20A2A2:    JMP CODE_20A20F             ; $20:A2A2: 4C 0F A2    ;

CODE_20A2A5:    LDA [$08]                   ; $20:A2A5: A7 08       ;
CODE_20A2A7:    LDX $08                     ; $20:A2A7: A6 08       ;
CODE_20A2A9:    INX                         ; $20:A2A9: E8          ;
CODE_20A2AA:    BNE CODE_20A2B1             ; $20:A2AA: D0 05       ;
CODE_20A2AC:    LDX #$00                    ; $20:A2AC: A2 00       ;
CODE_20A2AE:    BRA CODE_20A296             ; $20:A2AE: 80 E6       ;

CODE_20A2B0:    ASL A                       ; $20:A2B0: 0A          ;
CODE_20A2B1:    STX $08                     ; $20:A2B1: 86 08       ;
CODE_20A2B3:    RTS                         ; $20:A2B3: 60          ;

CODE_20A2B4:    LDA [$08]                   ; $20:A2B4: A7 08       ;
CODE_20A2B6:    LDX $08                     ; $20:A2B6: A6 08       ;
CODE_20A2B8:    INX                         ; $20:A2B8: E8          ;
CODE_20A2B9:    BNE CODE_20A2C0             ; $20:A2B9: D0 05       ;
CODE_20A2BB:    LDX #$00                    ; $20:A2BB: A2 00       ;
CODE_20A2BD:    BRA CODE_20A2A5             ; $20:A2BD: 80 E6       ;

CODE_20A2BF:    ASL A                   ; $20:A2BF: 0A          ;
CODE_20A2C0:    STX $08                 ; $20:A2C0: 86 08       ;
CODE_20A2C2:    XBA                     ; $20:A2C2: EB          ;
CODE_20A2C3:    LDA [$08]               ; $20:A2C3: A7 08       ;
CODE_20A2C5:    INX                     ; $20:A2C5: E8          ;
CODE_20A2C6:    BNE CODE_20A2CD         ; $20:A2C6: D0 05       ;
CODE_20A2C8:    LDX #$8000              ; $20:A2C8: A2 00 80    ;
CODE_20A2CB:    INC $0A                 ; $20:A2CB: E6 0A       ;
CODE_20A2CD:    STX $08                 ; $20:A2CD: 86 08       ;
CODE_20A2CF:    RTS                     ; $20:A2CF: 60          ;

CODE_20A2D0:    STZ $01                 ; $20:A2D0: 64 01       ; entry point for SMB3 Battle Mode (DB = #$21, DP = #$0000)
CODE_20A2D2:    LDA #$BF                    ; $20:A2D2: A9 BF       ;
CODE_20A2D4:    STA $00                     ; $20:A2D4: 85 00       ;
CODE_20A2D6:    JSR CODE_20FA17         ; $20:A2D6: 20 17 FA    ; ?? upload something to vram (seems to do nothing if removed)
CODE_20A2D9:    JSL CODE_22E0A9         ; $20:A2D9: 22 A9 E0 22 ; clear OAM
CODE_20A2DD:    JSL CODE_25F05A         ; $20:A2DD: 22 5A F0 25 ; upload music and ??
CODE_20A2E1:    JSL CODE_25F934         ; $20:A2E1: 22 34 F9 25 ; ?? (seems to do nothing if removed)
CODE_20A2E5:    STZ $4200               ; $20:A2E5: 9C 00 42    ; disable interrupts
CODE_20A2E8:    LDA #$11                    ; $20:A2E8: A9 11       ;
CODE_20A2EA:    STA $020F                   ; $20:A2EA: 8D 0F 02    ;
CODE_20A2ED:    LDA $7E3955                 ; $20:A2ED: AF 55 39 7E ;
CODE_20A2F1:    INC A                       ; $20:A2F1: 1A          ;
CODE_20A2F2:    STA $7E3955                 ; $20:A2F2: 8F 55 39 7E ;
CODE_20A2F6:    LDA #$04                    ; $20:A2F6: A9 04       ;
CODE_20A2F8:    STA $05EE                   ; $20:A2F8: 8D EE 05    ;
CODE_20A2FB:    STZ $12                     ; $20:A2FB: 64 12       ;
CODE_20A2FD:    STZ $0210               ; $20:A2FD: 9C 10 02    ; \ clear layer 1 x pos
CODE_20A300:    STZ $0211               ; $20:A300: 9C 11 02    ; /
CODE_20A303:    STZ $13                     ; $20:A303: 64 13       ;
CODE_20A305:    STZ $0216               ; $20:A305: 9C 16 02    ; \ clear layer 1 y pos
CODE_20A308:    STZ $0217               ; $20:A308: 9C 17 02    ; /
CODE_20A30B:    STZ $23                     ; $20:A30B: 64 23       ;
CODE_20A30D:    STZ $24                     ; $20:A30D: 64 24       ;
CODE_20A30F:    STZ $25                     ; $20:A30F: 64 25       ;
CODE_20A311:    LDA #$00                    ; $20:A311: A9 00       ;
CODE_20A313:    STA $7E3966                 ; $20:A313: 8F 66 39 7E ;
CODE_20A317:    STA $7E3965                 ; $20:A317: 8F 65 39 7E ;
CODE_20A31B:    STA $7E3964                 ; $20:A31B: 8F 64 39 7E ;
CODE_20A31F:    STZ $00                 ; $20:A31F: 64 00       ; \
CODE_20A321:    LDX #$05                ; $20:A321: A2 05       ; |
CODE_20A323:    STX $01                 ; $20:A323: 86 01       ; |
CODE_20A325:    LDY #$9D                ; $20:A325: A0 9D       ; | 
CODE_20A327:    STA ($00),y             ; $20:A327: 91 00       ; | a really complicated way of saying
CODE_20A329:    DEY                     ; $20:A329: 88          ; | STZ $059D
CODE_20A32A:    BPL CODE_20A327         ; $20:A32A: 10 FB       ; /
CODE_20A32C:    LDA.w DATA_21A381       ; $20:A32C: AD 81 A3    ; \
CODE_20A32F:    STA $2B                 ; $20:A32F: 85 2B       ; |
CODE_20A331:    LDA.w DATA_21A381+1     ; $20:A331: AD 82 A3    ; |
CODE_20A334:    STA $2C                 ; $20:A334: 85 2C       ; |
CODE_20A336:    LDA.b #DATA_21A381>>16  ; $20:A336: A9 21       ; | point to level data
CODE_20A338:    STA $2D                 ; $20:A338: 85 2D       ; / [$2B] = $21A399
CODE_20A33A:    LDY $070A                   ; $20:A33A: AC 0A 07    ;
CODE_20A33D:    LDA.w DATA_21C975,y                 ; $20:A33D: B9 75 C9    ;
CODE_20A340:    STA $0739                   ; $20:A340: 8D 39 07    ;
CODE_20A343:    STZ $1CF2                   ; $20:A343: 9C F2 1C    ;
CODE_20A346:    JSL CODE_209C00         ; $20:A346: 22 00 9C 20 ; \ load the level
CODE_20A34A:    JSR CODE_209683         ; $20:A34A: 20 83 96    ; /
CODE_20A34D:    LDA #$11                ; $20:A34D: A9 11       ; \ layer 1 and OBJ through main
CODE_20A34F:    STA $0208               ; $20:A34F: 8D 08 02    ; /
CODE_20A352:    LDA #$02                ; $20:A352: A9 02       ; \ layer 2 through sub
CODE_20A354:    STA $0209               ; $20:A354: 8D 09 02    ; /
CODE_20A357:    LDA #$02                ; $20:A357: A9 02       ; \ enable subscreen bg
CODE_20A359:    STA $0203               ; $20:A359: 8D 03 02    ; /
CODE_20A35C:    LDA #$20                ; $20:A35C: A9 20       ; \ color addition settings
CODE_20A35E:    STA $0204               ; $20:A35E: 8D 04 02    ; /
CODE_20A361:    JSL CODE_20AFC3         ; $20:A361: 22 C3 AF 20 ; upload sprite graphics
CODE_20A365:    LDA #$26                    ; $20:A365: A9 26       ;
CODE_20A367:    STA $0612                   ; $20:A367: 8D 12 06    ;
CODE_20A36A:    JSR CODE_209CC0         ; $20:A36A: 20 C0 9C    ; draw the level
CODE_20A36D:    JSL CODE_25F0A6             ; $20:A36D: 22 A6 F0 25 ;
CODE_20A371:    LDA #$00                    ; $20:A371: A9 00       ;
CODE_20A373:    STA $7E3955                 ; $20:A373: 8F 55 39 7E ;
CODE_20A377:    JSL CODE_29E29D             ; $20:A377: 22 9D E2 29 ;
CODE_20A37B:    LDA #$80                ; $20:A37B: A9 80       ; \ enable interrupts
CODE_20A37D:    STA $4200               ; $20:A37D: 8D 00 42    ; /
CODE_20A380:    LDA #$16                ; $20:A380: A9 16       ; \ play battle start music if round 1
CODE_20A382:    LDY $1F26               ; $20:A382: AC 26 1F    ; |
CODE_20A385:    BEQ CODE_20A389         ; $20:A385: F0 02       ; |
CODE_20A387:    LDA #$11                ; $20:A387: A9 11       ; | otherwise play the hammer bro intro
CODE_20A389:    STA $1202               ; $20:A389: 8D 02 12    ; /
CODE_20A38C:    JSR CODE_20801F         ; $20:A38C: 20 1F 80    ; \ * wait for vblank | battle mode main loop
CODE_20A38F:    JSL CODE_22E0A9         ; $20:A38F: 22 A9 E0 22 ; | * clear objects off screen
CODE_20A393:    JSL CODE_26CBB0         ; $20:A393: 22 B0 CB 26 ; | * run the game
CODE_20A397:    LDA $0014               ; $20:A397: AD 14 00    ; | * and keep running it until results should appear
CODE_20A39A:    BEQ CODE_20A38C         ; $20:A39A: F0 F0       ; / *
CODE_20A39C:    LDA $078C               ; $20:A39C: AD 8C 07    ; \ X = player who won the game
CODE_20A39F:    DEC A                   ; $20:A39F: 3A          ; | 0 = mario, 1 = luigi
CODE_20A3A0:    EOR #$01                ; $20:A3A0: 49 01       ; |
CODE_20A3A2:    TAX                     ; $20:A3A2: AA          ; /
CODE_20A3A3:    LDA #$01                ; $20:A3A3: A9 01       ; \ coin sound effect
CODE_20A3A5:    STA $1203               ; $20:A3A5: 8D 03 12    ; /
CODE_20A3A8:    INC $02DA,x                 ; $20:A3A8: FE DA 02    ;
CODE_20A3AB:    LDA $02DA,x                 ; $20:A3AB: BD DA 02    ;
CODE_20A3AE:    CMP #$05                    ; $20:A3AE: C9 05       ;
CODE_20A3B0:    BCC CODE_20A3BA             ; $20:A3B0: 90 08       ;
CODE_20A3B2:    INC $02DE,x                 ; $20:A3B2: FE DE 02    ;
CODE_20A3B5:    LDA #$05                ; $20:A3B5: A9 05       ; \ 1up sound effect
CODE_20A3B7:    STA $1203               ; $20:A3B7: 8D 03 12    ; /
CODE_20A3BA:    JSL CODE_25F1E1         ; $20:A3BA: 22 E1 F1 25 ; upload results screen tilemap
CODE_20A3BE:    JSL CODE_22E0A9         ; $20:A3BE: 22 A9 E0 22 ; clear OAM
CODE_20A3C2:    JSL CODE_25F956         ; $20:A3C2: 22 56 F9 25 ; \ * create barn door in effect | result screen transition loop
CODE_20A3C6:    JSR CODE_20801F         ; $20:A3C6: 20 1F 80    ; | * wait for vblank
CODE_20A3C9:    LDA $0014               ; $20:A3C9: AD 14 00    ; | *
CODE_20A3CC:    BNE CODE_20A3C2         ; $20:A3CC: D0 F4       ; / *
CODE_20A3CE:    REP #$20                ; $20:A3CE: C2 20       ; \ clear player scoreboards
CODE_20A3D0:    LDA #$4900              ; $20:A3D0: A9 00 49    ; |
CODE_20A3D3:    STA $001602             ; $20:A3D3: 8F 02 16 00 ; |
CODE_20A3D7:    LDA #$5400              ; $20:A3D7: A9 00 54    ; |
CODE_20A3DA:    STA $001610             ; $20:A3DA: 8F 10 16 00 ; |
CODE_20A3DE:    LDA #$0900              ; $20:A3DE: A9 00 09    ; |
CODE_20A3E1:    STA $001604             ; $20:A3E1: 8F 04 16 00 ; |
CODE_20A3E5:    STA $001612             ; $20:A3E5: 8F 12 16 00 ; |
CODE_20A3E9:    LDA #$182D              ; $20:A3E9: A9 2D 18    ; |
CODE_20A3EC:    STA $001606             ; $20:A3EC: 8F 06 16 00 ; |
CODE_20A3F0:    STA $001608             ; $20:A3F0: 8F 08 16 00 ; |
CODE_20A3F4:    STA $00160A             ; $20:A3F4: 8F 0A 16 00 ; |
CODE_20A3F8:    STA $00160C             ; $20:A3F8: 8F 0C 16 00 ; |
CODE_20A3FC:    STA $00160E             ; $20:A3FC: 8F 0E 16 00 ; |
CODE_20A400:    LDA #$1C2D              ; $20:A400: A9 2D 1C    ; |
CODE_20A403:    STA $001614             ; $20:A403: 8F 14 16 00 ; |
CODE_20A407:    STA $001616             ; $20:A407: 8F 16 16 00 ; |
CODE_20A40B:    STA $001618             ; $20:A40B: 8F 18 16 00 ; |
CODE_20A40F:    STA $00161A             ; $20:A40F: 8F 1A 16 00 ; |
CODE_20A413:    STA $00161C             ; $20:A413: 8F 1C 16 00 ; |
CODE_20A417:    LDA #$FFFF              ; $20:A417: A9 FF FF    ; |
CODE_20A41A:    STA $00161E             ; $20:A41A: 8F 1E 16 00 ; |
CODE_20A41E:    SEP #$20                ; $20:A41E: E2 20       ; /
CODE_20A420:    JSL CODE_26CC15         ; $20:A420: 22 15 CC 26 ; upload palettes
CODE_20A424:    INC $0211                   ; $20:A424: EE 11 02    ;
CODE_20A427:    INC $0014                   ; $20:A427: EE 14 00    ;
CODE_20A42A:    STZ $0356                   ; $20:A42A: 9C 56 03    ;
CODE_20A42D:    JSL CODE_25F384         ; $20:A42D: 22 84 F3 25 ; * results screen main loop
CODE_20A431:    LDA $7F300C             ; $20:A431: AF 0C 30 7F ; continue / quit?
CODE_20A435:    BEQ CODE_20A43E             ; $20:A435: F0 07       ;
CODE_20A437:    JSR CODE_20801F         ; $20:A437: 20 1F 80    ; wait for vblank
CODE_20A43A:    JML CODE_0080DE         ; $20:A43A: 5C DE 80 00 ; exit to SMAS title screen

CODE_20A43E:    JSR CODE_20801F         ; $20:A43E: 20 1F 80    ; \ * wait for vblank | result screen transition loop
CODE_20A441:    JSL CODE_25F9A1         ; $20:A441: 22 A1 F9 25 ; | * create barn door out effect
CODE_20A445:    LDA $0014               ; $20:A445: AD 14 00    ; | *
CODE_20A448:    BNE CODE_20A43E         ; $20:A448: D0 F4       ; / *
CODE_20A44A:    STZ $0075               ; $20:A44A: 9C 75 00    ; init game
CODE_20A44D:    STZ $192E               ; $20:A44D: 9C 2E 19    ; \ clear coin counts
CODE_20A450:    STZ $192F               ; $20:A450: 9C 2F 19    ; /
CODE_20A453:    JMP CODE_20A380         ; $20:A453: 4C 80 A3    ; next round

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

CODE_20A4B6:    LDA $28                     ; $20:A4B6: A5 28       ;
CODE_20A4B8:    ASL A                       ; $20:A4B8: 0A          ;
CODE_20A4B9:    TAX                         ; $20:A4B9: AA          ;
CODE_20A4BA:    LDA.l PNTR_20D301,x                 ; $20:A4BA: BF 01 D3 20 ;
CODE_20A4BE:    STA $36                     ; $20:A4BE: 85 36       ;
CODE_20A4C0:    LDA.l PNTR_20D301+1,x               ; $20:A4C0: BF 02 D3 20 ;
CODE_20A4C4:    STA $37                     ; $20:A4C4: 85 37       ;
CODE_20A4C6:    LDA #$20                    ; $20:A4C6: A9 20       ;
CODE_20A4C8:    STA $38                     ; $20:A4C8: 85 38       ;
CODE_20A4CA:    LDA #$01                    ; $20:A4CA: A9 01       ;
CODE_20A4CC:    STA $1C                     ; $20:A4CC: 85 1C       ;
CODE_20A4CE:    STZ $0154                   ; $20:A4CE: 9C 54 01    ;
CODE_20A4D1:    LDA $0154                   ; $20:A4D1: AD 54 01    ;
CODE_20A4D4:    BPL CODE_20A4D1             ; $20:A4D4: 10 FB       ;
CODE_20A4D6:    STZ $1C                     ; $20:A4D6: 64 1C       ;
CODE_20A4D8:    CLI                         ; $20:A4D8: 58          ;
CODE_20A4D9:    RTS                         ; $20:A4D9: 60          ;

CODE_20A4DA:    REP #$20                    ; $20:A4DA: C2 20       ;
CODE_20A4DC:    LDA #$C000                  ; $20:A4DC: A9 00 C0    ;
CODE_20A4DF:    STA $0D                     ; $20:A4DF: 85 0D       ;
CODE_20A4E1:    LDX #$37                    ; $20:A4E1: A2 37       ;
CODE_20A4E3:    STX $0F                     ; $20:A4E3: 86 0F       ;
CODE_20A4E5:    LDA #$2000                  ; $20:A4E5: A9 00 20    ;
CODE_20A4E8:    STA $0B                     ; $20:A4E8: 85 0B       ;
CODE_20A4EA:    JSR CODE_20AFF0             ; $20:A4EA: 20 F0 AF    ;
CODE_20A4ED:    LDA #$B000                  ; $20:A4ED: A9 00 B0    ;
CODE_20A4F0:    STA $0D                     ; $20:A4F0: 85 0D       ;
CODE_20A4F2:    LDX #$3A                    ; $20:A4F2: A2 3A       ;
CODE_20A4F4:    STX $0F                     ; $20:A4F4: 86 0F       ;
CODE_20A4F6:    LDA #$3000                  ; $20:A4F6: A9 00 30    ;
CODE_20A4F9:    STA $0B                     ; $20:A4F9: 85 0B       ;
CODE_20A4FB:    JSR CODE_20AFF0             ; $20:A4FB: 20 F0 AF    ;
CODE_20A4FE:    LDA #$B000                  ; $20:A4FE: A9 00 B0    ;
CODE_20A501:    STA $0D                     ; $20:A501: 85 0D       ;
CODE_20A503:    LDX #$3A                    ; $20:A503: A2 3A       ;
CODE_20A505:    STX $0F                     ; $20:A505: 86 0F       ;
CODE_20A507:    LDA #$0800                  ; $20:A507: A9 00 08    ;
CODE_20A50A:    STA $0B                     ; $20:A50A: 85 0B       ;
CODE_20A50C:    LDA #$3C00                  ; $20:A50C: A9 00 3C    ;
CODE_20A50F:    JSR CODE_20AFF0             ; $20:A50F: 20 F0 AF    ;
CODE_20A512:    LDA #$B000                  ; $20:A512: A9 00 B0    ;
CODE_20A515:    STA $0D                     ; $20:A515: 85 0D       ;
CODE_20A517:    LDX #$35                    ; $20:A517: A2 35       ;
CODE_20A519:    STX $0F                     ; $20:A519: 86 0F       ;
CODE_20A51B:    LDA #$1000                  ; $20:A51B: A9 00 10    ;
CODE_20A51E:    STA $0B                     ; $20:A51E: 85 0B       ;
CODE_20A520:    LDA #$4800                  ; $20:A520: A9 00 48    ;
CODE_20A523:    JSR CODE_20AFF0             ; $20:A523: 20 F0 AF    ;
CODE_20A526:    LDA #$C800                  ; $20:A526: A9 00 C8    ;
CODE_20A529:    STA $0D                     ; $20:A529: 85 0D       ;
CODE_20A52B:    LDX #$37                    ; $20:A52B: A2 37       ;
CODE_20A52D:    STX $0F                     ; $20:A52D: 86 0F       ;
CODE_20A52F:    LDA #$0800                  ; $20:A52F: A9 00 08    ;
CODE_20A532:    STA $0B                     ; $20:A532: 85 0B       ;
CODE_20A534:    LDA #$6400                  ; $20:A534: A9 00 64    ;
CODE_20A537:    JSR CODE_20B016             ; $20:A537: 20 16 B0    ;
CODE_20A53A:    LDA #$A000                  ; $20:A53A: A9 00 A0    ;
CODE_20A53D:    STA $0D                     ; $20:A53D: 85 0D       ;
CODE_20A53F:    LDX #$30                    ; $20:A53F: A2 30       ;
CODE_20A541:    STX $0F                     ; $20:A541: 86 0F       ;
CODE_20A543:    LDA #$0800                  ; $20:A543: A9 00 08    ;
CODE_20A546:    STA $0B                     ; $20:A546: 85 0B       ;
CODE_20A548:    LDA #$6800                  ; $20:A548: A9 00 68    ;
CODE_20A54B:    JSR CODE_20B016             ; $20:A54B: 20 16 B0    ;
CODE_20A54E:    LDA #$F800                  ; $20:A54E: A9 00 F8    ;
CODE_20A551:    STA $0D                     ; $20:A551: 85 0D       ;
CODE_20A553:    LDX #$37                    ; $20:A553: A2 37       ;
CODE_20A555:    STX $0F                     ; $20:A555: 86 0F       ;
CODE_20A557:    LDA #$0800                  ; $20:A557: A9 00 08    ;
CODE_20A55A:    STA $0B                     ; $20:A55A: 85 0B       ;
CODE_20A55C:    LDA #$6C00                  ; $20:A55C: A9 00 6C    ;
CODE_20A55F:    JSR CODE_20B016             ; $20:A55F: 20 16 B0    ;
CODE_20A562:    LDA #$F800                  ; $20:A562: A9 00 F8    ;
CODE_20A565:    STA $0D                     ; $20:A565: 85 0D       ;
CODE_20A567:    LDX #$35                    ; $20:A567: A2 35       ;
CODE_20A569:    STX $0F                     ; $20:A569: 86 0F       ;
CODE_20A56B:    LDA #$0800                  ; $20:A56B: A9 00 08    ;
CODE_20A56E:    STA $0B                     ; $20:A56E: 85 0B       ;
CODE_20A570:    LDA #$7000                  ; $20:A570: A9 00 70    ;
CODE_20A573:    JSR CODE_20B016             ; $20:A573: 20 16 B0    ;
CODE_20A576:    LDA #$F000                  ; $20:A576: A9 00 F0    ;
CODE_20A579:    STA $0D                     ; $20:A579: 85 0D       ;
CODE_20A57B:    LDX #$37                    ; $20:A57B: A2 37       ;
CODE_20A57D:    STX $0F                     ; $20:A57D: 86 0F       ;
CODE_20A57F:    LDA #$0800                  ; $20:A57F: A9 00 08    ;
CODE_20A582:    STA $0B                     ; $20:A582: 85 0B       ;
CODE_20A584:    LDA #$7800                  ; $20:A584: A9 00 78    ;
CODE_20A587:    JSR CODE_20B016             ; $20:A587: 20 16 B0    ;
CODE_20A58A:    SEP #$20                    ; $20:A58A: E2 20       ;
CODE_20A58C:    RTS                         ; $20:A58C: 60          ;

CODE_20A58D:    LDA #$8000                      ; $20:A58D: A9 00 80    ;
CODE_20A590:    STA $0D                 ; $20:A590: 85 0D       ;
CODE_20A592:    LDX #$39                    ; $20:A592: A2 39       ;
CODE_20A594:    STX $0F                     ; $20:A594: 86 0F       ;
CODE_20A596:    LDA #$4000                  ; $20:A596: A9 00       ;
CODE_20A599:    STA $0B                     ; $20:A599: 85 0B       ;
CODE_20A59B:    JSR CODE_20B013             ; $20:A59B: 20 13 B0    ;
CODE_20A59E:    BRL CODE_20AEDC             ; $20:A59E: 82 3B 09    ;

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

CODE_20AC81:    PHB                         ; $20:AC81: 8B          ;
CODE_20AC82:    PHK                         ; $20:AC82: 4B          ;
CODE_20AC83:    PLB                         ; $20:AC83: AB          ;
CODE_20AC84:    REP #$20                    ; $20:AC84: C2 20       ;
CODE_20AC86:    LDY $1EBF                   ; $20:AC86: AC BF 1E    ;
CODE_20AC89:    STY $00                     ; $20:AC89: 84 00       ;
CODE_20AC8B:    LDA DATA_20A601,y                   ; $20:AC8B: B9 01 A6    ;
CODE_20AC8E:    AND #$00FF                  ; $20:AC8E: 29 FF 00    ;
CODE_20AC91:    TAX                         ; $20:AC91: AA          ;
CODE_20AC92:    TYA                         ; $20:AC92: 98          ;
CODE_20AC93:    AND #$00FF                  ; $20:AC93: 29 FF 00    ;
CODE_20AC96:    ASL A                       ; $20:AC96: 0A          ;
CODE_20AC97:    TAY                         ; $20:AC97: A8          ;
CODE_20AC98:    LDA DATA_20A5A1,y                   ; $20:AC98: B9 A1 A5    ;
CODE_20AC9B:    STA $0D                     ; $20:AC9B: 85 0D       ;
CODE_20AC9D:    STX $0F                     ; $20:AC9D: 86 0F       ;
CODE_20AC9F:    LDA #$1000                  ; $20:AC9F: A9 00 10    ;
CODE_20ACA2:    STA $0B                     ; $20:ACA2: 85 0B       ;
CODE_20ACA4:    LDA #$2000                  ; $20:ACA4: A9 00 20    ;
CODE_20ACA7:    JSR CODE_20AFF0             ; $20:ACA7: 20 F0 AF    ;
CODE_20ACAA:    LDX $00                     ; $20:ACAA: A6 00       ;
CODE_20ACAC:    CPX #$0F                    ; $20:ACAC: E0 0F       ;
CODE_20ACAE:    BNE CODE_20ACC7             ; $20:ACAE: D0 17       ;
CODE_20ACB0:    LDX $0726                   ; $20:ACB0: AE 26 07    ;
CODE_20ACB3:    BEQ CODE_20ACC7             ; $20:ACB3: F0 12       ;
CODE_20ACB5:    STZ $0D                     ; $20:ACB5: 64 0D       ;
CODE_20ACB7:    LDA #$3280                  ; $20:ACB7: A9 80 32    ;
CODE_20ACBA:    STA $0E                     ; $20:ACBA: 85 0E       ;
CODE_20ACBC:    LDA #$0800                  ; $20:ACBC: A9 00 08    ;
CODE_20ACBF:    STA $0B                     ; $20:ACBF: 85 0B       ;
CODE_20ACC1:    LDA #$2400                  ; $20:ACC1: A9 00 24    ;
CODE_20ACC4:    JSR CODE_20AFF0             ; $20:ACC4: 20 F0 AF    ;
CODE_20ACC7:    LDA $0567                   ; $20:ACC7: AD 67 05    ;
CODE_20ACCA:    AND #$00FF                  ; $20:ACCA: 29 FF 00    ;
CODE_20ACCD:    BEQ CODE_20ACDA             ; $20:ACCD: F0 0B       ;
CODE_20ACCF:    LDY #$33                    ; $20:ACCF: A0 33       ;
CODE_20ACD1:    STY $0F                     ; $20:ACD1: 84 0F       ;
CODE_20ACD3:    LDA #$F000                  ; $20:ACD3: A9 00 F0    ;
CODE_20ACD6:    STA $0D                     ; $20:ACD6: 85 0D       ;
CODE_20ACD8:    BRA CODE_20ACE7             ; $20:ACD8: 80 0D       ;

CODE_20ACDA:    LDA DATA_20A631,y                   ; $20:ACDA: B9 31 A6    ;
CODE_20ACDD:    STA $0D                     ; $20:ACDD: 85 0D       ;
CODE_20ACDF:    LDY $00                     ; $20:ACDF: A4 00       ;
CODE_20ACE1:    LDA DATA_20A691,y                   ; $20:ACE1: B9 91 A6    ;
CODE_20ACE4:    TAX                         ; $20:ACE4: AA          ;
CODE_20ACE5:    STX $0F                     ; $20:ACE5: 86 0F       ;
CODE_20ACE7:    LDA #$1000                  ; $20:ACE7: A9 00 10    ;
CODE_20ACEA:    STA $0B                     ; $20:ACEA: 85 0B       ;
CODE_20ACEC:    LDA #$2800                  ; $20:ACEC: A9 00 28    ;
CODE_20ACEF:    JSR CODE_20AFF0             ; $20:ACEF: 20 F0 AF    ;
CODE_20ACF2:    LDY $1EBF                   ; $20:ACF2: AC BF 1E    ;
CODE_20ACF5:    LDA DATA_20A721,y                   ; $20:ACF5: B9 21 A7    ;
CODE_20ACF8:    AND #$00FF                  ; $20:ACF8: 29 FF 00    ;
CODE_20ACFB:    TAX                         ; $20:ACFB: AA          ;
CODE_20ACFC:    TYA                         ; $20:ACFC: 98          ;
CODE_20ACFD:    AND #$00FF                  ; $20:ACFD: 29 FF 00    ;
CODE_20AD00:    ASL A                       ; $20:AD00: 0A          ;
CODE_20AD01:    TAY                         ; $20:AD01: A8          ;
CODE_20AD02:    LDA DATA_20A6C1,y                   ; $20:AD02: B9 C1 A6    ;
CODE_20AD05:    STA $0D                     ; $20:AD05: 85 0D       ;
CODE_20AD07:    STX $0F                     ; $20:AD07: 86 0F       ;
CODE_20AD09:    LDA #$0800                  ; $20:AD09: A9 00 08    ;
CODE_20AD0C:    STA $0B                     ; $20:AD0C: 85 0B       ;
CODE_20AD0E:    LDA #$3000                  ; $20:AD0E: A9 00 30    ;
CODE_20AD11:    JSR CODE_20AFF0             ; $20:AD11: 20 F0 AF    ;
CODE_20AD14:    STZ $0D                     ; $20:AD14: 64 0D       ;
CODE_20AD16:    LDA $0350                   ; $20:AD16: AD 50 03    ;
CODE_20AD19:    AND #$00FF                  ; $20:AD19: 29 FF 00    ;
CODE_20AD1C:    ASL A                       ; $20:AD1C: 0A          ;
CODE_20AD1D:    TAY                         ; $20:AD1D: A8          ;
CODE_20AD1E:    LDA DATA_20A751,y                   ; $20:AD1E: B9 51 A7    ;
CODE_20AD21:    STA $0E                     ; $20:AD21: 85 0E       ;
CODE_20AD23:    LDA $02BF                   ; $20:AD23: AD BF 02    ;
CODE_20AD26:    AND #$00FF                  ; $20:AD26: 29 FF 00    ;
CODE_20AD29:    CMP #$0006                  ; $20:AD29: C9 06 00    ;
CODE_20AD2C:    BNE CODE_20AD33             ; $20:AD2C: D0 05       ;
CODE_20AD2E:    LDA #$3AC0                  ; $20:AD2E: A9 C0 3A    ;
CODE_20AD31:    STA $0E                     ; $20:AD31: 85 0E       ;
CODE_20AD33:    LDA #$0800                  ; $20:AD33: A9 00 08    ;
CODE_20AD36:    STA $0B                     ; $20:AD36: 85 0B       ;
CODE_20AD38:    LDA #$3400                  ; $20:AD38: A9 00 34    ;
CODE_20AD3B:    JSR CODE_20AFF0             ; $20:AD3B: 20 F0 AF    ;
CODE_20AD3E:    STZ $0D                     ; $20:AD3E: 64 0D       ;
CODE_20AD40:    LDA $0350                   ; $20:AD40: AD 50 03    ;
CODE_20AD43:    AND #$00FF                  ; $20:AD43: 29 FF 00    ;
CODE_20AD46:    ASL A                       ; $20:AD46: 0A          ;
CODE_20AD47:    TAY                         ; $20:AD47: A8          ;
CODE_20AD48:    LDA DATA_20A79D,y                   ; $20:AD48: B9 9D A7    ;
CODE_20AD4B:    STA $0E                     ; $20:AD4B: 85 0E       ;
CODE_20AD4D:    LDA $02BF                   ; $20:AD4D: AD BF 02    ;
CODE_20AD50:    AND #$00FF                  ; $20:AD50: 29 FF 00    ;
CODE_20AD53:    CMP #$0006                  ; $20:AD53: C9 06 00    ;
CODE_20AD56:    BNE CODE_20AD5D             ; $20:AD56: D0 05       ;
CODE_20AD58:    LDA #$3AC8                  ; $20:AD58: A9 C8 3A    ;
CODE_20AD5B:    STA $0E                     ; $20:AD5B: 85 0E       ;
CODE_20AD5D:    LDA #$0800                  ; $20:AD5D: A9 00 08    ;
CODE_20AD60:    STA $0B                     ; $20:AD60: 85 0B       ;
CODE_20AD62:    LDA #$3800                  ; $20:AD62: A9 00 38    ;
CODE_20AD65:    JSR CODE_20AFF0             ; $20:AD65: 20 F0 AF    ;
CODE_20AD68:    LDY $1EBF                   ; $20:AD68: AC BF 1E    ;
CODE_20AD6B:    LDA DATA_20A849,y                   ; $20:AD6B: B9 49 A8    ;
CODE_20AD6E:    AND #$00FF                  ; $20:AD6E: 29 FF 00    ;
CODE_20AD71:    TAX                         ; $20:AD71: AA          ;
CODE_20AD72:    TYA                         ; $20:AD72: 98          ;
CODE_20AD73:    AND #$00FF                  ; $20:AD73: 29 FF 00    ;
CODE_20AD76:    ASL A                       ; $20:AD76: 0A          ;
CODE_20AD77:    TAY                         ; $20:AD77: A8          ;
CODE_20AD78:    LDA DATA_20A7E9,y                   ; $20:AD78: B9 E9 A7    ;
CODE_20AD7B:    STA $0D                     ; $20:AD7B: 85 0D       ;
CODE_20AD7D:    STX $0F                     ; $20:AD7D: 86 0F       ;
CODE_20AD7F:    LDA #$0800                  ; $20:AD7F: A9 00 08    ;
CODE_20AD82:    STA $0B                     ; $20:AD82: 85 0B       ;
CODE_20AD84:    LDA #$3C00                  ; $20:AD84: A9 00 3C    ;
CODE_20AD87:    JSR CODE_20AFF0             ; $20:AD87: 20 F0 AF    ;
CODE_20AD8A:    LDY $1EBF                   ; $20:AD8A: AC BF 1E    ;
CODE_20AD8D:    LDA DATA_20A8D9,y                   ; $20:AD8D: B9 D9 A8    ;
CODE_20AD90:    AND #$00FF                  ; $20:AD90: 29 FF 00    ;
CODE_20AD93:    TAX                         ; $20:AD93: AA          ;
CODE_20AD94:    TYA                         ; $20:AD94: 98          ;
CODE_20AD95:    AND #$00FF                  ; $20:AD95: 29 FF 00    ;
CODE_20AD98:    ASL A                       ; $20:AD98: 0A          ;
CODE_20AD99:    TAY                         ; $20:AD99: A8          ;
CODE_20AD9A:    LDA DATA_20A879,y                   ; $20:AD9A: B9 79 A8    ;
CODE_20AD9D:    STA $0D                     ; $20:AD9D: 85 0D       ;
CODE_20AD9F:    STX $0F                     ; $20:AD9F: 86 0F       ;
CODE_20ADA1:    LDA #$0800                  ; $20:ADA1: A9 00 08    ;
CODE_20ADA4:    STA $0B                     ; $20:ADA4: 85 0B       ;
CODE_20ADA6:    LDA #$4000                  ; $20:ADA6: A9 00 40    ;
CODE_20ADA9:    JSR CODE_20AFF0             ; $20:ADA9: 20 F0 AF    ;
CODE_20ADAC:    LDA #$B800                  ; $20:ADAC: A9 00 B8    ;
CODE_20ADAF:    STA $0D                     ; $20:ADAF: 85 0D       ;
CODE_20ADB1:    LDX #$32                    ; $20:ADB1: A2 32       ;
CODE_20ADB3:    STX $0F                     ; $20:ADB3: 86 0F       ;
CODE_20ADB5:    LDA #$0800                  ; $20:ADB5: A9 00 08    ;
CODE_20ADB8:    STA $0B                     ; $20:ADB8: 85 0B       ;
CODE_20ADBA:    LDA #$4400                  ; $20:ADBA: A9 00 44    ;
CODE_20ADBD:    JSR CODE_20AFF0             ; $20:ADBD: 20 F0 AF    ;
CODE_20ADC0:    LDY $1EBF                   ; $20:ADC0: AC BF 1E    ;
CODE_20ADC3:    CPY #$16                    ; $20:ADC3: C0 16       ;
CODE_20ADC5:    BNE CODE_20ADCA             ; $20:ADC5: D0 03       ;
CODE_20ADC7:    BRL CODE_20A58D             ; $20:ADC7: 82 C3 F7    ;
CODE_20ADCA:    LDA #$B000                  ; $20:ADCA: A9 00 B0    ;
CODE_20ADCD:    STA $0D                     ; $20:ADCD: 85 0D       ;
CODE_20ADCF:    LDX #$3F                    ; $20:ADCF: A2 3F       ;
CODE_20ADD1:    STX $0F                     ; $20:ADD1: 86 0F       ;
CODE_20ADD3:    LDA #$0800                  ; $20:ADD3: A9 00 08    ;
CODE_20ADD6:    STA $0B                     ; $20:ADD6: 85 0B       ;
CODE_20ADD8:    JSR CODE_20B013             ; $20:ADD8: 20 13 B0    ;
CODE_20ADDB:    LDY $1EBF                   ; $20:ADDB: AC BF 1E    ;
CODE_20ADDE:    LDA DATA_20A969,y                   ; $20:ADDE: B9 69 A9    ;
CODE_20ADE1:    AND #$00FF                  ; $20:ADE1: 29 FF 00    ;
CODE_20ADE4:    TAX                         ; $20:ADE4: AA          ;
CODE_20ADE5:    TYA                         ; $20:ADE5: 98          ;
CODE_20ADE6:    AND #$00FF                  ; $20:ADE6: 29 FF 00    ;
CODE_20ADE9:    ASL A                       ; $20:ADE9: 0A          ;
CODE_20ADEA:    TAY                         ; $20:ADEA: A8          ;
CODE_20ADEB:    LDA DATA_20A909,y                   ; $20:ADEB: B9 09 A9    ;
CODE_20ADEE:    STA $0D                     ; $20:ADEE: 85 0D       ;
CODE_20ADF0:    STX $0F                     ; $20:ADF0: 86 0F       ;
CODE_20ADF2:    LDA #$0800                  ; $20:ADF2: A9 00 08    ;
CODE_20ADF5:    STA $0B                     ; $20:ADF5: 85 0B       ;
CODE_20ADF7:    LDA #$6400                  ; $20:ADF7: A9 00 64    ;
CODE_20ADFA:    JSR CODE_20B016             ; $20:ADFA: 20 16 B0    ;
CODE_20ADFD:    LDY $1EBF                   ; $20:ADFD: AC BF 1E    ;
CODE_20AE00:    LDA DATA_20A9F9,y                   ; $20:AE00: B9 F9 A9    ;
CODE_20AE03:    AND #$00FF                  ; $20:AE03: 29 FF 00    ;
CODE_20AE06:    TAX                         ; $20:AE06: AA          ;
CODE_20AE07:    TYA                         ; $20:AE07: 98          ;
CODE_20AE08:    AND #$00FF                  ; $20:AE08: 29 FF 00    ;
CODE_20AE0B:    ASL A                       ; $20:AE0B: 0A          ;
CODE_20AE0C:    TAY                         ; $20:AE0C: A8          ;
CODE_20AE0D:    LDA DATA_20A999,y                   ; $20:AE0D: B9 99 A9    ;
CODE_20AE10:    STA $0D                     ; $20:AE10: 85 0D       ;
CODE_20AE12:    STX $0F                     ; $20:AE12: 86 0F       ;
CODE_20AE14:    LDA #$0800                  ; $20:AE14: A9 00 08    ;
CODE_20AE17:    STA $0B                     ; $20:AE17: 85 0B       ;
CODE_20AE19:    LDA #$6800                  ; $20:AE19: A9 00 68    ;
CODE_20AE1C:    JSR CODE_20B016             ; $20:AE1C: 20 16 B0    ;
CODE_20AE1F:    LDY $1EBF                   ; $20:AE1F: AC BF 1E    ;
CODE_20AE22:    LDA DATA_20AA89,y                   ; $20:AE22: B9 89 AA    ;
CODE_20AE25:    AND #$00FF                  ; $20:AE25: 29 FF 00    ;
CODE_20AE28:    TAX                         ; $20:AE28: AA          ;
CODE_20AE29:    TYA                         ; $20:AE29: 98          ;
CODE_20AE2A:    AND #$00FF                  ; $20:AE2A: 29 FF 00    ;
CODE_20AE2D:    ASL A                       ; $20:AE2D: 0A          ;
CODE_20AE2E:    TAY                         ; $20:AE2E: A8          ;
CODE_20AE2F:    LDA DATA_20AA29,y                   ; $20:AE2F: B9 29 AA    ;
CODE_20AE32:    STA $0D                     ; $20:AE32: 85 0D       ;
CODE_20AE34:    STX $0F                     ; $20:AE34: 86 0F       ;
CODE_20AE36:    LDA #$0800                  ; $20:AE36: A9 00 08    ;
CODE_20AE39:    STA $0B                     ; $20:AE39: 85 0B       ;
CODE_20AE3B:    LDA #$6C00                  ; $20:AE3B: A9 00 6C    ;
CODE_20AE3E:    JSR CODE_20B016             ; $20:AE3E: 20 16 B0    ;
CODE_20AE41:    LDY $1EBF                   ; $20:AE41: AC BF 1E    ;
CODE_20AE44:    LDA DATA_20AB19,y                   ; $20:AE44: B9 19 AB    ;
CODE_20AE47:    AND #$00FF                  ; $20:AE47: 29 FF 00    ;
CODE_20AE4A:    TAX                         ; $20:AE4A: AA          ;
CODE_20AE4B:    TYA                         ; $20:AE4B: 98          ;
CODE_20AE4C:    AND #$00FF                  ; $20:AE4C: 29 FF 00    ;
CODE_20AE4F:    ASL A                       ; $20:AE4F: 0A          ;
CODE_20AE50:    TAY                         ; $20:AE50: A8          ;
CODE_20AE51:    LDA DATA_20AAB9,y                   ; $20:AE51: B9 B9 AA    ;
CODE_20AE54:    STA $0D                     ; $20:AE54: 85 0D       ;
CODE_20AE56:    STX $0F                     ; $20:AE56: 86 0F       ;
CODE_20AE58:    LDA #$0800                  ; $20:AE58: A9 00 08    ;
CODE_20AE5B:    STA $0B                     ; $20:AE5B: 85 0B       ;
CODE_20AE5D:    LDA #$7000                  ; $20:AE5D: A9 00 70    ;
CODE_20AE60:    JSR CODE_20B016             ; $20:AE60: 20 16 B0    ;
CODE_20AE63:    LDY $1EBF                   ; $20:AE63: AC BF 1E    ;
CODE_20AE66:    CPY #$0A                    ; $20:AE66: C0 0A       ;
CODE_20AE68:    BNE CODE_20AE87             ; $20:AE68: D0 1D       ;
CODE_20AE6A:    LDA $0727                   ; $20:AE6A: AD 27 07    ;
CODE_20AE6D:    AND #$00FF                  ; $20:AE6D: 29 FF 00    ;
CODE_20AE70:    TAY                         ; $20:AE70: A8          ;
CODE_20AE71:    LDA.w DATA_21AC69,y                 ; $20:AE71: B9 69 AC    ;
CODE_20AE74:    AND #$00FF                  ; $20:AE74: 29 FF 00    ;
CODE_20AE77:    TAX                         ; $20:AE77: AA          ;
CODE_20AE78:    TYA                         ; $20:AE78: 98          ;
CODE_20AE79:    AND #$00FF                  ; $20:AE79: 29 FF 00    ;
CODE_20AE7C:    ASL A                       ; $20:AE7C: 0A          ;
CODE_20AE7D:    TAY                         ; $20:AE7D: A8          ;
CODE_20AE7E:    LDA DATA_20AC71,y                   ; $20:AE7E: B9 71 AC    ;
CODE_20AE81:    STA $0D                     ; $20:AE81: 85 0D       ;
CODE_20AE83:    STX $0F                     ; $20:AE83: 86 0F       ;
CODE_20AE85:    BRA CODE_20AE9B             ; $20:AE85: 80 14       ;

CODE_20AE87:    LDA DATA_20ABA9,y                   ; $20:AE87: B9 A9 AB    ;
CODE_20AE8A:    AND #$00FF                  ; $20:AE8A: 29 FF 00    ;
CODE_20AE8D:    TAX                         ; $20:AE8D: AA          ;
CODE_20AE8E:    TYA                         ; $20:AE8E: 98          ;
CODE_20AE8F:    AND #$00FF                  ; $20:AE8F: 29 FF 00    ;
CODE_20AE92:    ASL A                       ; $20:AE92: 0A          ;
CODE_20AE93:    TAY                         ; $20:AE93: A8          ;
CODE_20AE94:    LDA DATA_20AB49,y                   ; $20:AE94: B9 49 AB    ;
CODE_20AE97:    STA $0D                     ; $20:AE97: 85 0D       ;
CODE_20AE99:    STX $0F                     ; $20:AE99: 86 0F       ;
CODE_20AE9B:    LDA #$0800                  ; $20:AE9B: A9 00 08    ;
CODE_20AE9E:    STA $0B                     ; $20:AE9E: 85 0B       ;
CODE_20AEA0:    LDA #$7400                  ; $20:AEA0: A9 00 74    ;
CODE_20AEA3:    JSR CODE_20B016             ; $20:AEA3: 20 16 B0    ;
CODE_20AEA6:    LDY $1EBF                   ; $20:AEA6: AC BF 1E    ;
CODE_20AEA9:    LDA DATA_20AC39,y                   ; $20:AEA9: B9 39 AC    ;
CODE_20AEAC:    AND #$00FF                  ; $20:AEAC: 29 FF 00    ;
CODE_20AEAF:    TAX                         ; $20:AEAF: AA          ;
CODE_20AEB0:    TYA                         ; $20:AEB0: 98          ;
CODE_20AEB1:    AND #$00FF                  ; $20:AEB1: 29 FF 00    ;
CODE_20AEB4:    ASL A                       ; $20:AEB4: 0A          ;
CODE_20AEB5:    TAY                         ; $20:AEB5: A8          ;
CODE_20AEB6:    LDA DATA_20ABD9,y                   ; $20:AEB6: B9 D9 AB    ;
CODE_20AEB9:    STA $0D                     ; $20:AEB9: 85 0D       ;
CODE_20AEBB:    STX $0F                     ; $20:AEBB: 86 0F       ;
CODE_20AEBD:    LDA #$0800                  ; $20:AEBD: A9 00 08    ;
CODE_20AEC0:    STA $0B                     ; $20:AEC0: 85 0B       ;
CODE_20AEC2:    LDA #$7800                  ; $20:AEC2: A9 00 78    ;
CODE_20AEC5:    JSR CODE_20B016             ; $20:AEC5: 20 16 B0    ;
CODE_20AEC8:    LDA #$B800                  ; $20:AEC8: A9 00 B8    ;
CODE_20AECB:    STA $0D                     ; $20:AECB: 85 0D       ;
CODE_20AECD:    LDX #$3F                    ; $20:AECD: A2 3F       ;
CODE_20AECF:    STX $0F                     ; $20:AECF: 86 0F       ;
CODE_20AED1:    LDA #$0800                  ; $20:AED1: A9 00 08    ;
CODE_20AED4:    STA $0B                     ; $20:AED4: 85 0B       ;
CODE_20AED6:    LDA #$7C00                  ; $20:AED6: A9 00 7C    ;
CODE_20AED9:    JSR CODE_20B016             ; $20:AED9: 20 16 B0    ;
CODE_20AEDC:    SEP #$20                    ; $20:AEDC: E2 20       ;
CODE_20AEDE:    LDA $02BF                   ; $20:AEDE: AD BF 02    ;
CODE_20AEE1:    CMP #$02                    ; $20:AEE1: C9 02       ;
CODE_20AEE3:    BEQ CODE_20AF14             ; $20:AEE3: F0 2F       ;
CODE_20AEE5:    CMP #$05                    ; $20:AEE5: C9 05       ;
CODE_20AEE7:    BEQ CODE_20AF14             ; $20:AEE7: F0 2B       ;
CODE_20AEE9:    CMP #$07                    ; $20:AEE9: C9 07       ;
CODE_20AEEB:    BEQ CODE_20AF14             ; $20:AEEB: F0 27       ;
CODE_20AEED:    CMP #$08                    ; $20:AEED: C9 08       ;
CODE_20AEEF:    BEQ CODE_20AF14             ; $20:AEEF: F0 23       ;
CODE_20AEF1:    CMP #$09                    ; $20:AEF1: C9 09       ;
CODE_20AEF3:    BEQ CODE_20AF27             ; $20:AEF3: F0 32       ;
CODE_20AEF5:    CMP #$0A                    ; $20:AEF5: C9 0A       ;
CODE_20AEF7:    BEQ CODE_20AF3A             ; $20:AEF7: F0 41       ;
CODE_20AEF9:    CMP #$0B                    ; $20:AEF9: C9 0B       ;
CODE_20AEFB:    BEQ CODE_20AF27             ; $20:AEFB: F0 2A       ;
CODE_20AEFD:    CMP #$0C                    ; $20:AEFD: C9 0C       ;
CODE_20AEFF:    BEQ CODE_20AF14             ; $20:AEFF: F0 13       ;
CODE_20AF01:    CMP #$0E                    ; $20:AF01: C9 0E       ;
CODE_20AF03:    BEQ CODE_20AF14             ; $20:AF03: F0 0F       ;
CODE_20AF05:    CMP #$0F                    ; $20:AF05: C9 0F       ;
CODE_20AF07:    BEQ CODE_20AF27             ; $20:AF07: F0 1E       ;
CODE_20AF09:    CMP #$03                    ; $20:AF09: C9 03       ;
CODE_20AF0B:    BEQ CODE_20AF4D             ; $20:AF0B: F0 40       ;
CODE_20AF0D:    CMP #$04                    ; $20:AF0D: C9 04       ;
CODE_20AF0F:    BEQ CODE_20AF4D             ; $20:AF0F: F0 3C       ;
CODE_20AF11:    JMP CODE_20AF6D             ; $20:AF11: 4C 6D AF    ;

CODE_20AF14:    REP #$20                    ; $20:AF14: C2 20       ;
CODE_20AF16:    LDA #$5800                  ; $20:AF16: A9 00 58    ;
CODE_20AF19:    STA $2116                   ; $20:AF19: 8D 16 21    ;
CODE_20AF1C:    LDA #$0400                  ; $20:AF1C: A9 00 04    ;
CODE_20AF1F:    STA $4305                   ; $20:AF1F: 8D 05 43    ;
CODE_20AF22:    LDA #$A000                  ; $20:AF22: A9 00 A0    ;
CODE_20AF25:    BRA CODE_20AF5E             ; $20:AF25: 80 37       ;

CODE_20AF27:    REP #$20                    ; $20:AF27: C2 20       ;
CODE_20AF29:    LDA #$5800                  ; $20:AF29: A9 00 58    ;
CODE_20AF2C:    STA $2116                   ; $20:AF2C: 8D 16 21    ;
CODE_20AF2F:    LDA #$0400                  ; $20:AF2F: A9 00 04    ;
CODE_20AF32:    STA $4305                   ; $20:AF32: 8D 05 43    ;
CODE_20AF35:    LDA #$A400                  ; $20:AF35: A9 00 A4    ;
CODE_20AF38:    BRA CODE_20AF5E             ; $20:AF38: 80 24       ;

CODE_20AF3A:    REP #$20                    ; $20:AF3A: C2 20       ;
CODE_20AF3C:    LDA #$5800                  ; $20:AF3C: A9 00 58    ;
CODE_20AF3F:    STA $2116                   ; $20:AF3F: 8D 16 21    ;
CODE_20AF42:    LDA #$0400                  ; $20:AF42: A9 00 04    ;
CODE_20AF45:    STA $4305                   ; $20:AF45: 8D 05 43    ;
CODE_20AF48:    LDA #$A800                  ; $20:AF48: A9 00 A8    ;
CODE_20AF4B:    BRA CODE_20AF5E             ; $20:AF4B: 80 11       ;

CODE_20AF4D:    REP #$20                    ; $20:AF4D: C2 20       ;
CODE_20AF4F:    LDA #$5800                  ; $20:AF4F: A9 00 58    ;
CODE_20AF52:    STA $2116                   ; $20:AF52: 8D 16 21    ;
CODE_20AF55:    LDA #$0400                  ; $20:AF55: A9 00 04    ;
CODE_20AF58:    STA $4305                   ; $20:AF58: 8D 05 43    ;
CODE_20AF5B:    LDA.w #DATA_38AC00                  ; $20:AF5B: A9 00 AC    ;
CODE_20AF5E:    STA $4302                   ; $20:AF5E: 8D 02 43    ;
CODE_20AF61:    SEP #$20                    ; $20:AF61: E2 20       ;
CODE_20AF63:    LDA.b #DATA_38AC00>>16                      ; $20:AF63: A9 38       ;
CODE_20AF65:    STA $4304                   ; $20:AF65: 8D 04 43    ;
CODE_20AF68:    LDA #$01                    ; $20:AF68: A9 01       ;
CODE_20AF6A:    STA $420B                   ; $20:AF6A: 8D 0B 42    ;
CODE_20AF6D:    PLB                         ; $20:AF6D: AB          ;
CODE_20AF6E:    RTL                         ; $20:AF6E: 6B          ;

CODE_20AF6F:    REP #$20                    ; $20:AF6F: C2 20       ;
CODE_20AF71:    LDA #$C000                  ; $20:AF71: A9 00 C0    ;
CODE_20AF74:    STA $0D                     ; $20:AF74: 85 0D       ;
CODE_20AF76:    LDX #$32                    ; $20:AF76: A2 32       ;
CODE_20AF78:    STX $0F                     ; $20:AF78: 86 0F       ;
CODE_20AF7A:    LDA #$1000                  ; $20:AF7A: A9 00 10    ;
CODE_20AF7D:    STA $0B                     ; $20:AF7D: 85 0B       ;
CODE_20AF7F:    JSR CODE_20B013             ; $20:AF7F: 20 13 B0    ;
CODE_20AF82:    SEP #$20                    ; $20:AF82: E2 20       ;
CODE_20AF84:    RTL                         ; $20:AF84: 6B          ;

CODE_20AF85:    REP #$20                    ; $20:AF85: C2 20       ;
CODE_20AF87:    LDA #$8000                  ; $20:AF87: A9 00 80    ;
CODE_20AF8A:    STA $0D                     ; $20:AF8A: 85 0D       ;
CODE_20AF8C:    LDX #$3A                    ; $20:AF8C: A2 3A       ;
CODE_20AF8E:    STX $0F                     ; $20:AF8E: 86 0F       ;
CODE_20AF90:    LDA #$1000                  ; $20:AF90: A9 00 10    ;
CODE_20AF93:    STA $0B                     ; $20:AF93: 85 0B       ;
CODE_20AF95:    LDA #$3800                  ; $20:AF95: A9 00 38    ;
CODE_20AF98:    JSR CODE_20AFF0             ; $20:AF98: 20 F0 AF    ;
CODE_20AF9B:    LDA #$B400                  ; $20:AF9B: A9 00 B4    ;
CODE_20AF9E:    STA $0D                     ; $20:AF9E: 85 0D       ;
CODE_20AFA0:    LDX #$3F                    ; $20:AFA0: A2 3F       ;
CODE_20AFA2:    STX $0F                     ; $20:AFA2: 86 0F       ;
CODE_20AFA4:    LDA #$0400                  ; $20:AFA4: A9 00 04    ;
CODE_20AFA7:    STA $0B                     ; $20:AFA7: 85 0B       ;
CODE_20AFA9:    JSR CODE_20B013             ; $20:AFA9: 20 13 B0    ;
CODE_20AFAC:    LDA #$D400                  ; $20:AFAC: A9 00 D4    ;
CODE_20AFAF:    STA $0D                     ; $20:AFAF: 85 0D       ;
CODE_20AFB1:    LDX #$32                    ; $20:AFB1: A2 32       ;
CODE_20AFB3:    STX $0F                     ; $20:AFB3: 86 0F       ;
CODE_20AFB5:    LDA #$0C00                  ; $20:AFB5: A9 00 0C    ;
CODE_20AFB8:    STA $0B                     ; $20:AFB8: 85 0B       ;
CODE_20AFBA:    LDA #$6200                  ; $20:AFBA: A9 00 62    ;
CODE_20AFBD:    JSR CODE_20B016             ; $20:AFBD: 20 16 B0    ;
CODE_20AFC0:    SEP #$20                    ; $20:AFC0: E2 20       ;
CODE_20AFC2:    RTL                         ; $20:AFC2: 6B          ;

CODE_20AFC3:    REP #$20                    ; $20:AFC3: C2 20       ;
CODE_20AFC5:    LDA #$E000                  ; $20:AFC5: A9 00 E0    ;
CODE_20AFC8:    STA $0D                     ; $20:AFC8: 85 0D       ;
CODE_20AFCA:    LDX #$3F                    ; $20:AFCA: A2 3F       ;
CODE_20AFCC:    STX $0F                     ; $20:AFCC: 86 0F       ;
CODE_20AFCE:    LDA #$2000                  ; $20:AFCE: A9 00 20    ;
CODE_20AFD1:    STA $0B                     ; $20:AFD1: 85 0B       ;
CODE_20AFD3:    LDA #$6000                  ; $20:AFD3: A9 00 60    ;
CODE_20AFD6:    JSR CODE_20B016             ; $20:AFD6: 20 16 B0    ;
CODE_20AFD9:    LDA #$A000                  ; $20:AFD9: A9 00 A0    ;
CODE_20AFDC:    STA $0D                     ; $20:AFDC: 85 0D       ;
CODE_20AFDE:    LDX #$3D                    ; $20:AFDE: A2 3D       ;
CODE_20AFE0:    STX $0F                     ; $20:AFE0: 86 0F       ;
CODE_20AFE2:    LDA #$0800                  ; $20:AFE2: A9 00 08    ;
CODE_20AFE5:    STA $0B                     ; $20:AFE5: 85 0B       ;
CODE_20AFE7:    LDA #$7000                  ; $20:AFE7: A9 00 70    ;
CODE_20AFEA:    JSR CODE_20B016             ; $20:AFEA: 20 16 B0    ;
CODE_20AFED:    SEP #$20                    ; $20:AFED: E2 20       ;
CODE_20AFEF:    RTL                         ; $20:AFEF: 6B          ;

CODE_20AFF0:    LDX #$80                    ; $20:AFF0: A2 80       ;
CODE_20AFF2:    STX $2115                   ; $20:AFF2: 8E 15 21    ;
CODE_20AFF5:    STA $2116                   ; $20:AFF5: 8D 16 21    ;
CODE_20AFF8:    LDA #$01                    ; $20:AFF8: A9 01       ;
CODE_20AFFA:    CLC                         ; $20:AFFA: 18          ;
CODE_20AFFB:    STA $4300                   ; $20:AFFB: 8D 00 43    ;
CODE_20AFFE:    LDA $0D                     ; $20:AFFE: A5 0D       ;
CODE_20B000:    STA $4302                   ; $20:B000: 8D 02 43    ;
CODE_20B003:    LDX $0F                     ; $20:B003: A6 0F       ;
CODE_20B005:    STX $4304                   ; $20:B005: 8E 04 43    ;
CODE_20B008:    LDA $0B                     ; $20:B008: A5 0B       ;
CODE_20B00A:    STA $4305                   ; $20:B00A: 8D 05 43    ;
CODE_20B00D:    LDX #$01                    ; $20:B00D: A2 01       ;
CODE_20B00F:    STX $420B                   ; $20:B00F: 8E 0B 42    ;
CODE_20B012:    RTS                         ; $20:B012: 60          ;

CODE_20B013:    LDA #$00                    ; $20:B013: A9 00       ;
CODE_20B015:    RTS                         ; $20:B015: 60          ;

CODE_20B016:    LDX #$80                    ; $20:B016: A2 80       ;
CODE_20B018:    STX $2115                   ; $20:B018: 8E 15 21    ;
CODE_20B01B:    STA $2116                   ; $20:B01B: 8D 16 21    ;
CODE_20B01E:    LDA #$01                    ; $20:B01E: A9 01       ;
CODE_20B020:    CLC                         ; $20:B020: 18          ;
CODE_20B021:    STA $4300                   ; $20:B021: 8D 00 43    ;
CODE_20B024:    LDA $0D                     ; $20:B024: A5 0D       ;
CODE_20B026:    STA $4302                   ; $20:B026: 8D 02 43    ;
CODE_20B029:    LDX $0F                     ; $20:B029: A6 0F       ;
CODE_20B02B:    STX $4304                   ; $20:B02B: 8E 04 43    ;
CODE_20B02E:    LDA $0B                     ; $20:B02E: A5 0B       ;
CODE_20B030:    STA $4305                   ; $20:B030: 8D 05 43    ;
CODE_20B033:    LDX #$01                    ; $20:B033: A2 01       ;
CODE_20B035:    STX $420B                   ; $20:B035: 8E 0B 42    ;
CODE_20B038:    RTS                         ; $20:B038: 60          ;

CODE_20B039:    REP #$30                    ; $20:B039: C2 30       ;
CODE_20B03B:    LDX #$001E                  ; $20:B03B: A2 1E 00    ;
CODE_20B03E:    LDA #$0000                  ; $20:B03E: A9 00 00    ;
CODE_20B041:    STA $1300,x                 ; $20:B041: 9D 00 13    ;
CODE_20B044:    STA $1320,x                 ; $20:B044: 9D 20 13    ;
CODE_20B047:    STA $1340,x                 ; $20:B047: 9D 40 13    ;
CODE_20B04A:    STA $1360,x                 ; $20:B04A: 9D 60 13    ;
CODE_20B04D:    STA $1380,x                 ; $20:B04D: 9D 80 13    ;
CODE_20B050:    STA $13A0,x                 ; $20:B050: 9D A0 13    ;
CODE_20B053:    STA $13C0,x                 ; $20:B053: 9D C0 13    ;
CODE_20B056:    STA $13E0,x                 ; $20:B056: 9D E0 13    ;
CODE_20B059:    STA $1400,x                 ; $20:B059: 9D 00 14    ;
CODE_20B05C:    STA $1420,x                 ; $20:B05C: 9D 20 14    ;
CODE_20B05F:    STA $1440,x                 ; $20:B05F: 9D 40 14    ;
CODE_20B062:    STA $1460,x                 ; $20:B062: 9D 60 14    ;
CODE_20B065:    STA $1480,x                 ; $20:B065: 9D 80 14    ;
CODE_20B068:    STA $14A0,x                 ; $20:B068: 9D A0 14    ;
CODE_20B06B:    STA $14C0,x                 ; $20:B06B: 9D C0 14    ;
CODE_20B06E:    STA $14E0,x                 ; $20:B06E: 9D E0 14    ;
CODE_20B071:    DEX                         ; $20:B071: CA          ;
CODE_20B072:    DEX                         ; $20:B072: CA          ;
CODE_20B073:    BPL CODE_20B041             ; $20:B073: 10 CC       ;
CODE_20B075:    PHB                         ; $20:B075: 8B          ;
CODE_20B076:    LDX.w #DATA_3CA400                  ; $20:B076: A2 00 A4    ;
CODE_20B079:    LDY #$1300                  ; $20:B079: A0 00 13    ;
CODE_20B07C:    LDA #$007F                  ; $20:B07C: A9 7F 00    ;
CODE_20B07F:    MVN $00, DATA_3CA400>>16                    ; $20:B07F: 54 00 3C    ;
CODE_20B082:    PLB                         ; $20:B082: AB          ;
CODE_20B083:    LDA #$0000                  ; $20:B083: A9 00 00    ;
CODE_20B086:    STA $1300                   ; $20:B086: 8D 00 13    ;
CODE_20B089:    STA $1310                   ; $20:B089: 8D 10 13    ;
CODE_20B08C:    STA $133E                   ; $20:B08C: 8D 3E 13    ;
CODE_20B08F:    STA $135E                   ; $20:B08F: 8D 5E 13    ;
CODE_20B092:    SEP #$30                    ; $20:B092: E2 30       ;
CODE_20B094:    LDA #$01                    ; $20:B094: A9 01       ;
CODE_20B096:    STA $1500                   ; $20:B096: 8D 00 15    ;
CODE_20B099:    RTS                         ; $20:B099: 60          ;

CODE_20B09A:    REP #$30                    ; $20:B09A: C2 30       ;
CODE_20B09C:    LDX #$001E                  ; $20:B09C: A2 1E 00    ;
CODE_20B09F:    LDA #$0000                  ; $20:B09F: A9 00 00    ;
CODE_20B0A2:    STA $1300,x                 ; $20:B0A2: 9D 00 13    ;
CODE_20B0A5:    STA $1320,x                 ; $20:B0A5: 9D 20 13    ;
CODE_20B0A8:    STA $1340,x                 ; $20:B0A8: 9D 40 13    ;
CODE_20B0AB:    STA $1360,x                 ; $20:B0AB: 9D 60 13    ;
CODE_20B0AE:    STA $1380,x                 ; $20:B0AE: 9D 80 13    ;
CODE_20B0B1:    STA $13A0,x                 ; $20:B0B1: 9D A0 13    ;
CODE_20B0B4:    STA $13C0,x                 ; $20:B0B4: 9D C0 13    ;
CODE_20B0B7:    STA $13E0,x                 ; $20:B0B7: 9D E0 13    ;
CODE_20B0BA:    STA $1400,x                 ; $20:B0BA: 9D 00 14    ;
CODE_20B0BD:    STA $1420,x                 ; $20:B0BD: 9D 20 14    ;
CODE_20B0C0:    STA $1440,x                 ; $20:B0C0: 9D 40 14    ;
CODE_20B0C3:    STA $1460,x                 ; $20:B0C3: 9D 60 14    ;
CODE_20B0C6:    STA $1480,x                 ; $20:B0C6: 9D 80 14    ;
CODE_20B0C9:    STA $14A0,x                 ; $20:B0C9: 9D A0 14    ;
CODE_20B0CC:    STA $14C0,x                 ; $20:B0CC: 9D C0 14    ;
CODE_20B0CF:    STA $14E0,x                 ; $20:B0CF: 9D E0 14    ;
CODE_20B0D2:    DEX                         ; $20:B0D2: CA          ;
CODE_20B0D3:    DEX                         ; $20:B0D3: CA          ;
CODE_20B0D4:    BPL CODE_20B0A2             ; $20:B0D4: 10 CC       ;
CODE_20B0D6:    PHB                         ; $20:B0D6: 8B          ;
CODE_20B0D7:    LDX.w #DATA_3CAC00                  ; $20:B0D7: A2 00 AC    ;
CODE_20B0DA:    LDY #$1300                  ; $20:B0DA: A0 00 13    ;
CODE_20B0DD:    LDA #$001F                  ; $20:B0DD: A9 1F 00    ;
CODE_20B0E0:    MVN $00, DATA_3CAC00>>16                    ; $20:B0E0: 54 00 3C    ;
CODE_20B0E3:    PLB                         ; $20:B0E3: AB          ;
CODE_20B0E4:    LDA #$0000                  ; $20:B0E4: A9 00 00    ;
CODE_20B0E7:    STA $1300                   ; $20:B0E7: 8D 00 13    ;
CODE_20B0EA:    SEP #$30                    ; $20:B0EA: E2 30       ;
CODE_20B0EC:    LDA #$01                    ; $20:B0EC: A9 01       ;
CODE_20B0EE:    STA $1500                   ; $20:B0EE: 8D 00 15    ;
CODE_20B0F1:    RTS                         ; $20:B0F1: 60          ;

DATA_20B0F2:        db $02,$00,$01,$03,$04,$05

DATA_20B0F8:        db $03,$03,$06,$12,$11,$00
  
CODE_20B0FE:    LDA #$11                    ; $20:B0FE: A9 11       ;
CODE_20B100:    STA $0208                   ; $20:B100: 8D 08 02    ;
CODE_20B103:    LDA #$02                    ; $20:B103: A9 02       ;
CODE_20B105:    STA $0209                   ; $20:B105: 8D 09 02    ;
CODE_20B108:    STA $0203                   ; $20:B108: 8D 03 02    ;
CODE_20B10B:    LDA #$20                    ; $20:B10B: A9 20       ;
CODE_20B10D:    STA $0204                   ; $20:B10D: 8D 04 02    ;
CODE_20B110:    JSR CODE_20A4B6             ; $20:B110: 20 B6 A4    ;
CODE_20B113:    JSR CODE_20A4DA             ; $20:B113: 20 DA A4    ;
CODE_20B116:    JSL CODE_0086B5             ; $20:B116: 22 B5 86 00 ;
CODE_20B11A:    JSL CODE_22E0A9             ; $20:B11A: 22 A9 E0 22 ;
CODE_20B11E:    LDA #$5C                    ; $20:B11E: A9 5C       ;
CODE_20B120:    STA $00                     ; $20:B120: 85 00       ;
CODE_20B122:    STZ $01                     ; $20:B122: 64 01       ;
CODE_20B124:    JSR CODE_20FA0A             ; $20:B124: 20 0A FA    ;
CODE_20B127:    LDX #$F5                    ; $20:B127: A2 F5       ;
CODE_20B129:    STZ $00,x                   ; $20:B129: 74 00       ;
CODE_20B12B:    DEX                         ; $20:B12B: CA          ;
CODE_20B12C:    BNE CODE_20B129             ; $20:B12C: D0 FB       ;
CODE_20B12E:    LDX #$15                    ; $20:B12E: A2 15       ;
CODE_20B130:    STZ $0510,x                 ; $20:B130: 9E 10 05    ;
CODE_20B133:    DEX                         ; $20:B133: CA          ;
CODE_20B134:    BPL CODE_20B130             ; $20:B134: 10 FA       ;
CODE_20B136:    LDA #$04                    ; $20:B136: A9 04       ;
CODE_20B138:    STA $0736                   ; $20:B138: 8D 36 07    ;
CODE_20B13B:    STA $0737                   ; $20:B13B: 8D 37 07    ;
CODE_20B13E:    STZ $072B                   ; $20:B13E: 9C 2B 07    ;
CODE_20B141:    STZ $0726                   ; $20:B141: 9C 26 07    ;
CODE_20B144:    LDA $7FFC03                 ; $20:B144: AF 03 FC 7F ;
CODE_20B148:    BMI CODE_20B14E             ; $20:B148: 30 04       ;
CODE_20B14A:    DEC A                       ; $20:B14A: 3A          ;
CODE_20B14B:    STA $072B                   ; $20:B14B: 8D 2B 07    ;
CODE_20B14E:    LDA #$FF                    ; $20:B14E: A9 FF       ;
CODE_20B150:    STA $BE                     ; $20:B150: 85 BE       ;
CODE_20B152:    LDA #$A0                    ; $20:B152: A9 A0       ;
CODE_20B154:    STA $5B                     ; $20:B154: 85 5B       ;
CODE_20B156:    STA $5C                     ; $20:B156: 85 5C       ;
CODE_20B158:    LDA #$F0                    ; $20:B158: A9 F0       ;
CODE_20B15A:    STA $53                     ; $20:B15A: 85 53       ;
CODE_20B15C:    STZ $54                     ; $20:B15C: 64 54       ;
CODE_20B15E:    LDA #$01                    ; $20:B15E: A9 01       ;
CODE_20B160:    STA $8F                     ; $20:B160: 85 8F       ;
CODE_20B162:    STA $90                     ; $20:B162: 85 90       ;
CODE_20B164:    LDA #$88                    ; $20:B164: A9 88       ;
CODE_20B166:    STA $0782                   ; $20:B166: 8D 82 07    ;
CODE_20B169:    LDA #$00                    ; $20:B169: A9 00       ;
CODE_20B16B:    STA $7F0000                 ; $20:B16B: 8F 00 00 7F ;
CODE_20B16F:    STA $7F0001                 ; $20:B16F: 8F 01 00 7F ;
CODE_20B173:    LDA #$20                    ; $20:B173: A9 20       ;
CODE_20B175:    STA $0205                   ; $20:B175: 8D 05 02    ;
CODE_20B178:    ASL A                       ; $20:B178: 0A          ;
CODE_20B179:    STA $0206                   ; $20:B179: 8D 06 02    ;
CODE_20B17C:    ASL A                       ; $20:B17C: 0A          ;
CODE_20B17D:    STA $0207                   ; $20:B17D: 8D 07 02    ;
CODE_20B180:    JSR CODE_20B2EE             ; $20:B180: 20 EE B2    ;
CODE_20B183:    LDA #$1D                    ; $20:B183: A9 1D       ;
CODE_20B185:    ASL A                       ; $20:B185: 0A          ;
CODE_20B186:    TAX                         ; $20:B186: AA          ;
CODE_20B187:    LDA.l PNTR_20D301,x                 ; $20:B187: BF 01 D3 20 ;
CODE_20B18B:    STA $36                     ; $20:B18B: 85 36       ;
CODE_20B18D:    LDA.l PNTR_20D301+1,x               ; $20:B18D: BF 02 D3 20 ;
CODE_20B191:    STA $37                     ; $20:B191: 85 37       ;
CODE_20B193:    LDA #$20                    ; $20:B193: A9 20       ;
CODE_20B195:    STA $38                     ; $20:B195: 85 38       ;
CODE_20B197:    JSL CODE_29E8AB             ; $20:B197: 22 AB E8 29 ;
CODE_20B19B:    JSR CODE_20B328             ; $20:B19B: 20 28 B3    ;
CODE_20B19E:    JSR CODE_20B039             ; $20:B19E: 20 39 B0    ;
CODE_20B1A1:    JSL CODE_29CDE5             ; $20:B1A1: 22 E5 CD 29 ;
CODE_20B1A5:    LDA #$1E                    ; $20:B1A5: A9 1E       ;
CODE_20B1A7:    STA $28                     ; $20:B1A7: 85 28       ;
CODE_20B1A9:    LDA #$35                    ; $20:B1A9: A9 35       ;
CODE_20B1AB:    STA $B1                     ; $20:B1AB: 85 B1       ;
CODE_20B1AD:    JSR CODE_20A4B6             ; $20:B1AD: 20 B6 A4    ;
CODE_20B1B0:    INC $16                     ; $20:B1B0: E6 16       ;
CODE_20B1B2:    LDA $16                     ; $20:B1B2: A5 16       ;
CODE_20B1B4:    AND #$10                    ; $20:B1B4: 29 10       ;
CODE_20B1B6:    BNE CODE_20B1BD             ; $20:B1B6: D0 05       ;
CODE_20B1B8:    JSR CODE_20A4B6             ; $20:B1B8: 20 B6 A4    ;
CODE_20B1BB:    BRA CODE_20B1B0             ; $20:B1BB: 80 F3       ;

CODE_20B1BD:    LDA #$0F                    ; $20:B1BD: A9 0F       ;
CODE_20B1BF:    STA $16                     ; $20:B1BF: 85 16       ;
CODE_20B1C1:    LDA $F6                     ; $20:B1C1: A5 F6       ;
CODE_20B1C3:    ORA $F7                     ; $20:B1C3: 05 F7       ;
CODE_20B1C5:    AND #$10                    ; $20:B1C5: 29 10       ;
CODE_20B1C7:    BEQ CODE_20B1E4             ; $20:B1C7: F0 1B       ;
CODE_20B1C9:    LDA $701FF2                 ; $20:B1C9: AF F2 1F 70 ;
CODE_20B1CD:    BEQ CODE_20B1D3             ; $20:B1CD: F0 04       ;
CODE_20B1CF:    JML CODE_0080DE             ; $20:B1CF: 5C DE 80 00 ;

CODE_20B1D3:    LDA $AC                     ; $20:B1D3: A5 AC       ;
CODE_20B1D5:    CMP #$06                    ; $20:B1D5: C9 06       ;
CODE_20B1D7:    BEQ CODE_20B1DE             ; $20:B1D7: F0 05       ;
CODE_20B1D9:    LDA #$29                    ; $20:B1D9: A9 29       ;
CODE_20B1DB:    STA $1203                   ; $20:B1DB: 8D 03 12    ;
CODE_20B1DE:    LDA #$06                    ; $20:B1DE: A9 06       ;
CODE_20B1E0:    STA $AC                     ; $20:B1E0: 85 AC       ;
CODE_20B1E2:    BEQ CODE_20B200             ; $20:B1E2: F0 1C       ;
CODE_20B1E4:    LDA $F4                     ; $20:B1E4: A5 F4       ;
CODE_20B1E6:    ORA $F5                     ; $20:B1E6: 05 F5       ;
CODE_20B1E8:    AND #$40                    ; $20:B1E8: 29 40       ;
CODE_20B1EA:    BEQ CODE_20B1F0             ; $20:B1EA: F0 04       ;
CODE_20B1EC:    JML CODE_0080DE             ; $20:B1EC: 5C DE 80 00 ;

CODE_20B1F0:    LDA $F2                     ; $20:B1F0: A5 F2       ;
CODE_20B1F2:    ORA $F3                     ; $20:B1F2: 05 F3       ;
CODE_20B1F4:    AND #$40                    ; $20:B1F4: 29 40       ;
CODE_20B1F6:    BEQ CODE_20B1FC             ; $20:B1F6: F0 04       ;
CODE_20B1F8:    JML CODE_0080DE             ; $20:B1F8: 5C DE 80 00 ;

CODE_20B1FC:    DEC $B1                     ; $20:B1FC: C6 B1       ;
CODE_20B1FE:    BPL CODE_20B1AD             ; $20:B1FE: 10 AD       ;
CODE_20B200:    JSR CODE_20A4B6             ; $20:B200: 20 B6 A4    ;
CODE_20B203:    LDX $BE                     ; $20:B203: A6 BE       ;
CODE_20B205:    CPX #$06                    ; $20:B205: E0 06       ;
CODE_20B207:    BCS CODE_20B21F                     ; $20:B207: B0 16       ;
CODE_20B209:    DEC $BF                     ; $20:B209: C6 BF       ;
CODE_20B20B:    BNE CODE_20B21F             ; $20:B20B: D0 12       ;
CODE_20B20D:    LDA.l DATA_20B0F8,x                 ; $20:B20D: BF F8 B0 20 ;
CODE_20B211:    STA $BF                     ; $20:B211: 85 BF       ;
CODE_20B213:    LDA.l DATA_20B0F2,x                 ; $20:B213: BF F2 B0 20 ;
CODE_20B217:    TAY                         ; $20:B217: A8          ;
CODE_20B218:    LDA #$01                    ; $20:B218: A9 01       ;
CODE_20B21A:    STA $00A6,y                 ; $20:B21A: 99 A6 00    ;
CODE_20B21D:    INC $BE                     ; $20:B21D: E6 BE       ;
CODE_20B21F:    JSR CODE_20B3A5             ; $20:B21F: 20 A5 B3    ;
CODE_20B222:    LDA $AF                     ; $20:B222: A5 AF       ;
CODE_20B224:    BEQ CODE_20B240             ; $20:B224: F0 1A       ;
CODE_20B226:    DEC $16                     ; $20:B226: C6 16       ;
CODE_20B228:    BMI CODE_20B22F             ; $20:B228: 30 05       ;
CODE_20B22A:    JSR CODE_20A4B6             ; $20:B22A: 20 B6 A4    ;
CODE_20B22D:    BRA CODE_20B226             ; $20:B22D: 80 F7       ;
CODE_20B22F:    LDA $701FF2                 ; $20:B22F: AF F2 1F 70 ;
CODE_20B233:    BEQ CODE_20B239             ; $20:B233: F0 04       ;
CODE_20B235:    JML CODE_008139             ; $20:B235: 5C 39 81 00 ;

CODE_20B239:    LDA #$80                    ; $20:B239: A9 80       ;
CODE_20B23B:    STA $16                     ; $20:B23B: 85 16       ;
CODE_20B23D:    JMP CODE_20B11A             ; $20:B23D: 4C 1A B1    ;

CODE_20B240:    LDA $AC                     ; $20:B240: A5 AC       ;
CODE_20B242:    CMP #$05                    ; $20:B242: C9 05       ;
CODE_20B244:    BNE CODE_20B200             ; $20:B244: D0 BA       ;
CODE_20B246:    LDX #$80                    ; $20:B246: A2 80       ;
CODE_20B248:    STZ $43,x                   ; $20:B248: 74 43       ;
CODE_20B24A:    DEX                         ; $20:B24A: CA          ;
CODE_20B24B:    BPL CODE_20B248             ; $20:B24B: 10 FB       ;
CODE_20B24D:    DEC $16                     ; $20:B24D: C6 16       ;
CODE_20B24F:    BMI CODE_20B256             ; $20:B24F: 30 05       ;
CODE_20B251:    JSR CODE_20A4B6             ; $20:B251: 20 B6 A4    ;
CODE_20B254:    BRA CODE_20B24D             ; $20:B254: 80 F7       ;

CODE_20B256:    LDA #$80                    ; $20:B256: A9 80       ;
CODE_20B258:    STA $16                     ; $20:B258: 85 16       ;
CODE_20B25A:    STZ $02D7                   ; $20:B25A: 9C D7 02    ;
CODE_20B25D:    RTS                         ; $20:B25D: 60          ;
CODE_20B25E:    LDA #$38                    ; $20:B25E: A9 38       ;
CODE_20B260:    STA $00                     ; $20:B260: 85 00       ;
CODE_20B262:    LDX #$00                    ; $20:B262: A2 00       ;
CODE_20B264:    LDY #$40                    ; $20:B264: A0 40       ;
CODE_20B266:    LDA.l DATA_20B2E3,x                 ; $20:B266: BF E3 B2 20 ;
CODE_20B26A:    BPL CODE_20B28D             ; $20:B26A: 10 21       ;
CODE_20B26C:    STA $0802,y                 ; $20:B26C: 99 02 08    ;
CODE_20B26F:    LDA #$35                    ; $20:B26F: A9 35       ;
CODE_20B271:    STA $0803,y                 ; $20:B271: 99 03 08    ;
CODE_20B274:    LDA $00                     ; $20:B274: A5 00       ;
CODE_20B276:    STA $0800,y                 ; $20:B276: 99 00 08    ;
CODE_20B279:    LDA #$C8                    ; $20:B279: A9 C8       ;
CODE_20B27B:    STA $0801,y                 ; $20:B27B: 99 01 08    ;
CODE_20B27E:    PHY                         ; $20:B27E: 5A          ;
CODE_20B27F:    TYA                         ; $20:B27F: 98          ;
CODE_20B280:    LSR A                       ; $20:B280: 4A          ;
CODE_20B281:    LSR A                       ; $20:B281: 4A          ;
CODE_20B282:    TAY                         ; $20:B282: A8          ;
CODE_20B283:    LDA #$00                    ; $20:B283: A9 00       ;
CODE_20B285:    STA $0A20,y                 ; $20:B285: 99 20 0A    ;
CODE_20B288:    PLY                         ; $20:B288: 7A          ;
CODE_20B289:    INY                         ; $20:B289: C8          ;
CODE_20B28A:    INY                         ; $20:B28A: C8          ;
CODE_20B28B:    INY                         ; $20:B28B: C8          ;
CODE_20B28C:    INY                         ; $20:B28C: C8          ;
CODE_20B28D:    LDA $00                     ; $20:B28D: A5 00       ;
CODE_20B28F:    CLC                         ; $20:B28F: 18          ;
CODE_20B290:    ADC #$08                    ; $20:B290: 69 08       ;
CODE_20B292:    STA $00                     ; $20:B292: 85 00       ;
CODE_20B294:    INX                         ; $20:B294: E8          ;
CODE_20B295:    CPX #$0B                    ; $20:B295: E0 0B       ;
CODE_20B297:    BNE CODE_20B266             ; $20:B297: D0 CD       ;
CODE_20B299:    REP #$20                    ; $20:B299: C2 20       ;
CODE_20B29B:    LDA #$C498                  ; $20:B29B: A9 98 C4    ;
CODE_20B29E:    STA $0800,y                 ; $20:B29E: 99 00 08    ;
CODE_20B2A1:    CLC                         ; $20:B2A1: 18          ;
CODE_20B2A2:    ADC #$0010                  ; $20:B2A2: 69 10 00    ;
CODE_20B2A5:    STA $0804,y                 ; $20:B2A5: 99 04 08    ;
CODE_20B2A8:    CLC                         ; $20:B2A8: 18          ;
CODE_20B2A9:    ADC #$0010                  ; $20:B2A9: 69 10 00    ;
CODE_20B2AC:    STA $0808,y                 ; $20:B2AC: 99 08 08    ;
CODE_20B2AF:    CLC                         ; $20:B2AF: 18          ;
CODE_20B2B0:    ADC #$0008                  ; $20:B2B0: 69 08 00    ;
CODE_20B2B3:    STA $080C,y                 ; $20:B2B3: 99 0C 08    ;
CODE_20B2B6:    LDA #$3585                  ; $20:B2B6: A9 85 35    ;
CODE_20B2B9:    STA $0802,y                 ; $20:B2B9: 99 02 08    ;
CODE_20B2BC:    LDA #$3587                  ; $20:B2BC: A9 87 35    ;
CODE_20B2BF:    STA $0806,y                 ; $20:B2BF: 99 06 08    ;
CODE_20B2C2:    LDA #$3589                  ; $20:B2C2: A9 89 35    ;
CODE_20B2C5:    STA $080A,y                 ; $20:B2C5: 99 0A 08    ;
CODE_20B2C8:    LDA #$358A                  ; $20:B2C8: A9 8A 35    ;
CODE_20B2CB:    STA $080E,y                 ; $20:B2CB: 99 0E 08    ;
CODE_20B2CE:    SEP #$20                    ; $20:B2CE: E2 20       ;
CODE_20B2D0:    TYA                         ; $20:B2D0: 98          ;
CODE_20B2D1:    LSR A                       ; $20:B2D1: 4A          ;
CODE_20B2D2:    LSR A                       ; $20:B2D2: 4A          ;
CODE_20B2D3:    TAY                         ; $20:B2D3: A8          ;
CODE_20B2D4:    LDA #$02                    ; $20:B2D4: A9 02       ;
CODE_20B2D6:    STA $0A20,y                 ; $20:B2D6: 99 20 0A    ;
CODE_20B2D9:    STA $0A21,y                 ; $20:B2D9: 99 21 0A    ;
CODE_20B2DC:    STA $0A22,y                 ; $20:B2DC: 99 22 0A    ;
CODE_20B2DF:    STA $0A23,y                 ; $20:B2DF: 99 23 0A    ;
CODE_20B2E2:    RTS                         ; $20:B2E2: 60          ;

DATA_20B2E3:        db $84,$00,$80,$81,$83,$83,$00,$80
                    db $81,$81,$82

CODE_20B2EE:    REP #$20                ; $20:B2EE: C2 20       ;
CODE_20B2F0:    LDX #$80                    ; $20:B2F0: A2 80       ;
CODE_20B2F2:    STX $2115                   ; $20:B2F2: 8E 15 21    ;
CODE_20B2F5:    LDA #$1000                      ; $20:B2F5: A9 00       ;
CODE_20B2F8:    STA $D8                 ; $20:B2F8: 85 D8       ;
CODE_20B2FA:    LDA #$1562                      ; $20:B2FA: A9 62 15    ;
CODE_20B2FD:    STA $DA                 ; $20:B2FD: 85 DA       ;
CODE_20B2FF:    JSR CODE_20B312             ; $20:B2FF: 20 12 B3    ;
CODE_20B302:    JSR CODE_20B312             ; $20:B302: 20 12 B3    ;
CODE_20B305:    LDY #$0B                    ; $20:B305: A0 0B       ;
CODE_20B307:    INC $DA                     ; $20:B307: E6 DA       ;
CODE_20B309:    JSR CODE_20B312             ; $20:B309: 20 12 B3    ;
CODE_20B30C:    DEY                         ; $20:B30C: 88          ;
CODE_20B30D:    BNE CODE_20B307             ; $20:B30D: D0 F8       ;
CODE_20B30F:    SEP #$20                    ; $20:B30F: E2 20       ;
CODE_20B311:    RTS                         ; $20:B311: 60          ;

CODE_20B312:    LDA $D8                     ; $20:B312: A5 D8       ;
CODE_20B314:    STA $2116                   ; $20:B314: 8D 16 21    ;
CODE_20B317:    CLC                         ; $20:B317: 18          ;
CODE_20B318:    ADC #$0020                      ; $20:B318: 69 20 00    ;
CODE_20B31B:    STA $D8                     ; $20:B31B: 85 D8       ;
CODE_20B31D:    LDX #$20                    ; $20:B31D: A2 20       ;
CODE_20B31F:    LDA $DA                     ; $20:B31F: A5 DA       ;
CODE_20B321:    STA $2118                   ; $20:B321: 8D 18 21    ;
CODE_20B324:    DEX                         ; $20:B324: CA          ;
CODE_20B325:    BNE CODE_20B31F             ; $20:B325: D0 F8       ;
CODE_20B327:    RTS                         ; $20:B327: 60          ;
  
CODE_20B328:    REP #$20                    ; $20:B328: C2 20       ;
CODE_20B32A:    LDX #$80                    ; $20:B32A: A2 80       ;
CODE_20B32C:    STX $2115                   ; $20:B32C: 8E 15 21    ;
CODE_20B32F:    LDA #$0000                  ; $20:B32F: A9 00 00    ;
CODE_20B332:    STA $2116                   ; $20:B332: 8D 16 21    ;
CODE_20B335:    LDA #$000B                  ; $20:B335: A9 0B 00    ;
CODE_20B338:    STA $00                     ; $20:B338: 85 00       ;
CODE_20B33A:    LDY #$08                    ; $20:B33A: A0 08       ;
CODE_20B33C:    LDA #$01F0                  ; $20:B33C: A9 F0 01    ;
CODE_20B33F:    STA $2118                   ; $20:B33F: 8D 18 21    ;
CODE_20B342:    INC A                       ; $20:B342: 1A          ;
CODE_20B343:    STA $2118                   ; $20:B343: 8D 18 21    ;
CODE_20B346:    LDA #$41F1                  ; $20:B346: A9 F1 41    ;
CODE_20B349:    STA $2118                   ; $20:B349: 8D 18 21    ;
CODE_20B34C:    DEC A                       ; $20:B34C: 3A          ;
CODE_20B34D:    STA $2118                   ; $20:B34D: 8D 18 21    ;
CODE_20B350:    DEY                         ; $20:B350: 88          ;
CODE_20B351:    BNE CODE_20B33C             ; $20:B351: D0 E9       ;
CODE_20B353:    LDY #$08                    ; $20:B353: A0 08       ;
CODE_20B355:    LDA #$01F2                  ; $20:B355: A9 F2 01    ;
CODE_20B358:    STA $2118                   ; $20:B358: 8D 18 21    ;
CODE_20B35B:    INC A                       ; $20:B35B: 1A          ;
CODE_20B35C:    STA $2118                   ; $20:B35C: 8D 18 21    ;
CODE_20B35F:    LDA #$41F3                  ; $20:B35F: A9 F3 41    ;
CODE_20B362:    STA $2118                   ; $20:B362: 8D 18 21    ;
CODE_20B365:    DEC A                       ; $20:B365: 3A          ;
CODE_20B366:    STA $2118                   ; $20:B366: 8D 18 21    ;
CODE_20B369:    DEY                         ; $20:B369: 88          ;
CODE_20B36A:    BNE CODE_20B355             ; $20:B36A: D0 E9       ;
CODE_20B36C:    DEC $00                     ; $20:B36C: C6 00       ;
CODE_20B36E:    BNE CODE_20B33A             ; $20:B36E: D0 CA       ;
CODE_20B370:    LDY #$08                    ; $20:B370: A0 08       ;
CODE_20B372:    LDA #$01F4                  ; $20:B372: A9 F4 01    ;
CODE_20B375:    STA $2118                   ; $20:B375: 8D 18 21    ;
CODE_20B378:    INC A                       ; $20:B378: 1A          ;
CODE_20B379:    STA $2118                   ; $20:B379: 8D 18 21    ;
CODE_20B37C:    LDA #$41F5                  ; $20:B37C: A9 F5 41    ;
CODE_20B37F:    STA $2118                   ; $20:B37F: 8D 18 21    ;
CODE_20B382:    DEC A                       ; $20:B382: 3A          ;
CODE_20B383:    STA $2118                   ; $20:B383: 8D 18 21    ;
CODE_20B386:    DEY                         ; $20:B386: 88          ;
CODE_20B387:    BNE CODE_20B372             ; $20:B387: D0 E9       ;
CODE_20B389:    LDY #$08                    ; $20:B389: A0 08       ;
CODE_20B38B:    LDA #$01F6                  ; $20:B38B: A9 F6 01    ;
CODE_20B38E:    STA $2118                   ; $20:B38E: 8D 18 21    ;
CODE_20B391:    INC A                       ; $20:B391: 1A          ;
CODE_20B392:    STA $2118                   ; $20:B392: 8D 18 21    ;
CODE_20B395:    LDA #$41F7                  ; $20:B395: A9 F7 41    ;
CODE_20B398:    STA $2118                   ; $20:B398: 8D 18 21    ;
CODE_20B39B:    DEC A                       ; $20:B39B: 3A          ;
CODE_20B39C:    STA $2118                   ; $20:B39C: 8D 18 21    ;
CODE_20B39F:    DEY                         ; $20:B39F: 88          ;
CODE_20B3A0:    BNE CODE_20B38B             ; $20:B3A0: D0 E9       ;
CODE_20B3A2:    SEP #$20                    ; $20:B3A2: E2 20       ;
CODE_20B3A4:    RTS                         ; $20:B3A4: 60          ;

CODE_20B3A5:    STZ $BA                     ; $20:B3A5: 64 BA       ;
CODE_20B3A7:    STZ $BB                     ; $20:B3A7: 64 BB       ;
CODE_20B3A9:    LDA $AC                     ; $20:B3A9: A5 AC       ;
CODE_20B3AB:    ASL A                       ; $20:B3AB: 0A          ;
CODE_20B3AC:    TAX                         ; $20:B3AC: AA          ;
CODE_20B3AD:    JMP (PNTR_20B3B0,x)                 ; $20:B3AD: 7C B0 B3    ;

PNTR_20B3B0:        dw CODE_20B3C0
                    dw CODE_20B515
                    dw CODE_20B76F
                    dw CODE_20B79E
                    dw CODE_20B8E1
                    dw CODE_20B663
                    dw CODE_20B586
                    dw CODE_20B943

CODE_20B3C0:    LDY #$01                    ; $20:B3C0: A0 01       ;
CODE_20B3C2:    INC $0216                   ; $20:B3C2: EE 16 02    ;
CODE_20B3C5:    LDA $0216                   ; $20:B3C5: AD 16 02    ;
CODE_20B3C8:    CMP #$D0                    ; $20:B3C8: C9 D0       ;
CODE_20B3CA:    BEQ CODE_20B41B             ; $20:B3CA: F0 4F       ;
CODE_20B3CC:    CMP #$4E                    ; $20:B3CC: C9 4E       ;
CODE_20B3CE:    BNE CODE_20B3D7             ; $20:B3CE: D0 07       ;
CODE_20B3D0:    LDA #$40                    ; $20:B3D0: A9 40       ;
CODE_20B3D2:    STA $9E                     ; $20:B3D2: 85 9E       ;
CODE_20B3D4:    STA $0512                   ; $20:B3D4: 8D 12 05    ;
CODE_20B3D7:    DEY                         ; $20:B3D7: 88          ;
CODE_20B3D8:    BPL CODE_20B3C2             ; $20:B3D8: 10 E8       ;
CODE_20B3DA:    LDA $9E                     ; $20:B3DA: A5 9E       ;
CODE_20B3DC:    BEQ CODE_20B3E1             ; $20:B3DC: F0 03       ;
CODE_20B3DE:    JSR CODE_20BB4D             ; $20:B3DE: 20 4D BB    ;
CODE_20B3E1:    LDA $F6                     ; $20:B3E1: A5 F6       ;
CODE_20B3E3:    ORA $F7                     ; $20:B3E3: 05 F7       ;
CODE_20B3E5:    AND #$10                    ; $20:B3E5: 29 10       ;
CODE_20B3E7:    BEQ CODE_20B402             ; $20:B3E7: F0 19       ;
CODE_20B3E9:    LDA $701FF2                 ; $20:B3E9: AF F2 1F 70 ;
CODE_20B3ED:    BEQ CODE_20B3F3             ; $20:B3ED: F0 04       ;
CODE_20B3EF:    JML CODE_0080DE             ; $20:B3EF: 5C DE 80 00 ;

CODE_20B3F3:    LDA $AC                     ; $20:B3F3: A5 AC       ;
CODE_20B3F5:    CMP #$06                    ; $20:B3F5: C9 06       ;
CODE_20B3F7:    BEQ CODE_20B3FE             ; $20:B3F7: F0 05       ;
CODE_20B3F9:    LDA #$29                    ; $20:B3F9: A9 29       ;
CODE_20B3FB:    STA $1203                   ; $20:B3FB: 8D 03 12    ;
CODE_20B3FE:    LDA #$06                    ; $20:B3FE: A9 06       ;
CODE_20B400:    STA $AC                     ; $20:B400: 85 AC       ;
CODE_20B402:    LDA $F4                     ; $20:B402: A5 F4       ;
CODE_20B404:    ORA $F5                     ; $20:B404: 05 F5       ;
CODE_20B406:    AND #$40                    ; $20:B406: 29 40       ;
CODE_20B408:    BEQ CODE_20B40E             ; $20:B408: F0 04       ;
CODE_20B40A:    JML CODE_0080DE             ; $20:B40A: 5C DE 80 00 ;

CODE_20B40E:    LDA $F2                     ; $20:B40E: A5 F2       ;
CODE_20B410:    ORA $F3                     ; $20:B410: 05 F3       ;
CODE_20B412:    AND #$40                    ; $20:B412: 29 40       ;
CODE_20B414:    BEQ CODE_20B41A             ; $20:B414: F0 04       ;
CODE_20B416:    JML CODE_0080DE             ; $20:B416: 5C DE 80 00 ;

CODE_20B41A:    RTS                         ; $20:B41A: 60          ;

CODE_20B41B:    LDA #$02                    ; $20:B41B: A9 02       ;
CODE_20B41D:    STA $BC                     ; $20:B41D: 85 BC       ;
CODE_20B41F:    LDA #$02                    ; $20:B41F: A9 02       ;
CODE_20B421:    STA $BD                     ; $20:B421: 85 BD       ;
CODE_20B423:    INC $AC                     ; $20:B423: E6 AC       ;
CODE_20B425:    STZ $9E                     ; $20:B425: 64 9E       ;
CODE_20B427:    RTS                         ; $20:B427: 60          ;

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

CODE_20B49D:    DEC $B1                     ; $20:B49D: C6 B1       ;
CODE_20B49F:    BPL CODE_20B4D4             ; $20:B49F: 10 33       ;
CODE_20B4A1:    LDA #$04                    ; $20:B4A1: A9 04       ;
CODE_20B4A3:    STA $B1                     ; $20:B4A3: 85 B1       ;
CODE_20B4A5:    LDA $C1                     ; $20:B4A5: A5 C1       ;
CODE_20B4A7:    AND #$07                    ; $20:B4A7: 29 07       ;
CODE_20B4A9:    ASL A                       ; $20:B4A9: 0A          ;
CODE_20B4AA:    ASL A                       ; $20:B4AA: 0A          ;
CODE_20B4AB:    ASL A                       ; $20:B4AB: 0A          ;
CODE_20B4AC:    TAX                         ; $20:B4AC: AA          ;
CODE_20B4AD:    REP #$20                    ; $20:B4AD: C2 20       ;
CODE_20B4AF:    LDA.l DATA_20B4D5,x                 ; $20:B4AF: BF D5 B4 20 ;
CODE_20B4B3:    STA $1326                   ; $20:B4B3: 8D 26 13    ;
CODE_20B4B6:    LDA.l DATA_20B4D7,x                 ; $20:B4B6: BF D7 B4 20 ;
CODE_20B4BA:    STA $1328                   ; $20:B4BA: 8D 28 13    ;
CODE_20B4BD:    LDA.l DATA_20B4D9,x                 ; $20:B4BD: BF D9 B4 20 ;
CODE_20B4C1:    STA $132A                   ; $20:B4C1: 8D 2A 13    ;
CODE_20B4C4:    LDA.l DATA_20B4DB,x                 ; $20:B4C4: BF DB B4 20 ;
CODE_20B4C8:    STA $132C                   ; $20:B4C8: 8D 2C 13    ;
CODE_20B4CB:    SEP #$20                    ; $20:B4CB: E2 20       ;
CODE_20B4CD:    LDA #$01                    ; $20:B4CD: A9 01       ;
CODE_20B4CF:    STA $1500                   ; $20:B4CF: 8D 00 15    ;
CODE_20B4D2:    INC $C1                     ; $20:B4D2: E6 C1       ;
CODE_20B4D4:    RTS                         ; $20:B4D4: 60          ;

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

CODE_20B515:    DEC $B4                     ; $20:B515: C6 B4       ;
CODE_20B517:    LDA $B4                     ; $20:B517: A5 B4       ;
CODE_20B519:    CMP #$FF                    ; $20:B519: C9 FF       ;
CODE_20B51B:    BNE CODE_20B520             ; $20:B51B: D0 03       ;
CODE_20B51D:    JSR CODE_20B5F3             ; $20:B51D: 20 F3 B5    ;
CODE_20B520:    DEC $B5                     ; $20:B520: C6 B5       ;
CODE_20B522:    LDA $B5                     ; $20:B522: A5 B5       ;
CODE_20B524:    CMP #$FF                    ; $20:B524: C9 FF       ;
CODE_20B526:    BNE CODE_20B52B             ; $20:B526: D0 03       ;
CODE_20B528:    JSR CODE_20B628             ; $20:B528: 20 28 B6    ;
CODE_20B52B:    LDA $B6                     ; $20:B52B: A5 B6       ;
CODE_20B52D:    STA $B8                     ; $20:B52D: 85 B8       ;
CODE_20B52F:    LDA $B7                     ; $20:B52F: A5 B7       ;
CODE_20B531:    STA $B9                     ; $20:B531: 85 B9       ;
CODE_20B533:    JSR CODE_20B649             ; $20:B533: 20 49 B6    ;
CODE_20B536:    JSR CODE_20BB4D             ; $20:B536: 20 4D BB    ;
CODE_20B539:    LDA $C0                     ; $20:B539: A5 C0       ;
CODE_20B53B:    BEQ CODE_20B540             ; $20:B53B: F0 03       ;
CODE_20B53D:    JSR CODE_20B49D             ; $20:B53D: 20 9D B4    ;
CODE_20B540:    LDA $F6                     ; $20:B540: A5 F6       ;
CODE_20B542:    ORA $F7                     ; $20:B542: 05 F7       ;
CODE_20B544:    AND #$10                    ; $20:B544: 29 10       ;
CODE_20B546:    BEQ CODE_20B56D             ; $20:B546: F0 25       ;
CODE_20B548:    LDA $B0                     ; $20:B548: A5 B0       ;
CODE_20B54A:    BNE CODE_20B567             ; $20:B54A: D0 1B       ;
CODE_20B54C:    LDA $701FF2                 ; $20:B54C: AF F2 1F 70 ;
CODE_20B550:    BEQ CODE_20B556             ; $20:B550: F0 04       ;
CODE_20B552:    JML CODE_0080DE             ; $20:B552: 5C DE 80 00 ;

CODE_20B556:    LDA $AC                     ; $20:B556: A5 AC       ;
CODE_20B558:    CMP #$06                    ; $20:B558: C9 06       ;
CODE_20B55A:    BEQ CODE_20B561             ; $20:B55A: F0 05       ;
CODE_20B55C:    LDA #$29                    ; $20:B55C: A9 29       ;
CODE_20B55E:    STA $1203                   ; $20:B55E: 8D 03 12    ;
CODE_20B561:    LDA #$06                    ; $20:B561: A9 06       ;
CODE_20B563:    STA $AC                     ; $20:B563: 85 AC       ;
CODE_20B565:    BRA CODE_20B56D             ; $20:B565: 80 06       ;

CODE_20B567:    INC $AC                     ; $20:B567: E6 AC       ;
CODE_20B569:    LDA #$01                    ; $20:B569: A9 01       ;
CODE_20B56B:    STA $28                     ; $20:B56B: 85 28       ;
CODE_20B56D:    LDA $F4                     ; $20:B56D: A5 F4       ;
CODE_20B56F:    ORA $F5                     ; $20:B56F: 05 F5       ;
CODE_20B571:    AND #$40                    ; $20:B571: 29 40       ;
CODE_20B573:    BEQ CODE_20B579             ; $20:B573: F0 04       ;
CODE_20B575:    JML CODE_0080DE             ; $20:B575: 5C DE 80 00 ;

CODE_20B579:    LDA $F2                     ; $20:B579: A5 F2       ;
CODE_20B57B:    ORA $F3                     ; $20:B57B: 05 F3       ;
CODE_20B57D:    AND #$40                    ; $20:B57D: 29 40       ;
CODE_20B57F:    BEQ CODE_20B585             ; $20:B57F: F0 04       ;
CODE_20B581:    JML CODE_0080DE             ; $20:B581: 5C DE 80 00 ;

CODE_20B585:    RTS                         ; $20:B585: 60          ;

CODE_20B586:    STZ $0216                   ; $20:B586: 9C 16 02    ;
CODE_20B589:    STZ $0217                   ; $20:B589: 9C 17 02    ;
CODE_20B58C:    LDA #$B1                    ; $20:B58C: A9 B1       ;
CODE_20B58E:    STA $36                     ; $20:B58E: 85 36       ;
CODE_20B590:    LDA #$F1                    ; $20:B590: A9 F1       ;
CODE_20B592:    STA $37                     ; $20:B592: 85 37       ;
CODE_20B594:    LDA #$2A                    ; $20:B594: A9 2A       ;
CODE_20B596:    STA $38                     ; $20:B596: 85 38       ;
CODE_20B598:    LDA #$01                    ; $20:B598: A9 01       ;
CODE_20B59A:    STA $1C                     ; $20:B59A: 85 1C       ;
CODE_20B59C:    STZ $0154                   ; $20:B59C: 9C 54 01    ;
CODE_20B59F:    LDA $0154                   ; $20:B59F: AD 54 01    ;
CODE_20B5A2:    BPL CODE_20B59F             ; $20:B5A2: 10 FB       ;
CODE_20B5A4:    STZ $1C                     ; $20:B5A4: 64 1C       ;
CODE_20B5A6:    CLI                         ; $20:B5A6: 58          ;
CODE_20B5A7:    JSR CODE_20B5DD             ; $20:B5A7: 20 DD B5    ;
CODE_20B5AA:    LDA #$06                    ; $20:B5AA: A9 06       ;
CODE_20B5AC:    STA $1501                   ; $20:B5AC: 8D 01 15    ;
CODE_20B5AF:    JSL CODE_22E65F             ; $20:B5AF: 22 5F E6 22 ;
CODE_20B5B3:    JSR CODE_20B70E             ; $20:B5B3: 20 0E B7    ;
CODE_20B5B6:    STZ $02B5                   ; $20:B5B6: 9C B5 02    ;
CODE_20B5B9:    JSR CODE_20B2EE             ; $20:B5B9: 20 EE B2    ;
CODE_20B5BC:    LDA #$1D                    ; $20:B5BC: A9 1D       ;
CODE_20B5BE:    ASL A                       ; $20:B5BE: 0A          ;
CODE_20B5BF:    TAX                         ; $20:B5BF: AA          ;
CODE_20B5C0:    LDA.l PNTR_20D301,x                 ; $20:B5C0: BF 01 D3 20 ;
CODE_20B5C4:    STA $36                     ; $20:B5C4: 85 36       ;
CODE_20B5C6:    LDA.l PNTR_20D301+1,x               ; $20:B5C6: BF 02 D3 20 ;
CODE_20B5CA:    STA $37                     ; $20:B5CA: 85 37       ;
CODE_20B5CC:    LDA #$20                    ; $20:B5CC: A9 20       ;
CODE_20B5CE:    STA $38                     ; $20:B5CE: 85 38       ;
CODE_20B5D0:    JSL CODE_29E8AB             ; $20:B5D0: 22 AB E8 29 ;
CODE_20B5D4:    LDA #$0F                    ; $20:B5D4: A9 0F       ;
CODE_20B5D6:    STA $16                     ; $20:B5D6: 85 16       ;
CODE_20B5D8:    LDA #$02                    ; $20:B5D8: A9 02       ;
CODE_20B5DA:    STA $AC                     ; $20:B5DA: 85 AC       ;
CODE_20B5DC:    RTS                         ; $20:B5DC: 60          ;

CODE_20B5DD:    LDA $7FFC03                 ; $20:B5DD: AF 03 FC 7F ;
CODE_20B5E1:    BMI CODE_20B5EB             ; $20:B5E1: 30 08       ;
CODE_20B5E3:    DEC A                       ; $20:B5E3: 3A          ;
CODE_20B5E4:    TAX                         ; $20:B5E4: AA          ;
CODE_20B5E5:    LDA.l DATA_20B76D,x                 ; $20:B5E5: BF 6D B7 20 ;
CODE_20B5E9:    BRA CODE_20B5ED             ; $20:B5E9: 80 02       ;

CODE_20B5EB:    LDA #$01                    ; $20:B5EB: A9 01       ;
CODE_20B5ED:    STA $28                     ; $20:B5ED: 85 28       ;
CODE_20B5EF:    JSR CODE_20A4B6             ; $20:B5EF: 20 B6 A4    ;
CODE_20B5F2:    RTS                         ; $20:B5F2: 60          ;

CODE_20B5F3:    STZ $B6                     ; $20:B5F3: 64 B6       ;
CODE_20B5F5:    STZ $BA                     ; $20:B5F5: 64 BA       ;
CODE_20B5F7:    LDX $B2                     ; $20:B5F7: A6 B2       ;
CODE_20B5F9:    LDA.l DATA_20B428,x                 ; $20:B5F9: BF 28 B4 20 ;
CODE_20B5FD:    CMP #$FF                    ; $20:B5FD: C9 FF       ;
CODE_20B5FF:    BEQ CODE_20B615             ; $20:B5FF: F0 14       ;
CODE_20B601:    CMP #$FE                    ; $20:B601: C9 FE       ;
CODE_20B603:    BEQ CODE_20B623             ; $20:B603: F0 1E       ;
CODE_20B605:    STA $B4                     ; $20:B605: 85 B4       ;
CODE_20B607:    INX                         ; $20:B607: E8          ;
CODE_20B608:    LDA.l DATA_20B428,x                 ; $20:B608: BF 28 B4 20 ;
CODE_20B60C:    STA $B6                     ; $20:B60C: 85 B6       ;
CODE_20B60E:    STA $BA                     ; $20:B60E: 85 BA       ;
CODE_20B610:    INC $B2                     ; $20:B610: E6 B2       ;
CODE_20B612:    INC $B2                     ; $20:B612: E6 B2       ;
CODE_20B614:    RTS                         ; $20:B614: 60          ;

CODE_20B615:    INX                         ; $20:B615: E8          ;
CODE_20B616:    LDA.l DATA_20B428,x                 ; $20:B616: BF 28 B4 20 ;
CODE_20B61A:    STA $BC                     ; $20:B61A: 85 BC       ;
CODE_20B61C:    INC $B2                     ; $20:B61C: E6 B2       ;
CODE_20B61E:    INC $B2                     ; $20:B61E: E6 B2       ;
CODE_20B620:    STZ $B4                     ; $20:B620: 64 B4       ;
CODE_20B622:    RTS                         ; $20:B622: 60          ;

CODE_20B623:    INC $AC                     ; $20:B623: E6 AC       ;
CODE_20B625:    STZ $B2                     ; $20:B625: 64 B2       ;
CODE_20B627:    RTS                         ; $20:B627: 60          ;

CODE_20B628:    STZ $B7                     ; $20:B628: 64 B7       ;
CODE_20B62A:    STZ $BB                     ; $20:B62A: 64 BB       ;
CODE_20B62C:    LDX $B3                     ; $20:B62C: A6 B3       ;
CODE_20B62E:    LDA.l DATA_20B480,x                 ; $20:B62E: BF 80 B4 20 ;
CODE_20B632:    CMP #$FF                    ; $20:B632: C9 FF       ;
CODE_20B634:    BEQ CODE_20B646             ; $20:B634: F0 10       ;
CODE_20B636:    STA $B5                     ; $20:B636: 85 B5       ;
CODE_20B638:    INX                         ; $20:B638: E8          ;
CODE_20B639:    LDA.l DATA_20B480,x                 ; $20:B639: BF 80 B4 20 ;
CODE_20B63D:    STA $B7                     ; $20:B63D: 85 B7       ;
CODE_20B63F:    STA $BB                     ; $20:B63F: 85 BB       ;
CODE_20B641:    INC $B3                     ; $20:B641: E6 B3       ;
CODE_20B643:    INC $B3                     ; $20:B643: E6 B3       ;
CODE_20B645:    RTS                         ; $20:B645: 60          ;

CODE_20B646:    STZ $B3                     ; $20:B646: 64 B3       ;
CODE_20B648:    RTS                         ; $20:B648: 60          ;

CODE_20B649:    LDA $BC                     ; $20:B649: A5 BC       ;
CODE_20B64B:    JSL CODE_20FB1F         ; $20:B64B: 22 1F FB 20 ; ExecutePtrShort

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

CODE_20B663:    RTS                     ; $20:B663: 60          ;

CODE_20B664:    LDA $BD                     ; $20:B664: A5 BD       ;
CODE_20B666:    STA $0028                   ; $20:B666: 8D 28 00    ;
CODE_20B669:    INC $BD                     ; $20:B669: E6 BD       ;
CODE_20B66B:    LDA $BD                     ; $20:B66B: A5 BD       ;
CODE_20B66D:    CMP #$1D                    ; $20:B66D: C9 1D       ;
CODE_20B66F:    BNE CODE_20B68A             ; $20:B66F: D0 19       ;
CODE_20B671:    STZ $BC                     ; $20:B671: 64 BC       ;
CODE_20B673:    REP #$20                    ; $20:B673: C2 20       ;
CODE_20B675:    LDX #$08                    ; $20:B675: A2 08       ;
CODE_20B677:    LDA #$0000                  ; $20:B677: A9 00 00    ;
CODE_20B67A:    STA $1300,x                 ; $20:B67A: 9D 00 13    ;
CODE_20B67D:    INX                         ; $20:B67D: E8          ;
CODE_20B67E:    INX                         ; $20:B67E: E8          ;
CODE_20B67F:    CPX #$20                    ; $20:B67F: E0 20       ;
CODE_20B681:    BNE CODE_20B67A             ; $20:B681: D0 F7       ;
CODE_20B683:    SEP #$20                    ; $20:B683: E2 20       ;
CODE_20B685:    LDA #$01                    ; $20:B685: A9 01       ;
CODE_20B687:    STA $1500                   ; $20:B687: 8D 00 15    ;
CODE_20B68A:    RTS                         ; $20:B68A: 60          ;

CODE_20B68B:    LDY #$04                    ; $20:B68B: A0 04       ;
CODE_20B68D:    DEC $0216                   ; $20:B68D: CE 16 02    ;
CODE_20B690:    LDA $0216                   ; $20:B690: AD 16 02    ;
CODE_20B693:    BEQ CODE_20B699             ; $20:B693: F0 04       ;
CODE_20B695:    DEY                         ; $20:B695: 88          ;
CODE_20B696:    BPL CODE_20B68D             ; $20:B696: 10 F5       ;
CODE_20B698:    RTS                         ; $20:B698: 60          ;

CODE_20B699:    LDA #$10                    ; $20:B699: A9 10       ;
CODE_20B69B:    STA $B1                     ; $20:B69B: 85 B1       ;
CODE_20B69D:    INC $BC                     ; $20:B69D: E6 BC       ;
CODE_20B69F:    RTS                         ; $20:B69F: 60          ;

CODE_20B6A0:    REP #$20                    ; $20:B6A0: C2 20       ;
CODE_20B6A2:    LDA $0216                   ; $20:B6A2: AD 16 02    ;
CODE_20B6A5:    SEC                         ; $20:B6A5: 38          ;
CODE_20B6A6:    SBC #$0002                  ; $20:B6A6: E9 02 00    ;
CODE_20B6A9:    STA $0216                   ; $20:B6A9: 8D 16 02    ;
CODE_20B6AC:    SEP #$20                    ; $20:B6AC: E2 20       ;
CODE_20B6AE:    INC $BC                     ; $20:B6AE: E6 BC       ;
CODE_20B6B0:    RTS                         ; $20:B6B0: 60          ;

CODE_20B6B1:    REP #$20                    ; $20:B6B1: C2 20       ;
CODE_20B6B3:    LDA $0216                   ; $20:B6B3: AD 16 02    ;
CODE_20B6B6:    CLC                         ; $20:B6B6: 18          ;
CODE_20B6B7:    ADC #$0002                  ; $20:B6B7: 69 02 00    ;
CODE_20B6BA:    STA $0216                   ; $20:B6BA: 8D 16 02    ;
CODE_20B6BD:    SEP #$20                    ; $20:B6BD: E2 20       ;
CODE_20B6BF:    DEC $BC                     ; $20:B6BF: C6 BC       ;
CODE_20B6C1:    DEC $B1                     ; $20:B6C1: C6 B1       ;
CODE_20B6C3:    BPL CODE_20B6D1             ; $20:B6C3: 10 0C       ;
CODE_20B6C5:    INC $BC                     ; $20:B6C5: E6 BC       ;
CODE_20B6C7:    INC $BC                     ; $20:B6C7: E6 BC       ;
CODE_20B6C9:    LDA #$03                    ; $20:B6C9: A9 03       ;
CODE_20B6CB:    STA $BD                     ; $20:B6CB: 85 BD       ;
CODE_20B6CD:    LDA #$02                    ; $20:B6CD: A9 02       ;
CODE_20B6CF:    STA $B1                     ; $20:B6CF: 85 B1       ;
CODE_20B6D1:    RTS                         ; $20:B6D1: 60          ;

CODE_20B6D2:    DEC $B1                     ; $20:B6D2: C6 B1       ;
CODE_20B6D4:    BPL CODE_20B6E9             ; $20:B6D4: 10 13       ;
CODE_20B6D6:    STZ $BE                     ; $20:B6D6: 64 BE       ;
CODE_20B6D8:    LDA #$01                    ; $20:B6D8: A9 01       ;
CODE_20B6DA:    STA $BF                     ; $20:B6DA: 85 BF       ;
CODE_20B6DC:    INC $BC                     ; $20:B6DC: E6 BC       ;
CODE_20B6DE:    LDA #$16                    ; $20:B6DE: A9 16       ;
CODE_20B6E0:    STA $B1                     ; $20:B6E0: 85 B1       ;
CODE_20B6E2:    JSL CODE_29CF62             ; $20:B6E2: 22 62 CF 29 ;
CODE_20B6E6:    STZ $02B3                   ; $20:B6E6: 9C B3 02    ;
CODE_20B6E9:    RTS                         ; $20:B6E9: 60          ;

CODE_20B6EA:    REP #$20                    ; $20:B6EA: C2 20       ;
CODE_20B6EC:    LDA $7F0000                 ; $20:B6EC: AF 00 00 7F ;
CODE_20B6F0:    STA $1300                   ; $20:B6F0: 8D 00 13    ;
CODE_20B6F3:    SEP #$20                    ; $20:B6F3: E2 20       ;
CODE_20B6F5:    JSL CODE_29D09A             ; $20:B6F5: 22 9A D0 29 ;
CODE_20B6F9:    JSL CODE_29D1BB             ; $20:B6F9: 22 BB D1 29 ;
CODE_20B6FD:    LDA $02B3                   ; $20:B6FD: AD B3 02    ;
CODE_20B700:    CMP #$02                    ; $20:B700: C9 02       ;
CODE_20B702:    BNE CODE_20B70A             ; $20:B702: D0 06       ;
CODE_20B704:    STZ $BC                     ; $20:B704: 64 BC       ;
CODE_20B706:    LDA #$01                    ; $20:B706: A9 01       ;
CODE_20B708:    STA $C0                     ; $20:B708: 85 C0       ;
CODE_20B70A:    JSR CODE_20B70E             ; $20:B70A: 20 0E B7    ;
CODE_20B70D:    RTS                         ; $20:B70D: 60          ;

CODE_20B70E:    REP #$20                    ; $20:B70E: C2 20       ;
CODE_20B710:    LDA $1300                   ; $20:B710: AD 00 13    ;
CODE_20B713:    STA $7F0000                 ; $20:B713: 8F 00 00 7F ;
CODE_20B717:    AND #$001F                  ; $20:B717: 29 1F 00    ;
CODE_20B71A:    ORA #$0020                  ; $20:B71A: 09 20 00    ;
CODE_20B71D:    STA $D8                     ; $20:B71D: 85 D8       ;
CODE_20B71F:    LDA $1300                   ; $20:B71F: AD 00 13    ;
CODE_20B722:    LSR A                       ; $20:B722: 4A          ;
CODE_20B723:    LSR A                       ; $20:B723: 4A          ;
CODE_20B724:    LSR A                       ; $20:B724: 4A          ;
CODE_20B725:    LSR A                       ; $20:B725: 4A          ;
CODE_20B726:    LSR A                       ; $20:B726: 4A          ;
CODE_20B727:    AND #$001F                  ; $20:B727: 29 1F 00    ;
CODE_20B72A:    ORA #$0040                  ; $20:B72A: 09 40 00    ;
CODE_20B72D:    STA $DA                     ; $20:B72D: 85 DA       ;
CODE_20B72F:    LDA $1300                   ; $20:B72F: AD 00 13    ;
CODE_20B732:    XBA                         ; $20:B732: EB          ;
CODE_20B733:    LSR A                       ; $20:B733: 4A          ;
CODE_20B734:    LSR A                       ; $20:B734: 4A          ;
CODE_20B735:    AND #$001F                  ; $20:B735: 29 1F 00    ;
CODE_20B738:    ORA #$0080                  ; $20:B738: 09 80 00    ;
CODE_20B73B:    STA $DC                     ; $20:B73B: 85 DC       ;
CODE_20B73D:    STZ $1300                   ; $20:B73D: 9C 00 13    ;
CODE_20B740:    SEP #$20                    ; $20:B740: E2 20       ;
CODE_20B742:    LDA $D8                     ; $20:B742: A5 D8       ;
CODE_20B744:    STA $0205                   ; $20:B744: 8D 05 02    ;
CODE_20B747:    LDA $DA                     ; $20:B747: A5 DA       ;
CODE_20B749:    STA $0206                   ; $20:B749: 8D 06 02    ;
CODE_20B74C:    LDA $DC                     ; $20:B74C: A5 DC       ;
CODE_20B74E:    STA $0207                   ; $20:B74E: 8D 07 02    ;
CODE_20B751:    RTS                         ; $20:B751: 60          ;

CODE_20B752:    LDA $701FF2                 ; $20:B752: AF F2 1F 70 ;
CODE_20B756:    BNE CODE_20B766             ; $20:B756: D0 0E       ;
CODE_20B758:    LDA $7FFC03                 ; $20:B758: AF 03 FC 7F ;
CODE_20B75C:    BMI CODE_20B766             ; $20:B75C: 30 08       ;
CODE_20B75E:    DEC A                       ; $20:B75E: 3A          ;
CODE_20B75F:    TAX                         ; $20:B75F: AA          ;
CODE_20B760:    LDA.l DATA_20B76D,x                 ; $20:B760: BF 6D B7 20 ;
CODE_20B764:    BRA CODE_20B768             ; $20:B764: 80 02       ;

CODE_20B766:    LDA #$01                    ; $20:B766: A9 01       ;
CODE_20B768:    STA $28                     ; $20:B768: 85 28       ;
CODE_20B76A:    INC $BC                     ; $20:B76A: E6 BC       ;
CODE_20B76C:    RTS                         ; $20:B76C: 60          ;

DATA_20B76D:        db $5D,$5C

CODE_20B76F:    STZ $A7                 ; $20:B76F: 64 A7       ;
CODE_20B771:    STZ $A8                     ; $20:B771: 64 A8       ;
CODE_20B773:    STZ $A9                     ; $20:B773: 64 A9       ;
CODE_20B775:    STZ $AA                     ; $20:B775: 64 AA       ;
CODE_20B777:    LDA #$01                    ; $20:B777: A9 01       ;
CODE_20B779:    STA $A6                     ; $20:B779: 85 A6       ;
CODE_20B77B:    LDA #$14                    ; $20:B77B: A9 14       ;
CODE_20B77D:    STA $AD                     ; $20:B77D: 85 AD       ;
CODE_20B77F:    LDA #$3C                    ; $20:B77F: A9 3C       ;
CODE_20B781:    STA $AE                     ; $20:B781: 85 AE       ;
CODE_20B783:    REP #$20                    ; $20:B783: C2 20       ;
CODE_20B785:    LDA #$0000                  ; $20:B785: A9 00 00    ;
CODE_20B788:    STA $1402                   ; $20:B788: 8D 02 14    ;
CODE_20B78B:    LDA #$001F                  ; $20:B78B: A9 1F 00    ;
CODE_20B78E:    STA $1406                   ; $20:B78E: 8D 06 14    ;
CODE_20B791:    SEP #$20                    ; $20:B791: E2 20       ;
CODE_20B793:    LDA #$01                    ; $20:B793: A9 01       ;
CODE_20B795:    STA $1500                   ; $20:B795: 8D 00 15    ;
CODE_20B798:    INC $AC                     ; $20:B798: E6 AC       ;
CODE_20B79A:    RTS                         ; $20:B79A: 60          ;

DATA_20B79B:        db $8F,$9F,$AF

CODE_20B79E:    LDA $F3                 ; $20:B79E: A5 F3       ;
CODE_20B7A0:    AND #$C0                ; $20:B7A0: 29 C0       ;
CODE_20B7A2:    CMP #$C0                    ; $20:B7A2: C9 C0       ;
CODE_20B7A4:    BNE CODE_20B7AB                     ; $20:B7A4: D0 05       ;
CODE_20B7A6:    NOP                     ; $20:B7A6: EA          ;
CODE_20B7A7:    NOP                         ; $20:B7A7: EA          ;
CODE_20B7A8:    NOP                         ; $20:B7A8: EA          ;
CODE_20B7A9:    NOP                         ; $20:B7A9: EA          ;
CODE_20B7AA:    NOP                         ; $20:B7AA: EA          ;
CODE_20B7AB:    DEC $AE                     ; $20:B7AB: C6 AE       ;
CODE_20B7AD:    BNE CODE_20B7BB             ; $20:B7AD: D0 0C       ;
CODE_20B7AF:    LDA #$60                    ; $20:B7AF: A9 60       ;
CODE_20B7B1:    STA $AE                     ; $20:B7B1: 85 AE       ;
CODE_20B7B3:    DEC $AD                     ; $20:B7B3: C6 AD       ;
CODE_20B7B5:    BNE CODE_20B7BB             ; $20:B7B5: D0 04       ;
CODE_20B7B7:    LDA #$FF                    ; $20:B7B7: A9 FF       ;
CODE_20B7B9:    STA $AF                     ; $20:B7B9: 85 AF       ;
CODE_20B7BB:    JSR CODE_20C520             ; $20:B7BB: 20 20 C5    ;
CODE_20B7BE:    LDA $701FF2                 ; $20:B7BE: AF F2 1F 70 ;
CODE_20B7C2:    BEQ CODE_20B7C7             ; $20:B7C2: F0 03       ;
CODE_20B7C4:    JMP CODE_20B83C             ; $20:B7C4: 4C 3C B8    ;

CODE_20B7C7:    LDA $F6                     ; $20:B7C7: A5 F6       ;
CODE_20B7C9:    ORA $F7                     ; $20:B7C9: 05 F7       ;
CODE_20B7CB:    AND #$2C                    ; $20:B7CB: 29 2C       ;
CODE_20B7CD:    BEQ CODE_20B81E             ; $20:B7CD: F0 4F       ;
CODE_20B7CF:    LDX #$23                    ; $20:B7CF: A2 23       ;
CODE_20B7D1:    STX $1203                   ; $20:B7D1: 8E 03 12    ;
CODE_20B7D4:    LDA $7FFC03                 ; $20:B7D4: AF 03 FC 7F ;
CODE_20B7D8:    BMI CODE_20B7EC             ; $20:B7D8: 30 12       ;
CODE_20B7DA:    LDA $072B                   ; $20:B7DA: AD 2B 07    ;
CODE_20B7DD:    CMP #$02                    ; $20:B7DD: C9 02       ;
CODE_20B7DF:    BNE CODE_20B7E8             ; $20:B7DF: D0 07       ;
CODE_20B7E1:    LDA $7FFC03                 ; $20:B7E1: AF 03 FC 7F ;
CODE_20B7E5:    DEC A                       ; $20:B7E5: 3A          ;
CODE_20B7E6:    BRA CODE_20B800             ; $20:B7E6: 80 18       ;

CODE_20B7E8:    LDA #$02                    ; $20:B7E8: A9 02       ;
CODE_20B7EA:    BRA CODE_20B800             ; $20:B7EA: 80 14       ;

CODE_20B7EC:    LDA $F6                     ; $20:B7EC: A5 F6       ;
CODE_20B7EE:    ORA $F7                     ; $20:B7EE: 05 F7       ;
CODE_20B7F0:    BIT #$20                    ; $20:B7F0: 89 20       ;
CODE_20B7F2:    BEQ CODE_20B805             ; $20:B7F2: F0 11       ;
CODE_20B7F4:    INC $072B                   ; $20:B7F4: EE 2B 07    ;
CODE_20B7F7:    LDA $072B                   ; $20:B7F7: AD 2B 07    ;
CODE_20B7FA:    CMP #$03                    ; $20:B7FA: C9 03       ;
CODE_20B7FC:    BNE CODE_20B800             ; $20:B7FC: D0 02       ;
CODE_20B7FE:    LDA #$00                    ; $20:B7FE: A9 00       ;
CODE_20B800:    STA $072B                   ; $20:B800: 8D 2B 07    ;
CODE_20B803:    BRA CODE_20B81E             ; $20:B803: 80 19       ;

CODE_20B805:    LDX $072B                   ; $20:B805: AE 2B 07    ;
CODE_20B808:    AND #$08                    ; $20:B808: 29 08       ;
CODE_20B80A:    BEQ CODE_20B812             ; $20:B80A: F0 06       ;
CODE_20B80C:    DEX                         ; $20:B80C: CA          ;
CODE_20B80D:    BPL CODE_20B81B             ; $20:B80D: 10 0C       ;
CODE_20B80F:    INX                         ; $20:B80F: E8          ;
CODE_20B810:    BRA CODE_20B818             ; $20:B810: 80 06       ;

CODE_20B812:    INX                         ; $20:B812: E8          ;
CODE_20B813:    CPX #$03                    ; $20:B813: E0 03       ;
CODE_20B815:    BNE CODE_20B81B             ; $20:B815: D0 04       ;
CODE_20B817:    DEX                         ; $20:B817: CA          ;
CODE_20B818:    STZ $1203                   ; $20:B818: 9C 03 12    ;
CODE_20B81B:    STX $072B                   ; $20:B81B: 8E 2B 07    ;
CODE_20B81E:    LDX $072B                   ; $20:B81E: AE 2B 07    ;
CODE_20B821:    LDA #$48                    ; $20:B821: A9 48       ;
CODE_20B823:    STA $09F0                   ; $20:B823: 8D F0 09    ;
CODE_20B826:    LDA.l DATA_20B79B,x                 ; $20:B826: BF 9B B7 20 ;
CODE_20B82A:    STA $09F1                   ; $20:B82A: 8D F1 09    ;
CODE_20B82D:    LDA #$4F                    ; $20:B82D: A9 4F       ;
CODE_20B82F:    STA $09F2                   ; $20:B82F: 8D F2 09    ;
CODE_20B832:    LDA #$20                    ; $20:B832: A9 20       ;
CODE_20B834:    STA $09F3                   ; $20:B834: 8D F3 09    ;
CODE_20B837:    LDA #$00                    ; $20:B837: A9 00       ;
CODE_20B839:    STA $0A9C                   ; $20:B839: 8D 9C 0A    ;
CODE_20B83C:    JSR CODE_20B25E             ; $20:B83C: 20 5E B2    ;
CODE_20B83F:    JSR CODE_20B49D             ; $20:B83F: 20 9D B4    ;
CODE_20B842:    JMP CODE_20B850             ; $20:B842: 4C 50 B8    ;

CODE_20B845:    LDA $F8                     ; $20:B845: A5 F8       ;
CODE_20B847:    AND #$C0                    ; $20:B847: 29 C0       ;
CODE_20B849:    BEQ CODE_20B850             ; $20:B849: F0 05       ;
CODE_20B84B:    LDA #$01                    ; $20:B84B: A9 01       ;
CODE_20B84D:    STA $078E                   ; $20:B84D: 8D 8E 07    ;
CODE_20B850:    LDA $7FFB00                 ; $20:B850: AF 00 FB 7F ;
CODE_20B854:    STA $0727                   ; $20:B854: 8D 27 07    ;
CODE_20B857:    LDA $701FF4                 ; $20:B857: AF F4 1F 70 ;
CODE_20B85B:    BNE CODE_20B875             ; $20:B85B: D0 18       ;
CODE_20B85D:    LDA $701FF6                 ; $20:B85D: AF F6 1F 70 ;
CODE_20B861:    BEQ CODE_20B875             ; $20:B861: F0 12       ;
CODE_20B863:    LDA $F7                     ; $20:B863: A5 F7       ;
CODE_20B865:    AND #$10                    ; $20:B865: 29 10       ;
CODE_20B867:    BEQ CODE_20B875             ; $20:B867: F0 0C       ;
CODE_20B869:    LDA $072B                   ; $20:B869: AD 2B 07    ;
CODE_20B86C:    BNE CODE_20B895             ; $20:B86C: D0 27       ;
CODE_20B86E:    LDA #$2A                    ; $20:B86E: A9 2A       ;
CODE_20B870:    STA $1203                   ; $20:B870: 8D 03 12    ;
CODE_20B873:    BRA CODE_20B8DA             ; $20:B873: 80 65       ;

CODE_20B875:    LDA $F6                     ; $20:B875: A5 F6       ;
CODE_20B877:    ORA $F7                     ; $20:B877: 05 F7       ;
CODE_20B879:    AND #$10                    ; $20:B879: 29 10       ;
CODE_20B87B:    BNE CODE_20B895             ; $20:B87B: D0 18       ;
CODE_20B87D:    LDA $F4                     ; $20:B87D: A5 F4       ;
CODE_20B87F:    ORA $F5                     ; $20:B87F: 05 F5       ;
CODE_20B881:    AND #$40                    ; $20:B881: 29 40       ;
CODE_20B883:    BEQ CODE_20B889             ; $20:B883: F0 04       ;
CODE_20B885:    JML CODE_0080DE             ; $20:B885: 5C DE 80 00 ;

CODE_20B889:    LDA $F2                     ; $20:B889: A5 F2       ;
CODE_20B88B:    ORA $F3                     ; $20:B88B: 05 F3       ;
CODE_20B88D:    AND #$40                    ; $20:B88D: 29 40       ;
CODE_20B88F:    BEQ CODE_20B8DA             ; $20:B88F: F0 49       ;
CODE_20B891:    JML CODE_0080DE             ; $20:B891: 5C DE 80 00 ;

CODE_20B895:    LDA $072B                   ; $20:B895: AD 2B 07    ;
CODE_20B898:    CMP #$02                    ; $20:B898: C9 02       ;
CODE_20B89A:    BNE CODE_20B8AA             ; $20:B89A: D0 0E       ;
CODE_20B89C:    LDA $701FF4                 ; $20:B89C: AF F4 1F 70 ;
CODE_20B8A0:    BNE CODE_20B8DB             ; $20:B8A0: D0 39       ;
CODE_20B8A2:    LDA $701FF6                 ; $20:B8A2: AF F6 1F 70 ;
CODE_20B8A6:    CMP #$02                    ; $20:B8A6: C9 02       ;
CODE_20B8A8:    BNE CODE_20B8DB             ; $20:B8A8: D0 31       ;
CODE_20B8AA:    LDA #$29                    ; $20:B8AA: A9 29       ;
CODE_20B8AC:    STA $1203                   ; $20:B8AC: 8D 03 12    ;
CODE_20B8AF:    LDA $08F1                   ; $20:B8AF: AD F1 08    ;
CODE_20B8B2:    STA $BD                     ; $20:B8B2: 85 BD       ;
CODE_20B8B4:    LDA $701FF2                 ; $20:B8B4: AF F2 1F 70 ;
CODE_20B8B8:    BEQ CODE_20B8BE             ; $20:B8B8: F0 04       ;
CODE_20B8BA:    JML CODE_0080DE             ; $20:B8BA: 5C DE 80 00 ;

CODE_20B8BE:    JSR CODE_20A4B6             ; $20:B8BE: 20 B6 A4    ;
CODE_20B8C1:    INC $AD                     ; $20:B8C1: E6 AD       ;
CODE_20B8C3:    LDY #$F8                    ; $20:B8C3: A0 F8       ;
CODE_20B8C5:    LDA $AD                     ; $20:B8C5: A5 AD       ;
CODE_20B8C7:    AND #$18                    ; $20:B8C7: 29 18       ;
CODE_20B8C9:    BEQ CODE_20B8CD             ; $20:B8C9: F0 02       ;
CODE_20B8CB:    LDY $BD                     ; $20:B8CB: A4 BD       ;
CODE_20B8CD:    STY $08F1                   ; $20:B8CD: 8C F1 08    ;
CODE_20B8D0:    JSR CODE_20B49D             ; $20:B8D0: 20 9D B4    ;
CODE_20B8D3:    LDA $04E2                   ; $20:B8D3: AD E2 04    ;
CODE_20B8D6:    BNE CODE_20B8BE             ; $20:B8D6: D0 E6       ;
CODE_20B8D8:    INC $AC                     ; $20:B8D8: E6 AC       ;
CODE_20B8DA:    RTS                         ; $20:B8DA: 60          ;

CODE_20B8DB:    LDA #$2A                    ; $20:B8DB: A9 2A       ;
CODE_20B8DD:    STA $1203                   ; $20:B8DD: 8D 03 12    ;
CODE_20B8E0:    RTS                         ; $20:B8E0: 60          ;

CODE_20B8E1:    STZ $0747                   ; $20:B8E1: 9C 47 07    ;
CODE_20B8E4:    STZ $0748                   ; $20:B8E4: 9C 48 07    ;
CODE_20B8E7:    INC $072B                   ; $20:B8E7: EE 2B 07    ;
CODE_20B8EA:    LDA $0727                   ; $20:B8EA: AD 27 07    ;
CODE_20B8ED:    ASL A                       ; $20:B8ED: 0A          ;
CODE_20B8EE:    TAX                         ; $20:B8EE: AA          ;
CODE_20B8EF:    LDA.w DATA_21E3AD,x                 ; $20:B8EF: BD AD E3    ;
CODE_20B8F2:    STA $0A                     ; $20:B8F2: 85 0A       ;
CODE_20B8F4:    LDA.w DATA_21E3AD+1,x                   ; $20:B8F4: BD AE E3    ;
CODE_20B8F7:    STA $0B                     ; $20:B8F7: 85 0B       ;
CODE_20B8F9:    LDA.w DATA_21E3BD,x                 ; $20:B8F9: BD BD E3    ;
CODE_20B8FC:    STA $0C                     ; $20:B8FC: 85 0C       ;
CODE_20B8FE:    LDA.w DATA_21E3BD+1,x                   ; $20:B8FE: BD BE E3    ;
CODE_20B901:    STA $0D                     ; $20:B901: 85 0D       ;
CODE_20B903:    LDA.w DATA_21E3CD,x                 ; $20:B903: BD CD E3    ;
CODE_20B906:    STA $0E                     ; $20:B906: 85 0E       ;
CODE_20B908:    LDA.w DATA_21E3CD+1,x                   ; $20:B908: BD CE E3    ;
CODE_20B90B:    STA $0F                     ; $20:B90B: 85 0F       ;
CODE_20B90D:    LDA.w DATA_21E3DD,x                 ; $20:B90D: BD DD E3    ;
CODE_20B910:    STA $08                     ; $20:B910: 85 08       ;
CODE_20B912:    LDA.w DATA_21E3DD+1,x                   ; $20:B912: BD DE E3    ;
CODE_20B915:    STA $09                     ; $20:B915: 85 09       ;
CODE_20B917:    LDY #$08                    ; $20:B917: A0 08       ;
CODE_20B919:    LDA ($0A),y                 ; $20:B919: B1 0A       ;
CODE_20B91B:    STA $1EED,y                 ; $20:B91B: 99 ED 1E    ;
CODE_20B91E:    LDA ($0C),y                 ; $20:B91E: B1 0C       ;
CODE_20B920:    STA $1F09,y                 ; $20:B920: 99 09 1F    ;
CODE_20B923:    LDA ($0E),y                 ; $20:B923: B1 0E       ;
CODE_20B925:    STA $1EFB,y                 ; $20:B925: 99 FB 1E    ;
CODE_20B928:    LDA ($08),y                 ; $20:B928: B1 08       ;
CODE_20B92A:    STA $1F17,y                 ; $20:B92A: 99 17 1F    ;
CODE_20B92D:    DEY                         ; $20:B92D: 88          ;
CODE_20B92E:    BPL CODE_20B919             ; $20:B92E: 10 E9       ;
CODE_20B930:    INC $AC                     ; $20:B930: E6 AC       ;
CODE_20B932:    REP #$20                    ; $20:B932: C2 20       ;
CODE_20B934:    LDX #$44                    ; $20:B934: A2 44       ;
CODE_20B936:    LDA #$0000                  ; $20:B936: A9 00 00    ;
CODE_20B939:    STA $1D80,x                 ; $20:B939: 9D 80 1D    ;
CODE_20B93C:    DEX                         ; $20:B93C: CA          ;
CODE_20B93D:    DEX                         ; $20:B93D: CA          ;
CODE_20B93E:    BPL CODE_20B939             ; $20:B93E: 10 F9       ;
CODE_20B940:    SEP #$20                    ; $20:B940: E2 20       ;
CODE_20B942:    RTS                         ; $20:B942: 60          ;

CODE_20B943:    JSR CODE_20C520             ; $20:B943: 20 20 C5    ;
CODE_20B946:    LDA $F3                     ; $20:B946: A5 F3       ;
CODE_20B948:    AND #$C1                    ; $20:B948: 29 C1       ;
CODE_20B94A:    CMP #$C1                    ; $20:B94A: C9 C1       ;
CODE_20B94C:    BNE CODE_20B951             ; $20:B94C: D0 03       ;
CODE_20B94E:    JMP CODE_20CB96             ; $20:B94E: 4C 96 CB    ;

CODE_20B951:    LDA $F3                     ; $20:B951: A5 F3       ;
CODE_20B953:    AND #$C4                    ; $20:B953: 29 C4       ;
CODE_20B955:    CMP #$C4                    ; $20:B955: C9 C4       ;
CODE_20B957:    BNE CODE_20B95C             ; $20:B957: D0 03       ;
CODE_20B959:    JMP CODE_20C617             ; $20:B959: 4C 17 C6    ;

CODE_20B95C:    LDA $18                     ; $20:B95C: A5 18       ;
CODE_20B95E:    AND #$0C                    ; $20:B95E: 29 0C       ;
CODE_20B960:    BEQ CODE_20B975             ; $20:B960: F0 13       ;
CODE_20B962:    LSR A                       ; $20:B962: 4A          ;
CODE_20B963:    LSR A                       ; $20:B963: 4A          ;
CODE_20B964:    LSR A                       ; $20:B964: 4A          ;
CODE_20B965:    TAX                         ; $20:B965: AA          ;
CODE_20B966:    LDA $03FE                   ; $20:B966: AD FE 03    ;
CODE_20B969:    CLC                         ; $20:B969: 18          ;
CODE_20B96A:    ADC.w DATA_20A4B0,x                 ; $20:B96A: 7D B0 A4    ;
CODE_20B96D:    AND #$07                    ; $20:B96D: 29 07       ;
CODE_20B96F:    STA $03FE                   ; $20:B96F: 8D FE 03    ;
CODE_20B972:    JMP CODE_20BA1F             ; $20:B972: 4C 1F BA    ;

CODE_20B975:    LDA $18                     ; $20:B975: A5 18       ;
CODE_20B977:    AND #$20                    ; $20:B977: 29 20       ;
CODE_20B979:    BEQ CODE_20B986             ; $20:B979: F0 0B       ;
CODE_20B97B:    INC $072B                   ; $20:B97B: EE 2B 07    ;
CODE_20B97E:    LDA $072B                   ; $20:B97E: AD 2B 07    ;
CODE_20B981:    AND #$01                    ; $20:B981: 29 01       ;
CODE_20B983:    STA $072B                   ; $20:B983: 8D 2B 07    ;
CODE_20B986:    LDY $072B                   ; $20:B986: AC 2B 07    ;
CODE_20B989:    LDA #$48                    ; $20:B989: A9 48       ;
CODE_20B98B:    STA $09F0                   ; $20:B98B: 8D F0 09    ;
CODE_20B98E:    LDA DATA_20B79B,y                   ; $20:B98E: B9 9B B7    ;
CODE_20B991:    STA $09F1                   ; $20:B991: 8D F1 09    ;
CODE_20B994:    LDA #$4F                    ; $20:B994: A9 4F       ;
CODE_20B996:    STA $09F2                   ; $20:B996: 8D F2 09    ;
CODE_20B999:    LDA #$20                    ; $20:B999: A9 20       ;
CODE_20B99B:    STA $09F3                   ; $20:B99B: 8D F3 09    ;
CODE_20B99E:    LDA #$00                    ; $20:B99E: A9 00       ;
CODE_20B9A0:    STA $0A9C                   ; $20:B9A0: 8D 9C 0A    ;
CODE_20B9A3:    LDA $18                     ; $20:B9A3: A5 18       ;
CODE_20B9A5:    AND #$80                    ; $20:B9A5: 29 80       ;
CODE_20B9A7:    BEQ CODE_20B9D7             ; $20:B9A7: F0 2E       ;
CODE_20B9A9:    LDA $0736                   ; $20:B9A9: AD 36 07    ;
CODE_20B9AC:    CMP #$63                    ; $20:B9AC: C9 63       ;
CODE_20B9AE:    BEQ CODE_20B9B9             ; $20:B9AE: F0 09       ;
CODE_20B9B0:    LDA $0736                   ; $20:B9B0: AD 36 07    ;
CODE_20B9B3:    CLC                         ; $20:B9B3: 18          ;
CODE_20B9B4:    ADC #$05                    ; $20:B9B4: 69 05       ;
CODE_20B9B6:    STA $0736                   ; $20:B9B6: 8D 36 07    ;
CODE_20B9B9:    REP #$20                    ; $20:B9B9: C2 20       ;
CODE_20B9BB:    LDA #$1401                  ; $20:B9BB: A9 01 14    ;
CODE_20B9BE:    STA $1602                   ; $20:B9BE: 8D 02 16    ;
CODE_20B9C1:    LDA #$0100                  ; $20:B9C1: A9 00 01    ;
CODE_20B9C4:    STA $1604                   ; $20:B9C4: 8D 04 16    ;
CODE_20B9C7:    LDA $0736                   ; $20:B9C7: AD 36 07    ;
CODE_20B9CA:    AND #$00FF                  ; $20:B9CA: 29 FF 00    ;
CODE_20B9CD:    STA $1606                   ; $20:B9CD: 8D 06 16    ;
CODE_20B9D0:    SEP #$20                    ; $20:B9D0: E2 20       ;
CODE_20B9D2:    LDA #$FF                    ; $20:B9D2: A9 FF       ;
CODE_20B9D4:    STA $1608                   ; $20:B9D4: 8D 08 16    ;
CODE_20B9D7:    LDA $18                     ; $20:B9D7: A5 18       ;
CODE_20B9D9:    AND #$10                    ; $20:B9D9: 29 10       ;
CODE_20B9DB:    BEQ CODE_20BA1F             ; $20:B9DB: F0 42       ;
CODE_20B9DD:    LDA #$80                    ; $20:B9DD: A9 80       ;
CODE_20B9DF:    STA $0160                   ; $20:B9DF: 8D 60 01    ;
CODE_20B9E2:    LDA #$04                    ; $20:B9E2: A9 04       ;
CODE_20B9E4:    STA $AC                     ; $20:B9E4: 85 AC       ;
CODE_20B9E6:    LDX $072B                   ; $20:B9E6: AE 2B 07    ;
CODE_20B9E9:    LDY $0736                   ; $20:B9E9: AC 36 07    ;
CODE_20B9EC:    TYA                         ; $20:B9EC: 98          ;
CODE_20B9ED:    STA $0736,x                 ; $20:B9ED: 9D 36 07    ;
CODE_20B9F0:    LDA #$00                    ; $20:B9F0: A9 00       ;
CODE_20B9F2:    STA $0747,x                 ; $20:B9F2: 9D 47 07    ;
CODE_20B9F5:    DEX                         ; $20:B9F5: CA          ;
CODE_20B9F6:    BPL CODE_20B9EC             ; $20:B9F6: 10 F4       ;
CODE_20B9F8:    LDA $03FE                   ; $20:B9F8: AD FE 03    ;
CODE_20B9FB:    STA $0727                   ; $20:B9FB: 8D 27 07    ;
CODE_20B9FE:    LDX #$1B                    ; $20:B9FE: A2 1B       ;
CODE_20BA00:    LDA #$08                    ; $20:BA00: A9 08       ;
CODE_20BA02:    STA $1D80,x                 ; $20:BA02: 9D 80 1D    ;
CODE_20BA05:    STA $1DA3,x                 ; $20:BA05: 9D A3 1D    ;
CODE_20BA08:    DEX                         ; $20:BA08: CA          ;
CODE_20BA09:    BPL CODE_20BA02             ; $20:BA09: 10 F7       ;
CODE_20BA0B:    LDX #$0D                    ; $20:BA0B: A2 0D       ;
CODE_20BA0D:    LDA #$0C                    ; $20:BA0D: A9 0C       ;
CODE_20BA0F:    STA $1D80,x                 ; $20:BA0F: 9D 80 1D    ;
CODE_20BA12:    STA $1DA3,x                 ; $20:BA12: 9D A3 1D    ;
CODE_20BA15:    TXA                         ; $20:BA15: 8A          ;
CODE_20BA16:    STA $1D7F,x                 ; $20:BA16: 9D 7F 1D    ;
CODE_20BA19:    STA $1DA2,x                 ; $20:BA19: 9D A2 1D    ;
CODE_20BA1C:    DEX                         ; $20:BA1C: CA          ;
CODE_20BA1D:    BNE CODE_20BA15             ; $20:BA1D: D0 F6       ;
CODE_20BA1F:    LDA $03FE                   ; $20:BA1F: AD FE 03    ;
CODE_20BA22:    ASL A                       ; $20:BA22: 0A          ;
CODE_20BA23:    ASL A                       ; $20:BA23: 0A          ;
CODE_20BA24:    ASL A                       ; $20:BA24: 0A          ;
CODE_20BA25:    ASL A                       ; $20:BA25: 0A          ;
CODE_20BA26:    CLC                         ; $20:BA26: 18          ;
CODE_20BA27:    ADC #$30                    ; $20:BA27: 69 30       ;
CODE_20BA29:    STA $0851                   ; $20:BA29: 8D 51 08    ;
CODE_20BA2C:    LDA #$6F                    ; $20:BA2C: A9 6F       ;
CODE_20BA2E:    STA $0852                   ; $20:BA2E: 8D 52 08    ;
CODE_20BA31:    LDA #$00                    ; $20:BA31: A9 00       ;
CODE_20BA33:    STA $0853                   ; $20:BA33: 8D 53 08    ;
CODE_20BA36:    LDA #$20                    ; $20:BA36: A9 20       ;
CODE_20BA38:    STA $0850                   ; $20:BA38: 8D 50 08    ;
CODE_20BA3B:    LDA #$00                    ; $20:BA3B: A9 00       ;
CODE_20BA3D:    STA $0A34                   ; $20:BA3D: 8D 34 0A    ;
CODE_20BA40:    RTS                         ; $20:BA40: 60          ;

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

CODE_20BB4D:    JSL CODE_22E0A9             ; $20:BB4D: 22 A9 E0 22 ;
CODE_20BB51:    LDA $0510                   ; $20:BB51: AD 10 05    ;
CODE_20BB54:    AND #$F0                    ; $20:BB54: 29 F0       ;
CODE_20BB56:    SEC                         ; $20:BB56: 38          ;
CODE_20BB57:    SBC #$90                    ; $20:BB57: E9 90       ;
CODE_20BB59:    STA $0510                   ; $20:BB59: 8D 10 05    ;
CODE_20BB5C:    LDA #$10                    ; $20:BB5C: A9 10       ;
CODE_20BB5E:    STA $91                     ; $20:BB5E: 85 91       ;
CODE_20BB60:    LDA #$40                    ; $20:BB60: A9 40       ;
CODE_20BB62:    STA $92                     ; $20:BB62: 85 92       ;
CODE_20BB64:    LDX #$01                    ; $20:BB64: A2 01       ;
CODE_20BB66:    STX $9F                     ; $20:BB66: 86 9F       ;
CODE_20BB68:    LDA $9E                     ; $20:BB68: A5 9E       ;
CODE_20BB6A:    BEQ CODE_20BB95             ; $20:BB6A: F0 29       ;
CODE_20BB6C:    LDA #$08                    ; $20:BB6C: A9 08       ;
CODE_20BB6E:    LDY $0512                   ; $20:BB6E: AC 12 05    ;
CODE_20BB71:    BEQ CODE_20BB78             ; $20:BB71: F0 05       ;
CODE_20BB73:    DEC $0512                   ; $20:BB73: CE 12 05    ;
CODE_20BB76:    LDA #$00                    ; $20:BB76: A9 00       ;
CODE_20BB78:    STA $63,x                   ; $20:BB78: 95 63       ;
CODE_20BB7A:    LDA.l DATA_20BB49,x                 ; $20:BB7A: BF 49 BB 20 ;
CODE_20BB7E:    STA $53,x                   ; $20:BB7E: 95 53       ;
CODE_20BB80:    LDA #$A0                    ; $20:BB80: A9 A0       ;
CODE_20BB82:    STA $5B,x                   ; $20:BB82: 95 5B       ;
CODE_20BB84:    LDA.l DATA_20BB4B,x                 ; $20:BB84: BF 4B BB 20 ;
CODE_20BB88:    STA $85,x                   ; $20:BB88: 95 85       ;
CODE_20BB8A:    JSR CODE_20BD2F             ; $20:BB8A: 20 2F BD    ;
CODE_20BB8D:    JSR CODE_20BE94             ; $20:BB8D: 20 94 BE    ;
CODE_20BB90:    STZ $63,x                   ; $20:BB90: 74 63       ;
CODE_20BB92:    JMP CODE_20BBC6             ; $20:BB92: 4C C6 BB    ;

CODE_20BB95:    JSR CODE_20BBD3             ; $20:BB95: 20 D3 BB    ;
CODE_20BB98:    JSR CODE_20BC62             ; $20:BB98: 20 62 BC    ;
CODE_20BB9B:    JSR CODE_20BD2F             ; $20:BB9B: 20 2F BD    ;
CODE_20BB9E:    JSR CODE_20C027             ; $20:BB9E: 20 27 C0    ;
CODE_20BBA1:    JSR CODE_20C059             ; $20:BBA1: 20 59 C0    ;
CODE_20BBA4:    LDA $0511                   ; $20:BBA4: AD 11 05    ;
CODE_20BBA7:    BNE CODE_20BBAC             ; $20:BBA7: D0 03       ;
CODE_20BBA9:    JSR CODE_20BE94             ; $20:BBA9: 20 94 BE    ;
CODE_20BBAC:    LDA $43,x                   ; $20:BBAC: B5 43       ;
CODE_20BBAE:    BEQ CODE_20BBC6             ; $20:BBAE: F0 16       ;
CODE_20BBB0:    BPL CODE_20BBBC             ; $20:BBB0: 10 0A       ;
CODE_20BBB2:    LDA $53,x                   ; $20:BBB2: B5 53       ;
CODE_20BBB4:    CMP #$C0                    ; $20:BBB4: C9 C0       ;
CODE_20BBB6:    BCS CODE_20BBC6                     ; $20:BBB6: B0 0E       ;
CODE_20BBB8:    LDA #$C0                    ; $20:BBB8: A9 C0       ;
CODE_20BBBA:    BRA CODE_20BBC4             ; $20:BBBA: 80 08       ;

CODE_20BBBC:    LDA $53,x                   ; $20:BBBC: B5 53       ;
CODE_20BBBE:    CMP #$40                    ; $20:BBBE: C9 40       ;
CODE_20BBC0:    BCC CODE_20BBC6             ; $20:BBC0: 90 04       ;
CODE_20BBC2:    LDA #$3F                    ; $20:BBC2: A9 3F       ;
CODE_20BBC4:    STA $53,x                   ; $20:BBC4: 95 53       ;
CODE_20BBC6:    DEX                         ; $20:BBC6: CA          ;
CODE_20BBC7:    BPL CODE_20BB66             ; $20:BBC7: 10 9D       ;
CODE_20BBC9:    JSR CODE_20C0E7             ; $20:BBC9: 20 E7 C0    ;
CODE_20BBCC:    RTS                         ; $20:BBCC: 60          ;

DATA_20BBCD:        db $FF,$00,$01

DATA_20BBD0:        db $60,$E0,$70

CODE_20BBD3:    PHB                         ; $20:BBD3: 8B          ;
CODE_20BBD4:    PHK                         ; $20:BBD4: 4B          ;
CODE_20BBD5:    PLB                         ; $20:BBD5: AB          ;
CODE_20BBD6:    LDY #$02                    ; $20:BBD6: A0 02       ;
CODE_20BBD8:    LDA $63,x                   ; $20:BBD8: B5 63       ;
CODE_20BBDA:    BPL CODE_20BBE3             ; $20:BBDA: 10 07       ;
CODE_20BBDC:    EOR #$FF                    ; $20:BBDC: 49 FF       ;
CODE_20BBDE:    CLC                         ; $20:BBDE: 18          ;
CODE_20BBDF:    ADC #$01                    ; $20:BBDF: 69 01       ;
CODE_20BBE1:    LDY #$01                    ; $20:BBE1: A0 01       ;
CODE_20BBE3:    BNE CODE_20BBE6             ; $20:BBE3: D0 01       ;
CODE_20BBE5:    TAY                         ; $20:BBE5: A8          ;
CODE_20BBE6:    STA $0E                     ; $20:BBE6: 85 0E       ;
CODE_20BBE8:    STY $87,x                   ; $20:BBE8: 94 87       ;
CODE_20BBEA:    LDY #$18                    ; $20:BBEA: A0 18       ;
CODE_20BBEC:    LDA $B8,x                   ; $20:BBEC: B5 B8       ;
CODE_20BBEE:    AND #$40                    ; $20:BBEE: 29 40       ;
CODE_20BBF0:    BEQ CODE_20BBF4             ; $20:BBF0: F0 02       ;
CODE_20BBF2:    LDY #$28                    ; $20:BBF2: A0 28       ;
CODE_20BBF4:    STY $0D                     ; $20:BBF4: 84 0D       ;
CODE_20BBF6:    LDY #$00                    ; $20:BBF6: A0 00       ;
CODE_20BBF8:    LDA $B8,x                   ; $20:BBF8: B5 B8       ;
CODE_20BBFA:    AND #$03                    ; $20:BBFA: 29 03       ;
CODE_20BBFC:    BNE CODE_20BC0A             ; $20:BBFC: D0 0C       ;
CODE_20BBFE:    LDA $83,x                   ; $20:BBFE: B5 83       ;
CODE_20BC00:    BNE CODE_20BC52             ; $20:BC00: D0 50       ;
CODE_20BC02:    LDA $63,x                   ; $20:BC02: B5 63       ;
CODE_20BC04:    BEQ CODE_20BC52             ; $20:BC04: F0 4C       ;
CODE_20BC06:    BMI CODE_20BC24             ; $20:BC06: 30 1C       ;
CODE_20BC08:    BPL CODE_20BC3C             ; $20:BC08: 10 32       ;
CODE_20BC0A:    INY                         ; $20:BC0A: C8          ;
CODE_20BC0B:    INY                         ; $20:BC0B: C8          ;
CODE_20BC0C:    AND $87,x                   ; $20:BC0C: 35 87       ;
CODE_20BC0E:    BNE CODE_20BC1E             ; $20:BC0E: D0 0E       ;
CODE_20BC10:    DEY                         ; $20:BC10: 88          ;
CODE_20BC11:    LDA $0E                     ; $20:BC11: A5 0E       ;
CODE_20BC13:    CMP $0D                     ; $20:BC13: C5 0D       ;
CODE_20BC15:    BEQ CODE_20BC52             ; $20:BC15: F0 3B       ;
CODE_20BC17:    BMI CODE_20BC1E             ; $20:BC17: 30 05       ;
CODE_20BC19:    LDA $83,x                   ; $20:BC19: B5 83       ;
CODE_20BC1B:    BNE CODE_20BC52             ; $20:BC1B: D0 35       ;
CODE_20BC1D:    DEY                         ; $20:BC1D: 88          ;
CODE_20BC1E:    LDA $B8,x                   ; $20:BC1E: B5 B8       ;
CODE_20BC20:    AND #$01                    ; $20:BC20: 29 01       ;
CODE_20BC22:    BNE CODE_20BC3C             ; $20:BC22: D0 18       ;
CODE_20BC24:    LDA #$00                    ; $20:BC24: A9 00       ;
CODE_20BC26:    SEC                         ; $20:BC26: 38          ;
CODE_20BC27:    SBC DATA_20BBD0,y                   ; $20:BC27: F9 D0 BB    ;
CODE_20BC2A:    STA $00                     ; $20:BC2A: 85 00       ;
CODE_20BC2C:    LDA DATA_20BBCD,y                   ; $20:BC2C: B9 CD BB    ;
CODE_20BC2F:    EOR #$FF                    ; $20:BC2F: 49 FF       ;
CODE_20BC31:    STA $01                     ; $20:BC31: 85 01       ;
CODE_20BC33:    LDA $00                     ; $20:BC33: A5 00       ;
CODE_20BC35:    BNE CODE_20BC46             ; $20:BC35: D0 0F       ;
CODE_20BC37:    INC $01                     ; $20:BC37: E6 01       ;
CODE_20BC39:    JMP CODE_20BC46             ; $20:BC39: 4C 46 BC    ;

CODE_20BC3C:    LDA DATA_20BBD0,y                   ; $20:BC3C: B9 D0 BB    ;
CODE_20BC3F:    STA $00                     ; $20:BC3F: 85 00       ;
CODE_20BC41:    LDA DATA_20BBCD,y                   ; $20:BC41: B9 CD BB    ;
CODE_20BC44:    STA $01                     ; $20:BC44: 85 01       ;
CODE_20BC46:    LDA $00                     ; $20:BC46: A5 00       ;
CODE_20BC48:    CLC                         ; $20:BC48: 18          ;
CODE_20BC49:    ADC $0510                   ; $20:BC49: 6D 10 05    ;
CODE_20BC4C:    LDA $63,x                   ; $20:BC4C: B5 63       ;
CODE_20BC4E:    ADC $01                     ; $20:BC4E: 65 01       ;
CODE_20BC50:    STA $63,x                   ; $20:BC50: 95 63       ;
CODE_20BC52:    JSR CODE_20BCDF             ; $20:BC52: 20 DF BC    ;
CODE_20BC55:    PLB                         ; $20:BC55: AB          ;
CODE_20BC56:    RTS                         ; $20:BC56: 60          ;

DATA_20BC57:        db $D0,$CE,$CC,$CA,$CA,$CA

DATA_20BC5D:        db $C8

DATA_20BC5E:        db $00,$02,$04,$08                 

CODE_20BC62:    PHB                         ; $20:BC62: 8B          ;
CODE_20BC63:    PHK                         ; $20:BC63: 4B          ;
CODE_20BC64:    PLB                         ; $20:BC64: AB          ;
CODE_20BC65:    LDA $BA,x                   ; $20:BC65: B5 BA       ;
CODE_20BC67:    AND #$80                    ; $20:BC67: 29 80       ;
CODE_20BC69:    STA $00                     ; $20:BC69: 85 00       ;
CODE_20BC6B:    BEQ CODE_20BC90             ; $20:BC6B: F0 23       ;
CODE_20BC6D:    LDA $83,x                   ; $20:BC6D: B5 83       ;
CODE_20BC6F:    BNE CODE_20BC90             ; $20:BC6F: D0 1F       ;
CODE_20BC71:    LDA $63,x                   ; $20:BC71: B5 63       ;
CODE_20BC73:    BPL CODE_20BC7A             ; $20:BC73: 10 05       ;
CODE_20BC75:    EOR #$FF                    ; $20:BC75: 49 FF       ;
CODE_20BC77:    CLC                         ; $20:BC77: 18          ;
CODE_20BC78:    ADC #$01                    ; $20:BC78: 69 01       ;
CODE_20BC7A:    LSR A                       ; $20:BC7A: 4A          ;
CODE_20BC7B:    LSR A                       ; $20:BC7B: 4A          ;
CODE_20BC7C:    LSR A                       ; $20:BC7C: 4A          ;
CODE_20BC7D:    LSR A                       ; $20:BC7D: 4A          ;
CODE_20BC7E:    TAY                         ; $20:BC7E: A8          ;
CODE_20BC7F:    LDA.w DATA_20BC5D               ; $20:BC7F: AD 5D BC    ;
CODE_20BC82:    SEC                         ; $20:BC82: 38          ;
CODE_20BC83:    SBC DATA_20BC5E,y                   ; $20:BC83: F9 5E BC    ;
CODE_20BC86:    STA $6B,x                   ; $20:BC86: 95 6B       ;
CODE_20BC88:    LDA #$01                    ; $20:BC88: A9 01       ;
CODE_20BC8A:    STA $83,x                   ; $20:BC8A: 95 83       ;
CODE_20BC8C:    LDA #$00                    ; $20:BC8C: A9 00       ;
CODE_20BC8E:    STA $95,x                   ; $20:BC8E: 95 95       ;
CODE_20BC90:    LDA $83,x                   ; $20:BC90: B5 83       ;
CODE_20BC92:    BEQ CODE_20BCC0             ; $20:BC92: F0 2C       ;
CODE_20BC94:    LDY #$05                    ; $20:BC94: A0 05       ;
CODE_20BC96:    LDA $6B,x                   ; $20:BC96: B5 6B       ;
CODE_20BC98:    CMP #$E0                    ; $20:BC98: C9 E0       ;
CODE_20BC9A:    BPL CODE_20BCA4             ; $20:BC9A: 10 08       ;
CODE_20BC9C:    LDA $B8,x                   ; $20:BC9C: B5 B8       ;
CODE_20BC9E:    AND #$80                    ; $20:BC9E: 29 80       ;
CODE_20BCA0:    BEQ CODE_20BCA4             ; $20:BCA0: F0 02       ;
CODE_20BCA2:    LDY #$01                    ; $20:BCA2: A0 01       ;
CODE_20BCA4:    TYA                         ; $20:BCA4: 98          ;
CODE_20BCA5:    CLC                         ; $20:BCA5: 18          ;
CODE_20BCA6:    ADC $6B,x                   ; $20:BCA6: 75 6B       ;
CODE_20BCA8:    STA $6B,x                   ; $20:BCA8: 95 6B       ;
CODE_20BCAA:    LDA $8F,x                   ; $20:BCAA: B5 8F       ;
CODE_20BCAC:    CMP #$02                    ; $20:BCAC: C9 02       ;
CODE_20BCAE:    BNE CODE_20BCC0             ; $20:BCAE: D0 10       ;
CODE_20BCB0:    LDA $B8,x                   ; $20:BCB0: B5 B8       ;
CODE_20BCB2:    AND #$80                    ; $20:BCB2: 29 80       ;
CODE_20BCB4:    BEQ CODE_20BCC0             ; $20:BCB4: F0 0A       ;
CODE_20BCB6:    LDA $6B,x                   ; $20:BCB6: B5 6B       ;
CODE_20BCB8:    CMP #$08                    ; $20:BCB8: C9 08       ;
CODE_20BCBA:    BMI CODE_20BCC0             ; $20:BCBA: 30 04       ;
CODE_20BCBC:    LDA #$08                    ; $20:BCBC: A9 08       ;
CODE_20BCBE:    STA $6B,x                   ; $20:BCBE: 95 6B       ;
CODE_20BCC0:    JSR CODE_20BD0E             ; $20:BCC0: 20 0E BD    ;
CODE_20BCC3:    LDA $4B,x                   ; $20:BCC3: B5 4B       ;
CODE_20BCC5:    BEQ CODE_20BCCD             ; $20:BCC5: F0 06       ;
CODE_20BCC7:    LDA #$20                    ; $20:BCC7: A9 20       ;
CODE_20BCC9:    STA $6B,x                   ; $20:BCC9: 95 6B       ;
CODE_20BCCB:    BNE CODE_20BCDD             ; $20:BCCB: D0 10       ;
CODE_20BCCD:    LDA $5B,x                   ; $20:BCCD: B5 5B       ;
CODE_20BCCF:    CMP #$A0                    ; $20:BCCF: C9 A0       ;
CODE_20BCD1:    BCC CODE_20BCDD             ; $20:BCD1: 90 0A       ;
CODE_20BCD3:    LDA #$A0                    ; $20:BCD3: A9 A0       ;
CODE_20BCD5:    STA $5B,x                   ; $20:BCD5: 95 5B       ;
CODE_20BCD7:    LDA #$00                    ; $20:BCD7: A9 00       ;
CODE_20BCD9:    STA $83,x                   ; $20:BCD9: 95 83       ;
CODE_20BCDB:    STA $6B,x                   ; $20:BCDB: 95 6B       ;
CODE_20BCDD:    PLB                         ; $20:BCDD: AB          ;
CODE_20BCDE:    RTS                         ; $20:BCDE: 60          ;

CODE_20BCDF:    LDA $63,x                   ; $20:BCDF: B5 63       ;
CODE_20BCE1:    PHA                         ; $20:BCE1: 48          ;
CODE_20BCE2:    ASL A                       ; $20:BCE2: 0A          ;
CODE_20BCE3:    ASL A                       ; $20:BCE3: 0A          ;
CODE_20BCE4:    ASL A                       ; $20:BCE4: 0A          ;
CODE_20BCE5:    ASL A                       ; $20:BCE5: 0A          ;
CODE_20BCE6:    STA $0B                     ; $20:BCE6: 85 0B       ;
CODE_20BCE8:    LDY #$00                    ; $20:BCE8: A0 00       ;
CODE_20BCEA:    PLA                         ; $20:BCEA: 68          ;
CODE_20BCEB:    LSR A                       ; $20:BCEB: 4A          ;
CODE_20BCEC:    LSR A                       ; $20:BCEC: 4A          ;
CODE_20BCED:    LSR A                       ; $20:BCED: 4A          ;
CODE_20BCEE:    LSR A                       ; $20:BCEE: 4A          ;
CODE_20BCEF:    CMP #$08                    ; $20:BCEF: C9 08       ;
CODE_20BCF1:    BCC CODE_20BCF6             ; $20:BCF1: 90 03       ;
CODE_20BCF3:    DEY                         ; $20:BCF3: 88          ;
CODE_20BCF4:    ORA #$F0                    ; $20:BCF4: 09 F0       ;
CODE_20BCF6:    STA $0A                     ; $20:BCF6: 85 0A       ;
CODE_20BCF8:    STY $0C                     ; $20:BCF8: 84 0C       ;
CODE_20BCFA:    LDA $73,x                   ; $20:BCFA: B5 73       ;
CODE_20BCFC:    CLC                         ; $20:BCFC: 18          ;
CODE_20BCFD:    ADC $0B                     ; $20:BCFD: 65 0B       ;
CODE_20BCFF:    STA $73,x                   ; $20:BCFF: 95 73       ;
CODE_20BD01:    LDA $53,x                   ; $20:BD01: B5 53       ;
CODE_20BD03:    ADC $0A                     ; $20:BD03: 65 0A       ;
CODE_20BD05:    STA $53,x                   ; $20:BD05: 95 53       ;
CODE_20BD07:    LDA $43,x                   ; $20:BD07: B5 43       ;
CODE_20BD09:    ADC $0C                     ; $20:BD09: 65 0C       ;
CODE_20BD0B:    STA $43,x                   ; $20:BD0B: 95 43       ;
CODE_20BD0D:    RTS                         ; $20:BD0D: 60          ;

CODE_20BD0E:    LDA $6B,x                   ; $20:BD0E: B5 6B       ;
CODE_20BD10:    BMI CODE_20BD1A             ; $20:BD10: 30 08       ;
CODE_20BD12:    CMP #$40                    ; $20:BD12: C9 40       ;
CODE_20BD14:    BMI CODE_20BD1A             ; $20:BD14: 30 04       ;
CODE_20BD16:    LDA #$40                    ; $20:BD16: A9 40       ;
CODE_20BD18:    STA $6B,x                   ; $20:BD18: 95 6B       ;
CODE_20BD1A:    TXA                         ; $20:BD1A: 8A          ;
CODE_20BD1B:    PHA                         ; $20:BD1B: 48          ;
CODE_20BD1C:    CLC                         ; $20:BD1C: 18          ;
CODE_20BD1D:    ADC #$08                    ; $20:BD1D: 69 08       ;
CODE_20BD1F:    TAX                         ; $20:BD1F: AA          ;
CODE_20BD20:    JSR CODE_20BCDF             ; $20:BD20: 20 DF BC    ;
CODE_20BD23:    PLA                         ; $20:BD23: 68          ;
CODE_20BD24:    TAX                         ; $20:BD24: AA          ;
CODE_20BD25:    RTS                         ; $20:BD25: 60          ;

DATA_20BD26:        db $07,$06,$05,$04,$03,$02,$01,$01
                    db $01
        
CODE_20BD2F:    PHB                     ; $20:BD2F: 8B          ;
CODE_20BD30:    PHK                         ; $20:BD30: 4B          ;
CODE_20BD31:    PLB                         ; $20:BD31: AB          ;
CODE_20BD32:    LDA $63,x                   ; $20:BD32: B5 63       ;
CODE_20BD34:    BPL CODE_20BD3B             ; $20:BD34: 10 05       ;
CODE_20BD36:    EOR #$FF                    ; $20:BD36: 49 FF       ;
CODE_20BD38:    CLC                         ; $20:BD38: 18          ;
CODE_20BD39:    ADC #$01                    ; $20:BD39: 69 01       ;
CODE_20BD3B:    LSR A                       ; $20:BD3B: 4A          ;
CODE_20BD3C:    LSR A                       ; $20:BD3C: 4A          ;
CODE_20BD3D:    LSR A                       ; $20:BD3D: 4A          ;
CODE_20BD3E:    TAY                         ; $20:BD3E: A8          ;
CODE_20BD3F:    INC $8B,x                   ; $20:BD3F: F6 8B       ;
CODE_20BD41:    LDA $8B,x                   ; $20:BD41: B5 8B       ;
CODE_20BD43:    CMP DATA_20BD26,y                   ; $20:BD43: D9 26 BD    ;
CODE_20BD46:    BMI CODE_20BD58             ; $20:BD46: 30 10       ;
CODE_20BD48:    LDA #$00                    ; $20:BD48: A9 00       ;
CODE_20BD4A:    STA $8B,x                   ; $20:BD4A: 95 8B       ;
CODE_20BD4C:    INC $89,x                   ; $20:BD4C: F6 89       ;
CODE_20BD4E:    LDA $89,x                   ; $20:BD4E: B5 89       ;
CODE_20BD50:    CMP #$04                    ; $20:BD50: C9 04       ;
CODE_20BD52:    BMI CODE_20BD58             ; $20:BD52: 30 04       ;
CODE_20BD54:    LDA #$00                    ; $20:BD54: A9 00       ;
CODE_20BD56:    STA $89,x                   ; $20:BD56: 95 89       ;
CODE_20BD58:    LDA $B8,x                   ; $20:BD58: B5 B8       ;
CODE_20BD5A:    AND #$03                    ; $20:BD5A: 29 03       ;
CODE_20BD5C:    BNE CODE_20BD66             ; $20:BD5C: D0 08       ;
CODE_20BD5E:    LDA $63,x                   ; $20:BD5E: B5 63       ;
CODE_20BD60:    BNE CODE_20BD66             ; $20:BD60: D0 04       ;
CODE_20BD62:    LDA #$02                    ; $20:BD62: A9 02       ;
CODE_20BD64:    STA $89,x                   ; $20:BD64: 95 89       ;
CODE_20BD66:    LDA $85,x                   ; $20:BD66: B5 85       ;
CODE_20BD68:    STA $00                     ; $20:BD68: 85 00       ;
CODE_20BD6A:    LDA $B8,x                   ; $20:BD6A: B5 B8       ;
CODE_20BD6C:    AND #$03                    ; $20:BD6C: 29 03       ;
CODE_20BD6E:    BEQ CODE_20BD7A             ; $20:BD6E: F0 0A       ;
CODE_20BD70:    LDY #$00                    ; $20:BD70: A0 00       ;
CODE_20BD72:    AND #$02                    ; $20:BD72: 29 02       ;
CODE_20BD74:    BNE CODE_20BD78             ; $20:BD74: D0 02       ;
CODE_20BD76:    LDY #$40                    ; $20:BD76: A0 40       ;
CODE_20BD78:    STY $85,x                   ; $20:BD78: 94 85       ;
CODE_20BD7A:    LDA $85,x                   ; $20:BD7A: B5 85       ;
CODE_20BD7C:    EOR $00                     ; $20:BD7C: 45 00       ;
CODE_20BD7E:    STA $00                     ; $20:BD7E: 85 00       ;
CODE_20BD80:    PHX                         ; $20:BD80: DA          ;
CODE_20BD81:    LDA $8F,x                   ; $20:BD81: B5 8F       ;
CODE_20BD83:    ASL A                       ; $20:BD83: 0A          ;
CODE_20BD84:    ASL A                       ; $20:BD84: 0A          ;
CODE_20BD85:    ORA $89,x                   ; $20:BD85: 15 89       ;
CODE_20BD87:    TAX                         ; $20:BD87: AA          ;
CODE_20BD88:    LDA.l DATA_20BB21,x                 ; $20:BD88: BF 21 BB 20 ;
CODE_20BD8C:    PLX                         ; $20:BD8C: FA          ;
CODE_20BD8D:    STA $8D,x                   ; $20:BD8D: 95 8D       ;
CODE_20BD8F:    LDA $63,x                   ; $20:BD8F: B5 63       ;
CODE_20BD91:    CLC                         ; $20:BD91: 18          ;
CODE_20BD92:    ADC #$01                    ; $20:BD92: 69 01       ;
CODE_20BD94:    CMP #$03                    ; $20:BD94: C9 03       ;
CODE_20BD96:    BCC CODE_20BDA9             ; $20:BD96: 90 11       ;
CODE_20BD98:    LDA $87,x                   ; $20:BD98: B5 87       ;
CODE_20BD9A:    AND $B8,x                   ; $20:BD9A: 35 B8       ;
CODE_20BD9C:    BEQ CODE_20BDA9             ; $20:BD9C: F0 0B       ;
CODE_20BD9E:    LDY $8F,x                   ; $20:BD9E: B4 8F       ;
CODE_20BDA0:    BEQ CODE_20BDA4             ; $20:BDA0: F0 02       ;
CODE_20BDA2:    LDY #$01                    ; $20:BDA2: A0 01       ;
CODE_20BDA4:    LDA.w DATA_21BB34,y                 ; $20:BDA4: B9 34 BB    ;
CODE_20BDA7:    STA $8D,x                   ; $20:BDA7: 95 8D       ;
CODE_20BDA9:    LDA $B8,x                   ; $20:BDA9: B5 B8       ;
CODE_20BDAB:    AND #$04                    ; $20:BDAB: 29 04       ;
CODE_20BDAD:    BEQ CODE_20BDCA             ; $20:BDAD: F0 1B       ;
CODE_20BDAF:    LDY $8F,x                   ; $20:BDAF: B4 8F       ;
CODE_20BDB1:    LDA.w DATA_21BB31,y                 ; $20:BDB1: B9 31 BB    ;
CODE_20BDB4:    STA $8D,x                   ; $20:BDB4: 95 8D       ;
CODE_20BDB6:    LDA $BA,x                   ; $20:BDB6: B5 BA       ;
CODE_20BDB8:    AND #$04                    ; $20:BDB8: 29 04       ;
CODE_20BDBA:    BEQ CODE_20BDCA             ; $20:BDBA: F0 0E       ;
CODE_20BDBC:    LDY #$00                    ; $20:BDBC: A0 00       ;
CODE_20BDBE:    TXA                         ; $20:BDBE: 8A          ;
CODE_20BDBF:    BNE CODE_20BDC2             ; $20:BDBF: D0 01       ;
CODE_20BDC1:    INY                         ; $20:BDC1: C8          ;
CODE_20BDC2:    LDA #$A0                    ; $20:BDC2: A9 A0       ;
CODE_20BDC4:    STA $0083,y                 ; $20:BDC4: 99 83 00    ;
CODE_20BDC7:    STA $006B,y                 ; $20:BDC7: 99 6B 00    ;
CODE_20BDCA:    LDA $B8,x                   ; $20:BDCA: B5 B8       ;
CODE_20BDCC:    AND #$08                    ; $20:BDCC: 29 08       ;
CODE_20BDCE:    BEQ CODE_20BDD4             ; $20:BDCE: F0 04       ;
CODE_20BDD0:    LDA #$17                    ; $20:BDD0: A9 17       ;
CODE_20BDD2:    STA $8D,x                   ; $20:BDD2: 95 8D       ;
CODE_20BDD4:    LDA $83,x                   ; $20:BDD4: B5 83       ;
CODE_20BDD6:    BEQ CODE_20BE0E             ; $20:BDD6: F0 36       ;
CODE_20BDD8:    LDA $8F,x                   ; $20:BDD8: B5 8F       ;
CODE_20BDDA:    BEQ CODE_20BE0E             ; $20:BDDA: F0 32       ;
CODE_20BDDC:    CMP #$02                    ; $20:BDDC: C9 02       ;
CODE_20BDDE:    BNE CODE_20BE04             ; $20:BDDE: D0 24       ;
CODE_20BDE0:    LDA #$15                    ; $20:BDE0: A9 15       ;
CODE_20BDE2:    LDY $6B,x                   ; $20:BDE2: B4 6B       ;
CODE_20BDE4:    BMI CODE_20BE0C             ; $20:BDE4: 30 26       ;
CODE_20BDE6:    LDA $95,x                   ; $20:BDE6: B5 95       ;
CODE_20BDE8:    BEQ CODE_20BDEF             ; $20:BDE8: F0 05       ;
CODE_20BDEA:    DEC $95,x                   ; $20:BDEA: D6 95       ;
CODE_20BDEC:    JMP CODE_20BDF9             ; $20:BDEC: 4C F9 BD    ;

CODE_20BDEF:    LDA $B8,x                   ; $20:BDEF: B5 B8       ;
CODE_20BDF1:    AND #$80                    ; $20:BDF1: 29 80       ;
CODE_20BDF3:    BEQ CODE_20BDF9             ; $20:BDF3: F0 04       ;
CODE_20BDF5:    LDA #$0A                    ; $20:BDF5: A9 0A       ;
CODE_20BDF7:    STA $95,x                   ; $20:BDF7: 95 95       ;
CODE_20BDF9:    LDA $95,x                   ; $20:BDF9: B5 95       ;
CODE_20BDFB:    LSR A                       ; $20:BDFB: 4A          ;
CODE_20BDFC:    LSR A                       ; $20:BDFC: 4A          ;
CODE_20BDFD:    TAY                         ; $20:BDFD: A8          ;
CODE_20BDFE:    LDA DATA_20BB36,y                   ; $20:BDFE: B9 36 BB    ;
CODE_20BE01:    JMP CODE_20BE0C             ; $20:BE01: 4C 0C BE    ;

CODE_20BE04:    LDA #$14                    ; $20:BE04: A9 14       ;
CODE_20BE06:    LDY $6B,x                   ; $20:BE06: B4 6B       ;
CODE_20BE08:    BMI CODE_20BE0C             ; $20:BE08: 30 02       ;
CODE_20BE0A:    LDA #$00                    ; $20:BE0A: A9 00       ;
CODE_20BE0C:    STA $8D,x                   ; $20:BE0C: 95 8D       ;
CODE_20BE0E:    LDA $9B,x                   ; $20:BE0E: B5 9B       ;
CODE_20BE10:    BEQ CODE_20BE18             ; $20:BE10: F0 06       ;
CODE_20BE12:    DEC $9B,x                   ; $20:BE12: D6 9B       ;
CODE_20BE14:    LDA #$0D                    ; $20:BE14: A9 0D       ;
CODE_20BE16:    STA $8D,x                   ; $20:BE16: 95 8D       ;
CODE_20BE18:    LDA $99,x                   ; $20:BE18: B5 99       ;
CODE_20BE1A:    BEQ CODE_20BE22             ; $20:BE1A: F0 06       ;
CODE_20BE1C:    DEC $99,x                   ; $20:BE1C: D6 99       ;
CODE_20BE1E:    LDA #$16                    ; $20:BE1E: A9 16       ;
CODE_20BE20:    STA $8D,x                   ; $20:BE20: 95 8D       ;
CODE_20BE22:    TXA                         ; $20:BE22: 8A          ;
CODE_20BE23:    BNE CODE_20BE3D             ; $20:BE23: D0 18       ;
CODE_20BE25:    LDA $9D                     ; $20:BE25: A5 9D       ;
CODE_20BE27:    BEQ CODE_20BE3D             ; $20:BE27: F0 14       ;
CODE_20BE29:    LSR A                       ; $20:BE29: 4A          ;
CODE_20BE2A:    LSR A                       ; $20:BE2A: 4A          ;
CODE_20BE2B:    TAY                         ; $20:BE2B: A8          ;
CODE_20BE2C:    LDA.w DATA_21BB3D,y                 ; $20:BE2C: B9 3D BB    ;
CODE_20BE2F:    STA $8D                     ; $20:BE2F: 85 8D       ;
CODE_20BE31:    LDY #$00                    ; $20:BE31: A0 00       ;
CODE_20BE33:    CMP #$11                    ; $20:BE33: C9 11       ;
CODE_20BE35:    BEQ CODE_20BE39             ; $20:BE35: F0 02       ;
CODE_20BE37:    LDY #$01                    ; $20:BE37: A0 01       ;
CODE_20BE39:    STY $8F                     ; $20:BE39: 84 8F       ;
CODE_20BE3B:    DEC $9D                     ; $20:BE3B: C6 9D       ;
CODE_20BE3D:    LDA $97,x                   ; $20:BE3D: B5 97       ;
CODE_20BE3F:    BNE CODE_20BE49             ; $20:BE3F: D0 08       ;
CODE_20BE41:    LDA $BA,x                   ; $20:BE41: B5 BA       ;
CODE_20BE43:    AND #$20                    ; $20:BE43: 29 20       ;
CODE_20BE45:    BEQ CODE_20BE76             ; $20:BE45: F0 2F       ;
CODE_20BE47:    STA $97,x                   ; $20:BE47: 95 97       ;
CODE_20BE49:    LDY $89,x                   ; $20:BE49: B4 89       ;
CODE_20BE4B:    LDA $83,x                   ; $20:BE4B: B5 83       ;
CODE_20BE4D:    BEQ CODE_20BE51             ; $20:BE4D: F0 02       ;
CODE_20BE4F:    LDY #$00                    ; $20:BE4F: A0 00       ;
CODE_20BE51:    LDA.w DATA_21BB39,y                 ; $20:BE51: B9 39 BB    ;
CODE_20BE54:    STA $8D,x                   ; $20:BE54: 95 8D       ;
CODE_20BE56:    LDA $00                     ; $20:BE56: A5 00       ;
CODE_20BE58:    BEQ CODE_20BE5E             ; $20:BE58: F0 04       ;
CODE_20BE5A:    LDA #$08                    ; $20:BE5A: A9 08       ;
CODE_20BE5C:    STA $99,x                   ; $20:BE5C: 95 99       ;
CODE_20BE5E:    LDA $99,x                   ; $20:BE5E: B5 99       ;
CODE_20BE60:    BEQ CODE_20BE68             ; $20:BE60: F0 06       ;
CODE_20BE62:    DEC $99,x                   ; $20:BE62: D6 99       ;
CODE_20BE64:    LDA #$0A                    ; $20:BE64: A9 0A       ;
CODE_20BE66:    STA $8D,x                   ; $20:BE66: 95 8D       ;
CODE_20BE68:    LDA $BA,x                   ; $20:BE68: B5 BA       ;
CODE_20BE6A:    AND #$40                    ; $20:BE6A: 29 40       ;
CODE_20BE6C:    BEQ CODE_20BE76             ; $20:BE6C: F0 08       ;
CODE_20BE6E:    STZ $97,x                   ; $20:BE6E: 74 97       ;
CODE_20BE70:    STZ $99,x                   ; $20:BE70: 74 99       ;
CODE_20BE72:    LDA #$0A                    ; $20:BE72: A9 0A       ;
CODE_20BE74:    STA $9B,x                   ; $20:BE74: 95 9B       ;
CODE_20BE76:    PLB                         ; $20:BE76: AB          ;
CODE_20BE77:    RTS                         ; $20:BE77: 60          ;

DATA_20BE78:        db $10,$08,$00

DATA_20BE7B:        db $00,$02,$04

DATA_20BE7E:        db $06,$08,$0A,$10,$12,$14,$16,$18
                    db $1A

DATA_20BE87:        db $00,$06

DATA_20BE89:        db $0A,$1A

DATA_20BE8B:        db $07,$05

CODE_20BE8D:    PHX                     ; $20:BE8D: DA          ;
CODE_20BE8E:    JSR CODE_20E07C         ; $20:BE8E: 20 7C E0    ;
CODE_20BE91:    PLX                     ; $20:BE91: FA          ;
CODE_20BE92:    BRA CODE_20BE99         ; $20:BE92: 80 05       ;

CODE_20BE94:    PHX                         ; $20:BE94: DA          ;
CODE_20BE95:    JSR CODE_20E0A2             ; $20:BE95: 20 A2 E0    ;
CODE_20BE98:    PLX                         ; $20:BE98: FA          ;
CODE_20BE99:    PHB                         ; $20:BE99: 8B          ;
CODE_20BE9A:    PHK                         ; $20:BE9A: 4B          ;
CODE_20BE9B:    PLB                         ; $20:BE9B: AB          ;
CODE_20BE9C:    LDA #$20                    ; $20:BE9C: A9 20       ;
CODE_20BE9E:    STA $0B                     ; $20:BE9E: 85 0B       ;
CODE_20BEA0:    LDA $8F,x                   ; $20:BEA0: B5 8F       ;
CODE_20BEA2:    BNE CODE_20BEAC             ; $20:BEA2: D0 08       ;
CODE_20BEA4:    LDA $B8,x                   ; $20:BEA4: B5 B8       ;
CODE_20BEA6:    AND #$10                    ; $20:BEA6: 29 10       ;
CODE_20BEA8:    BEQ CODE_20BEAC             ; $20:BEA8: F0 02       ;
CODE_20BEAA:    STA $0B                     ; $20:BEAA: 85 0B       ;
CODE_20BEAC:    LDA $5B,x                   ; $20:BEAC: B5 5B       ;
CODE_20BEAE:    STA $0E                     ; $20:BEAE: 85 0E       ;
CODE_20BEB0:    LDA $53,x                   ; $20:BEB0: B5 53       ;
CODE_20BEB2:    STA $0F                     ; $20:BEB2: 85 0F       ;
CODE_20BEB4:    LDA $85,x                   ; $20:BEB4: B5 85       ;
CODE_20BEB6:    STA $0D                     ; $20:BEB6: 85 0D       ;
CODE_20BEB8:    LDA $93,x                   ; $20:BEB8: B5 93       ;
CODE_20BEBA:    STA $0C                     ; $20:BEBA: 85 0C       ;
CODE_20BEBC:    PHX                         ; $20:BEBC: DA          ;
CODE_20BEBD:    LDX $9F                     ; $20:BEBD: A6 9F       ;
CODE_20BEBF:    LDA.l DATA_20BE8B,x                 ; $20:BEBF: BF 8B BE 20 ;
CODE_20BEC3:    ASL A                       ; $20:BEC3: 0A          ;
CODE_20BEC4:    STA $08                     ; $20:BEC4: 85 08       ;
CODE_20BEC6:    PLX                         ; $20:BEC6: FA          ;
CODE_20BEC7:    LDA.w DATA_20BE87,x                 ; $20:BEC7: BD 87 BE    ;
CODE_20BECA:    STA $00                     ; $20:BECA: 85 00       ;
CODE_20BECC:    LDA $91,x                   ; $20:BECC: B5 91       ;
CODE_20BECE:    TAX                         ; $20:BECE: AA          ;
CODE_20BECF:    PHX                         ; $20:BECF: DA          ;
CODE_20BED0:    LDY #$02                    ; $20:BED0: A0 02       ;
CODE_20BED2:    PHY                         ; $20:BED2: 5A          ;
CODE_20BED3:    LDY $00                     ; $20:BED3: A4 00       ;
CODE_20BED5:    LDA DATA_20BE7B,y                   ; $20:BED5: B9 7B BE    ;
CODE_20BED8:    STA $081A,x                 ; $20:BED8: 9D 1A 08    ;
CODE_20BEDB:    INC A                       ; $20:BEDB: 1A          ;
CODE_20BEDC:    STA $081E,x                 ; $20:BEDC: 9D 1E 08    ;
CODE_20BEDF:    LDA DATA_20BE7E,y                   ; $20:BEDF: B9 7E BE    ;
CODE_20BEE2:    STA $0802,x                 ; $20:BEE2: 9D 02 08    ;
CODE_20BEE5:    INC A                       ; $20:BEE5: 1A          ;
CODE_20BEE6:    STA $0806,x                 ; $20:BEE6: 9D 06 08    ;
CODE_20BEE9:    PLY                         ; $20:BEE9: 7A          ;
CODE_20BEEA:    LDA $0D                     ; $20:BEEA: A5 0D       ;
CODE_20BEEC:    AND #$C0                    ; $20:BEEC: 29 C0       ;
CODE_20BEEE:    ORA $08                     ; $20:BEEE: 05 08       ;
CODE_20BEF0:    ORA $0B                     ; $20:BEF0: 05 0B       ;
CODE_20BEF2:    STA $0803,x                 ; $20:BEF2: 9D 03 08    ;
CODE_20BEF5:    STA $0807,x                 ; $20:BEF5: 9D 07 08    ;
CODE_20BEF8:    STA $081B,x                 ; $20:BEF8: 9D 1B 08    ;
CODE_20BEFB:    STA $081F,x                 ; $20:BEFB: 9D 1F 08    ;
CODE_20BEFE:    ASL $0C                     ; $20:BEFE: 06 0C       ;
CODE_20BF00:    BCS CODE_20BF19                     ; $20:BF00: B0 17       ;
CODE_20BF02:    LDA $0E                     ; $20:BF02: A5 0E       ;
CODE_20BF04:    STA $0819,x                 ; $20:BF04: 9D 19 08    ;
CODE_20BF07:    CLC                         ; $20:BF07: 18          ;
CODE_20BF08:    ADC #$08                    ; $20:BF08: 69 08       ;
CODE_20BF0A:    STA $081D,x                 ; $20:BF0A: 9D 1D 08    ;
CODE_20BF0D:    CLC                         ; $20:BF0D: 18          ;
CODE_20BF0E:    ADC #$08                    ; $20:BF0E: 69 08       ;
CODE_20BF10:    STA $0801,x                 ; $20:BF10: 9D 01 08    ;
CODE_20BF13:    CLC                         ; $20:BF13: 18          ;
CODE_20BF14:    ADC #$08                    ; $20:BF14: 69 08       ;
CODE_20BF16:    STA $0805,x                 ; $20:BF16: 9D 05 08    ;
CODE_20BF19:    LDA $0F                     ; $20:BF19: A5 0F       ;
CODE_20BF1B:    CLC                         ; $20:BF1B: 18          ;
CODE_20BF1C:    ADC DATA_20BE78,y                   ; $20:BF1C: 79 78 BE    ;
CODE_20BF1F:    STA $0800,x                 ; $20:BF1F: 9D 00 08    ;
CODE_20BF22:    STA $0804,x                 ; $20:BF22: 9D 04 08    ;
CODE_20BF25:    STA $0818,x                 ; $20:BF25: 9D 18 08    ;
CODE_20BF28:    STA $081C,x                 ; $20:BF28: 9D 1C 08    ;
CODE_20BF2B:    PHX                         ; $20:BF2B: DA          ;
CODE_20BF2C:    TXA                         ; $20:BF2C: 8A          ;
CODE_20BF2D:    LSR A                       ; $20:BF2D: 4A          ;
CODE_20BF2E:    LSR A                       ; $20:BF2E: 4A          ;
CODE_20BF2F:    TAX                         ; $20:BF2F: AA          ;
CODE_20BF30:    LDA #$00                    ; $20:BF30: A9 00       ;
CODE_20BF32:    STA $0A20,x                 ; $20:BF32: 9D 20 0A    ;
CODE_20BF35:    STA $0A21,x                 ; $20:BF35: 9D 21 0A    ;
CODE_20BF38:    STA $0A26,x                 ; $20:BF38: 9D 26 0A    ;
CODE_20BF3B:    STA $0A27,x                 ; $20:BF3B: 9D 27 0A    ;
CODE_20BF3E:    PLX                         ; $20:BF3E: FA          ;
CODE_20BF3F:    INX                         ; $20:BF3F: E8          ;
CODE_20BF40:    INX                         ; $20:BF40: E8          ;
CODE_20BF41:    INX                         ; $20:BF41: E8          ;
CODE_20BF42:    INX                         ; $20:BF42: E8          ;
CODE_20BF43:    INX                         ; $20:BF43: E8          ;
CODE_20BF44:    INX                         ; $20:BF44: E8          ;
CODE_20BF45:    INX                         ; $20:BF45: E8          ;
CODE_20BF46:    INX                         ; $20:BF46: E8          ;
CODE_20BF47:    INC $00                     ; $20:BF47: E6 00       ;
CODE_20BF49:    DEY                         ; $20:BF49: 88          ;
CODE_20BF4A:    BPL CODE_20BED2             ; $20:BF4A: 10 86       ;
CODE_20BF4C:    PLX                         ; $20:BF4C: FA          ;
CODE_20BF4D:    LDA $0D                     ; $20:BF4D: A5 0D       ;
CODE_20BF4F:    AND #$40                    ; $20:BF4F: 29 40       ;
CODE_20BF51:    BEQ CODE_20BF9D             ; $20:BF51: F0 4A       ;
CODE_20BF53:    LDA $0802,x                 ; $20:BF53: BD 02 08    ;
CODE_20BF56:    PHA                         ; $20:BF56: 48          ;
CODE_20BF57:    LDA $080A,x                 ; $20:BF57: BD 0A 08    ;
CODE_20BF5A:    STA $0802,x                 ; $20:BF5A: 9D 02 08    ;
CODE_20BF5D:    PLA                         ; $20:BF5D: 68          ;
CODE_20BF5E:    STA $080A,x                 ; $20:BF5E: 9D 0A 08    ;
CODE_20BF61:    LDA $0806,x                 ; $20:BF61: BD 06 08    ;
CODE_20BF64:    PHA                         ; $20:BF64: 48          ;
CODE_20BF65:    LDA $080E,x                 ; $20:BF65: BD 0E 08    ;
CODE_20BF68:    STA $0806,x                 ; $20:BF68: 9D 06 08    ;
CODE_20BF6B:    PLA                         ; $20:BF6B: 68          ;
CODE_20BF6C:    STA $080E,x                 ; $20:BF6C: 9D 0E 08    ;
CODE_20BF6F:    LDA $0810,x                 ; $20:BF6F: BD 10 08    ;
CODE_20BF72:    CLC                         ; $20:BF72: 18          ;
CODE_20BF73:    ADC #$E8                    ; $20:BF73: 69 E8       ;
CODE_20BF75:    STA $0810,x                 ; $20:BF75: 9D 10 08    ;
CODE_20BF78:    STA $0814,x                 ; $20:BF78: 9D 14 08    ;
CODE_20BF7B:    STA $0828,x                 ; $20:BF7B: 9D 28 08    ;
CODE_20BF7E:    STA $082C,x                 ; $20:BF7E: 9D 2C 08    ;
CODE_20BF81:    LDA $081A,x                 ; $20:BF81: BD 1A 08    ;
CODE_20BF84:    PHA                         ; $20:BF84: 48          ;
CODE_20BF85:    LDA $0822,x                 ; $20:BF85: BD 22 08    ;
CODE_20BF88:    STA $081A,x                 ; $20:BF88: 9D 1A 08    ;
CODE_20BF8B:    PLA                         ; $20:BF8B: 68          ;
CODE_20BF8C:    STA $0822,x                 ; $20:BF8C: 9D 22 08    ;
CODE_20BF8F:    LDA $081E,x                 ; $20:BF8F: BD 1E 08    ;
CODE_20BF92:    PHA                         ; $20:BF92: 48          ;
CODE_20BF93:    LDA $0826,x                 ; $20:BF93: BD 26 08    ;
CODE_20BF96:    STA $081E,x                 ; $20:BF96: 9D 1E 08    ;
CODE_20BF99:    PLA                         ; $20:BF99: 68          ;
CODE_20BF9A:    STA $0826,x                 ; $20:BF9A: 9D 26 08    ;
CODE_20BF9D:    REP #$20                    ; $20:BF9D: C2 20       ;
CODE_20BF9F:    LDY #$0C                    ; $20:BF9F: A0 0C       ;
CODE_20BFA1:    LDA $9F                     ; $20:BFA1: A5 9F       ;
CODE_20BFA3:    AND #$00FF                  ; $20:BFA3: 29 FF 00    ;
CODE_20BFA6:    BNE CODE_20BFAA             ; $20:BFA6: D0 02       ;
CODE_20BFA8:    LDY #$00                    ; $20:BFA8: A0 00       ;
CODE_20BFAA:    LDA $0226,y                 ; $20:BFAA: B9 26 02    ;
CODE_20BFAD:    CMP $0228,y                 ; $20:BFAD: D9 28 02    ;
CODE_20BFB0:    BNE CODE_20BFD3             ; $20:BFB0: D0 21       ;
CODE_20BFB2:    SEP #$20                    ; $20:BFB2: E2 20       ;
CODE_20BFB4:    LDA $081B,x                 ; $20:BFB4: BD 1B 08    ;
CODE_20BFB7:    AND #$BF                    ; $20:BFB7: 29 BF       ;
CODE_20BFB9:    STA $0803,x                 ; $20:BFB9: 9D 03 08    ;
CODE_20BFBC:    STA $0807,x                 ; $20:BFBC: 9D 07 08    ;
CODE_20BFBF:    STA $081B,x                 ; $20:BFBF: 9D 1B 08    ;
CODE_20BFC2:    STA $081F,x                 ; $20:BFC2: 9D 1F 08    ;
CODE_20BFC5:    ORA #$40                    ; $20:BFC5: 09 40       ;
CODE_20BFC7:    STA $080B,x                 ; $20:BFC7: 9D 0B 08    ;
CODE_20BFCA:    STA $080F,x                 ; $20:BFCA: 9D 0F 08    ;
CODE_20BFCD:    STA $0823,x                 ; $20:BFCD: 9D 23 08    ;
CODE_20BFD0:    STA $0827,x                 ; $20:BFD0: 9D 27 08    ;
CODE_20BFD3:    SEP #$20                    ; $20:BFD3: E2 20       ;
CODE_20BFD5:    LDY $9F                     ; $20:BFD5: A4 9F       ;
CODE_20BFD7:    LDA $008D,y                 ; $20:BFD7: B9 8D 00    ;
CODE_20BFDA:    CMP #$0D                    ; $20:BFDA: C9 0D       ;
CODE_20BFDC:    BNE CODE_20C011             ; $20:BFDC: D0 33       ;
CODE_20BFDE:    LDA $0801,x                 ; $20:BFDE: BD 01 08    ;
CODE_20BFE1:    STA $0811,x                 ; $20:BFE1: 9D 11 08    ;
CODE_20BFE4:    LDA $0805,x                 ; $20:BFE4: BD 05 08    ;
CODE_20BFE7:    STA $0815,x                 ; $20:BFE7: 9D 15 08    ;
CODE_20BFEA:    LDA #$F8                    ; $20:BFEA: A9 F8       ;
CODE_20BFEC:    LDY $0D                     ; $20:BFEC: A4 0D       ;
CODE_20BFEE:    BEQ CODE_20BFF2             ; $20:BFEE: F0 02       ;
CODE_20BFF0:    LDA #$10                    ; $20:BFF0: A9 10       ;
CODE_20BFF2:    CLC                         ; $20:BFF2: 18          ;
CODE_20BFF3:    ADC $0818,x                 ; $20:BFF3: 7D 18 08    ;
CODE_20BFF6:    STA $0810,x                 ; $20:BFF6: 9D 10 08    ;
CODE_20BFF9:    STA $0814,x                 ; $20:BFF9: 9D 14 08    ;
CODE_20BFFC:    LDY $9F                     ; $20:BFFC: A4 9F       ;
CODE_20BFFE:    LDA DATA_20BE89,y                   ; $20:BFFE: B9 89 BE    ;
CODE_20C001:    STA $0812,x                 ; $20:C001: 9D 12 08    ;
CODE_20C004:    INC A                       ; $20:C004: 1A          ;
CODE_20C005:    STA $0816,x                 ; $20:C005: 9D 16 08    ;
CODE_20C008:    LDA $081B,x                 ; $20:C008: BD 1B 08    ;
CODE_20C00B:    STA $0813,x                 ; $20:C00B: 9D 13 08    ;
CODE_20C00E:    STA $0817,x                 ; $20:C00E: 9D 17 08    ;
CODE_20C011:    LDX $9F                     ; $20:C011: A6 9F       ;
CODE_20C013:    PLB                         ; $20:C013: AB          ;
CODE_20C014:    RTS                         ; $20:C014: 60          ;

DATA_20C015:        db $00,$00,$00,$00,$00,$FF

DATA_20C01B:        db $00,$08,$10,$00,$08,$F8

DATA_20C021:        db $80,$40,$20,$80,$40,$20

CODE_20C027:    PHB                     ; $20:C027: 8B          ;
CODE_20C028:    PHK                     ; $20:C028: 4B          ;
CODE_20C029:    PLB                         ; $20:C029: AB          ;
CODE_20C02A:    LDA #$00                    ; $20:C02A: A9 00       ;
CODE_20C02C:    STA $93,x                   ; $20:C02C: 95 93       ;
CODE_20C02E:    LDY #$02                    ; $20:C02E: A0 02       ;
CODE_20C030:    LDA $85,x                   ; $20:C030: B5 85       ;
CODE_20C032:    AND #$40                    ; $20:C032: 29 40       ;
CODE_20C034:    BEQ CODE_20C038             ; $20:C034: F0 02       ;
CODE_20C036:    LDY #$05                    ; $20:C036: A0 05       ;
CODE_20C038:    LDA $53,x                   ; $20:C038: B5 53       ;
CODE_20C03A:    CLC                         ; $20:C03A: 18          ;
CODE_20C03B:    ADC DATA_20C01B,y                   ; $20:C03B: 79 1B C0    ;
CODE_20C03E:    LDA $43,x                   ; $20:C03E: B5 43       ;
CODE_20C040:    ADC DATA_20C015,y                   ; $20:C040: 79 15 C0    ;
CODE_20C043:    BEQ CODE_20C04C             ; $20:C043: F0 07       ;
CODE_20C045:    LDA $93,x                   ; $20:C045: B5 93       ;
CODE_20C047:    ORA DATA_20C021,y                   ; $20:C047: 19 21 C0    ;
CODE_20C04A:    STA $93,x                   ; $20:C04A: 95 93       ;
CODE_20C04C:    DEY                         ; $20:C04C: 88          ;
CODE_20C04D:    BMI CODE_20C053             ; $20:C04D: 30 04       ;
CODE_20C04F:    CPY #$02                    ; $20:C04F: C0 02       ;
CODE_20C051:    BNE CODE_20C038             ; $20:C051: D0 E5       ;
CODE_20C053:    PLB                         ; $20:C053: AB          ;
CODE_20C054:    RTS                         ; $20:C054: 60          ;

DATA_20C055:        db $86,$84,$82,$80

CODE_20C059:    PHX                     ; $20:C059: DA          ;
CODE_20C05A:    TXA                         ; $20:C05A: 8A          ;
CODE_20C05B:    BNE CODE_20C062             ; $20:C05B: D0 05       ;
CODE_20C05D:    LDA $0511                   ; $20:C05D: AD 11 05    ;
CODE_20C060:    BNE CODE_20C065             ; $20:C060: D0 03       ;
CODE_20C062:    BRL CODE_20C0E5             ; $20:C062: 82 80 00    ;

CODE_20C065:    DEC $0511                   ; $20:C065: CE 11 05    ;
CODE_20C068:    AND #$0C                    ; $20:C068: 29 0C       ;
CODE_20C06A:    LSR A                       ; $20:C06A: 4A          ;
CODE_20C06B:    LSR A                       ; $20:C06B: 4A          ;
CODE_20C06C:    TAX                         ; $20:C06C: AA          ;
CODE_20C06D:    LDA.l DATA_20C055,x                 ; $20:C06D: BF 55 C0 20 ;
CODE_20C071:    STA $01                     ; $20:C071: 85 01       ;
CODE_20C073:    LDY $91                     ; $20:C073: A4 91       ;
CODE_20C075:    LDA #$C0                    ; $20:C075: A9 C0       ;
CODE_20C077:    STA $00                     ; $20:C077: 85 00       ;
CODE_20C079:    LDA $5B                     ; $20:C079: A5 5B       ;
CODE_20C07B:    CLC                         ; $20:C07B: 18          ;
CODE_20C07C:    ADC #$08                    ; $20:C07C: 69 08       ;
CODE_20C07E:    STA $0801,y                 ; $20:C07E: 99 01 08    ;
CODE_20C081:    CLC                         ; $20:C081: 18          ;
CODE_20C082:    ADC #$08                    ; $20:C082: 69 08       ;
CODE_20C084:    STA $0805,y                 ; $20:C084: 99 05 08    ;
CODE_20C087:    LDA $01                     ; $20:C087: A5 01       ;
CODE_20C089:    STA $0802,y                 ; $20:C089: 99 02 08    ;
CODE_20C08C:    INC A                       ; $20:C08C: 1A          ;
CODE_20C08D:    STA $0806,y                 ; $20:C08D: 99 06 08    ;
CODE_20C090:    LDA $00                     ; $20:C090: A5 00       ;
CODE_20C092:    ORA #$24                    ; $20:C092: 09 24       ;
CODE_20C094:    STA $0803,y                 ; $20:C094: 99 03 08    ;
CODE_20C097:    STA $0807,y                 ; $20:C097: 99 07 08    ;
CODE_20C09A:    LDA $53                     ; $20:C09A: A5 53       ;
CODE_20C09C:    STA $0800,y                 ; $20:C09C: 99 00 08    ;
CODE_20C09F:    STA $0804,y                 ; $20:C09F: 99 04 08    ;
CODE_20C0A2:    LDA $00                     ; $20:C0A2: A5 00       ;
CODE_20C0A4:    AND #$F0                    ; $20:C0A4: 29 F0       ;
CODE_20C0A6:    BEQ CODE_20C0C2             ; $20:C0A6: F0 1A       ;
CODE_20C0A8:    LDA $0800,y                 ; $20:C0A8: B9 00 08    ;
CODE_20C0AB:    CLC                         ; $20:C0AB: 18          ;
CODE_20C0AC:    ADC #$08                    ; $20:C0AC: 69 08       ;
CODE_20C0AE:    STA $0800,y                 ; $20:C0AE: 99 00 08    ;
CODE_20C0B1:    STA $0804,y                 ; $20:C0B1: 99 04 08    ;
CODE_20C0B4:    LDA $0801,y                 ; $20:C0B4: B9 01 08    ;
CODE_20C0B7:    PHA                         ; $20:C0B7: 48          ;
CODE_20C0B8:    LDA $0805,y                 ; $20:C0B8: B9 05 08    ;
CODE_20C0BB:    STA $0801,y                 ; $20:C0BB: 99 01 08    ;
CODE_20C0BE:    PLA                         ; $20:C0BE: 68          ;
CODE_20C0BF:    STA $0805,y                 ; $20:C0BF: 99 05 08    ;
CODE_20C0C2:    PHY                         ; $20:C0C2: 5A          ;
CODE_20C0C3:    TYA                         ; $20:C0C3: 98          ;
CODE_20C0C4:    LSR A                       ; $20:C0C4: 4A          ;
CODE_20C0C5:    LSR A                       ; $20:C0C5: 4A          ;
CODE_20C0C6:    TAY                         ; $20:C0C6: A8          ;
CODE_20C0C7:    LDA #$00                    ; $20:C0C7: A9 00       ;
CODE_20C0C9:    STA $0A20,y                 ; $20:C0C9: 99 20 0A    ;
CODE_20C0CC:    STA $0A21,y                 ; $20:C0CC: 99 21 0A    ;
CODE_20C0CF:    PLY                         ; $20:C0CF: 7A          ;
CODE_20C0D0:    INY                         ; $20:C0D0: C8          ;
CODE_20C0D1:    INY                         ; $20:C0D1: C8          ;
CODE_20C0D2:    INY                         ; $20:C0D2: C8          ;
CODE_20C0D3:    INY                         ; $20:C0D3: C8          ;
CODE_20C0D4:    INY                         ; $20:C0D4: C8          ;
CODE_20C0D5:    INY                         ; $20:C0D5: C8          ;
CODE_20C0D6:    INY                         ; $20:C0D6: C8          ;
CODE_20C0D7:    INY                         ; $20:C0D7: C8          ;
CODE_20C0D8:    LDA $00                     ; $20:C0D8: A5 00       ;
CODE_20C0DA:    SEC                         ; $20:C0DA: 38          ;
CODE_20C0DB:    SBC #$C0                    ; $20:C0DB: E9 C0       ;
CODE_20C0DD:    STA $00                     ; $20:C0DD: 85 00       ;
CODE_20C0DF:    BCS CODE_20C079                     ; $20:C0DF: B0 98       ;
CODE_20C0E1:    STZ $6B                     ; $20:C0E1: 64 6B       ;
CODE_20C0E3:    STZ $63                     ; $20:C0E3: 64 63       ;
CODE_20C0E5:    PLX                         ; $20:C0E5: FA          ;
CODE_20C0E6:    RTS                         ; $20:C0E6: 60          ;

CODE_20C0E7:    LDX #$05                    ; $20:C0E7: A2 05       ;
CODE_20C0E9:    LDA $A6,x                   ; $20:C0E9: B5 A6       ;
CODE_20C0EB:    BEQ CODE_20C0FA             ; $20:C0EB: F0 0D       ;
CODE_20C0ED:    CMP #$01                    ; $20:C0ED: C9 01       ;
CODE_20C0EF:    BNE CODE_20C0F7             ; $20:C0EF: D0 06       ;
CODE_20C0F1:    JSR CODE_20C10C             ; $20:C0F1: 20 0C C1    ;
CODE_20C0F4:    JMP CODE_20C0FA             ; $20:C0F4: 4C FA C0    ;

CODE_20C0F7:    JSR CODE_20C140             ; $20:C0F7: 20 40 C1    ;
CODE_20C0FA:    LDA $0513,x                 ; $20:C0FA: BD 13 05    ;
CODE_20C0FD:    BEQ CODE_20C102             ; $20:C0FD: F0 03       ;
CODE_20C0FF:    DEC $0513,x                 ; $20:C0FF: DE 13 05    ;
CODE_20C102:    DEX                         ; $20:C102: CA          ;
CODE_20C103:    BPL CODE_20C0E9             ; $20:C103: 10 E4       ;
CODE_20C105:    RTS                         ; $20:C105: 60          ;

DATA_20C106:        db $D0,$20,$60,$43,$B0,$78

CODE_20C10C:    LDA.l DATA_20C106,x                 ; $20:C10C: BF 06 C1 20 ;
CODE_20C110:    STA $55,x                   ; $20:C110: 95 55       ;
CODE_20C112:    STZ $5D,x                   ; $20:C112: 74 5D       ;
CODE_20C114:    STZ $65,x                   ; $20:C114: 74 65       ;
CODE_20C116:    STZ $6D,x                   ; $20:C116: 74 6D       ;
CODE_20C118:    INC $A6,x                   ; $20:C118: F6 A6       ;
CODE_20C11A:    TXA                         ; $20:C11A: 8A          ;
CODE_20C11B:    JSL CODE_20FB1F         ; $20:C11B: 22 1F FB 20 ; ExecutePtrShort

PNTR_20C11F:          dw CODE_20C139
               dw CODE_20C139
               dw CODE_20C12B
               dw CODE_20C13A
               dw CODE_20C139
               dw CODE_20C139

CODE_20C12B:    STZ $65,x               ; $20:C12B: 74 65       ;
CODE_20C12D:    STZ $0519,x             ; $20:C12D: 9E 19 05    ;
CODE_20C130:    LDA #$10                ; $20:C130: A9 10       ;
CODE_20C132:    STA $0513,x             ; $20:C132: 9D 13 05    ;
CODE_20C135:    LDA #$04                    ; $20:C135: A9 04       ;
CODE_20C137:    STA $6D,x                   ; $20:C137: 95 6D       ;
CODE_20C139:    RTS                         ; $20:C139: 60          ;

CODE_20C13A:    LDA #$B9                    ; $20:C13A: A9 B9       ;
CODE_20C13C:    STA $0519,x                 ; $20:C13C: 9D 19 05    ;
CODE_20C13F:    RTS                         ; $20:C13F: 60          ;

CODE_20C140:    TXA                         ; $20:C140: 8A          ;
CODE_20C141:    JSL CODE_20FB1F         ; $20:C141: 22 1F FB 20 ; ExecutePtrShort

PNTR_20C145:          dw CODE_20C151
               dw CODE_20C164
               dw CODE_20C17A
               dw CODE_20C1DD
               dw CODE_20C229
               dw CODE_20C273

CODE_20C151:    JSR CODE_20C3B2             ; $20:C151: 20 B2 C3    ;
CODE_20C154:    BNE CODE_20C15E             ; $20:C154: D0 08       ;
CODE_20C156:    LDA #$20                    ; $20:C156: A9 20       ;
CODE_20C158:    STA $65,x                   ; $20:C158: 95 65       ;
CODE_20C15A:    LDA #$B0                    ; $20:C15A: A9 B0       ;
CODE_20C15C:    STA $6D,x                   ; $20:C15C: 95 6D       ;
CODE_20C15E:    JSR CODE_20C418             ; $20:C15E: 20 18 C4    ;
CODE_20C161:    JMP CODE_20C3CE             ; $20:C161: 4C CE C3    ;

CODE_20C164:    JSR CODE_20C3B2             ; $20:C164: 20 B2 C3    ;
CODE_20C167:    BNE CODE_20C16D             ; $20:C167: D0 04       ;
CODE_20C169:    LDA #$F0                    ; $20:C169: A9 F0       ;
CODE_20C16B:    STA $65,x                   ; $20:C16B: 95 65       ;
CODE_20C16D:    JSR CODE_20C418             ; $20:C16D: 20 18 C4    ;
CODE_20C170:    JMP CODE_20C3CE             ; $20:C170: 4C CE C3    ;

DATA_20C173:        db $02,$FE

DATA_20C175:        db $20,$E0

DATA_20C177:        db $0A,$F6,$08

CODE_20C17A:    PHB                         ; $20:C17A: 8B          ;
CODE_20C17B:    PHK                         ; $20:C17B: 4B          ;
CODE_20C17C:    PLB                         ; $20:C17C: AB          ;
CODE_20C17D:    LDA $0513,x                 ; $20:C17D: BD 13 05    ;
CODE_20C180:    BEQ CODE_20C18E             ; $20:C180: F0 0C       ;
CODE_20C182:    JSR CODE_20C508             ; $20:C182: 20 08 C5    ;
CODE_20C185:    INC $6D,x                   ; $20:C185: F6 6D       ;
CODE_20C187:    LDA $6D,x                   ; $20:C187: B5 6D       ;
CODE_20C189:    BNE CODE_20C1B7             ; $20:C189: D0 2C       ;
CODE_20C18B:    STZ $0513,x                 ; $20:C18B: 9E 13 05    ;
CODE_20C18E:    LDA $0519,x                 ; $20:C18E: BD 19 05    ;
CODE_20C191:    AND #$01                    ; $20:C191: 29 01       ;
CODE_20C193:    TAY                         ; $20:C193: A8          ;
CODE_20C194:    LDA DATA_20C173,y                   ; $20:C194: B9 73 C1    ;
CODE_20C197:    CLC                         ; $20:C197: 18          ;
CODE_20C198:    ADC $65,x                   ; $20:C198: 75 65       ;
CODE_20C19A:    STA $65,x                   ; $20:C19A: 95 65       ;
CODE_20C19C:    CMP DATA_20C175,y                   ; $20:C19C: D9 75 C1    ;
CODE_20C19F:    BNE CODE_20C1A4             ; $20:C19F: D0 03       ;
CODE_20C1A1:    INC $0519,x                 ; $20:C1A1: FE 19 05    ;
CODE_20C1A4:    LDA $65,x                   ; $20:C1A4: B5 65       ;
CODE_20C1A6:    BPL CODE_20C1A9             ; $20:C1A6: 10 01       ;
CODE_20C1A8:    INY                         ; $20:C1A8: C8          ;
CODE_20C1A9:    LDA DATA_20C177,y                   ; $20:C1A9: B9 77 C1    ;
CODE_20C1AC:    CLC                         ; $20:C1AC: 18          ;
CODE_20C1AD:    ADC #$06                    ; $20:C1AD: 69 06       ;
CODE_20C1AF:    STA $6D,x                   ; $20:C1AF: 95 6D       ;
CODE_20C1B1:    JSR CODE_20C500             ; $20:C1B1: 20 00 C5    ;
CODE_20C1B4:    JSR CODE_20C508             ; $20:C1B4: 20 08 C5    ;
CODE_20C1B7:    LDA #$40                    ; $20:C1B7: A9 40       ;
CODE_20C1B9:    LDY $65,x                   ; $20:C1B9: B4 65       ;
CODE_20C1BB:    BEQ CODE_20C1C3             ; $20:C1BB: F0 06       ;
CODE_20C1BD:    BPL CODE_20C1C1             ; $20:C1BD: 10 02       ;
CODE_20C1BF:    LDA #$00                    ; $20:C1BF: A9 00       ;
CODE_20C1C1:    STA $A0,x                   ; $20:C1C1: 95 A0       ;
CODE_20C1C3:    JSR CODE_20C418             ; $20:C1C3: 20 18 C4    ;
CODE_20C1C6:    LDA $5D,x                   ; $20:C1C6: B5 5D       ;
CODE_20C1C8:    AND #$F0                    ; $20:C1C8: 29 F0       ;
CODE_20C1CA:    CMP #$50                    ; $20:C1CA: C9 50       ;
CODE_20C1CC:    BNE CODE_20C1DB             ; $20:C1CC: D0 0D       ;
CODE_20C1CE:    LDA #$00                    ; $20:C1CE: A9 00       ;
CODE_20C1D0:    STA $A6,x                   ; $20:C1D0: 95 A6       ;
CODE_20C1D2:    LDA #$13                    ; $20:C1D2: A9 13       ;
CODE_20C1D4:    STA $0511                   ; $20:C1D4: 8D 11 05    ;
CODE_20C1D7:    LDA #$02                    ; $20:C1D7: A9 02       ;
CODE_20C1D9:    STA $8F                     ; $20:C1D9: 85 8F       ;
CODE_20C1DB:    PLB                         ; $20:C1DB: AB          ;
CODE_20C1DC:    RTS                         ; $20:C1DC: 60          ;

CODE_20C1DD:    JSR CODE_20C3B2             ; $20:C1DD: 20 B2 C3    ;
CODE_20C1E0:    BNE CODE_20C21D             ; $20:C1E0: D0 3B       ;
CODE_20C1E2:    LDA $0519,x                 ; $20:C1E2: BD 19 05    ;
CODE_20C1E5:    BEQ CODE_20C1ED             ; $20:C1E5: F0 06       ;
CODE_20C1E7:    DEC $0519,x                 ; $20:C1E7: DE 19 05    ;
CODE_20C1EA:    JMP CODE_20C418             ; $20:C1EA: 4C 18 C4    ;

CODE_20C1ED:    LDA $55,x                   ; $20:C1ED: B5 55       ;
CODE_20C1EF:    CMP #$30                    ; $20:C1EF: C9 30       ;
CODE_20C1F1:    BCS CODE_20C219                     ; $20:C1F1: B0 26       ;
CODE_20C1F3:    LDA $0513,x                 ; $20:C1F3: BD 13 05    ;
CODE_20C1F6:    BNE CODE_20C1FD             ; $20:C1F6: D0 05       ;
CODE_20C1F8:    LDA #$10                    ; $20:C1F8: A9 10       ;
CODE_20C1FA:    STA $0513,x                 ; $20:C1FA: 9D 13 05    ;
CODE_20C1FD:    CMP #$01                    ; $20:C1FD: C9 01       ;
CODE_20C1FF:    BNE CODE_20C205             ; $20:C1FF: D0 04       ;
CODE_20C201:    LDA #$00                    ; $20:C201: A9 00       ;
CODE_20C203:    STA $A6,x                   ; $20:C203: 95 A6       ;
CODE_20C205:    LDA $65,x                   ; $20:C205: B5 65       ;
CODE_20C207:    BEQ CODE_20C211             ; $20:C207: F0 08       ;
CODE_20C209:    LDA #$00                    ; $20:C209: A9 00       ;
CODE_20C20B:    STA $65,x                   ; $20:C20B: 95 65       ;
CODE_20C20D:    LDA #$D0                    ; $20:C20D: A9 D0       ;
CODE_20C20F:    STA $6B                     ; $20:C20F: 85 6B       ;
CODE_20C211:    LDA #$01                    ; $20:C211: A9 01       ;
CODE_20C213:    STA $051F,x                 ; $20:C213: 9D 1F 05    ;
CODE_20C216:    JMP CODE_20C418             ; $20:C216: 4C 18 C4    ;

CODE_20C219:    LDA #$F8                    ; $20:C219: A9 F8       ;
CODE_20C21B:    STA $65,x                   ; $20:C21B: 95 65       ;
CODE_20C21D:    LDA $15                     ; $20:C21D: A5 15       ;
CODE_20C21F:    AND #$08                    ; $20:C21F: 29 08       ;
CODE_20C221:    ASL A                       ; $20:C221: 0A          ;
CODE_20C222:    ASL A                       ; $20:C222: 0A          ;
CODE_20C223:    ASL A                       ; $20:C223: 0A          ;
CODE_20C224:    STA $A0,x                   ; $20:C224: 95 A0       ;
CODE_20C226:    JMP CODE_20C418             ; $20:C226: 4C 18 C4    ;

CODE_20C229:    LDA $0519,x                 ; $20:C229: BD 19 05    ;
CODE_20C22C:    BNE CODE_20C23A             ; $20:C22C: D0 0C       ;
CODE_20C22E:    LDA $55,x                   ; $20:C22E: B5 55       ;
CODE_20C230:    SEC                         ; $20:C230: 38          ;
CODE_20C231:    SBC $5A                     ; $20:C231: E5 5A       ;
CODE_20C233:    CMP #$10                    ; $20:C233: C9 10       ;
CODE_20C235:    BCS CODE_20C260                     ; $20:C235: B0 29       ;
CODE_20C237:    INC $0519,x                 ; $20:C237: FE 19 05    ;
CODE_20C23A:    LDA $65,x                   ; $20:C23A: B5 65       ;
CODE_20C23C:    BNE CODE_20C24A             ; $20:C23C: D0 0C       ;
CODE_20C23E:    LDA #$10                    ; $20:C23E: A9 10       ;
CODE_20C240:    STA $65,x                   ; $20:C240: 95 65       ;
CODE_20C242:    LDA #$C0                    ; $20:C242: A9 C0       ;
CODE_20C244:    STA $6D,x                   ; $20:C244: 95 6D       ;
CODE_20C246:    LDA #$80                    ; $20:C246: A9 80       ;
CODE_20C248:    STA $A0,x                   ; $20:C248: 95 A0       ;
CODE_20C24A:    LDA $6D,x                   ; $20:C24A: B5 6D       ;
CODE_20C24C:    CLC                         ; $20:C24C: 18          ;
CODE_20C24D:    ADC #$04                    ; $20:C24D: 69 04       ;
CODE_20C24F:    STA $6D,x                   ; $20:C24F: 95 6D       ;
CODE_20C251:    JSR CODE_20C500             ; $20:C251: 20 00 C5    ;
CODE_20C254:    JSR CODE_20C508             ; $20:C254: 20 08 C5    ;
CODE_20C257:    LDA $4D,x                   ; $20:C257: B5 4D       ;
CODE_20C259:    BEQ CODE_20C270             ; $20:C259: F0 15       ;
CODE_20C25B:    LDA #$00                    ; $20:C25B: A9 00       ;
CODE_20C25D:    STA $A6,x                   ; $20:C25D: 95 A6       ;
CODE_20C25F:    RTS                         ; $20:C25F: 60          ;

CODE_20C260:    JSR CODE_20C3B2             ; $20:C260: 20 B2 C3    ;
CODE_20C263:    BNE CODE_20C270             ; $20:C263: D0 0B       ;
CODE_20C265:    LDA #$20                    ; $20:C265: A9 20       ;
CODE_20C267:    SEC                         ; $20:C267: 38          ;
CODE_20C268:    SBC $6D,x                   ; $20:C268: F5 6D       ;
CODE_20C26A:    BCC CODE_20C26E             ; $20:C26A: 90 02       ;
CODE_20C26C:    LDA #$00                    ; $20:C26C: A9 00       ;
CODE_20C26E:    STA $6D,x                   ; $20:C26E: 95 6D       ;
CODE_20C270:    JMP CODE_20C418             ; $20:C270: 4C 18 C4    ;

CODE_20C273:    LDA $A6,x                   ; $20:C273: B5 A6       ;
CODE_20C275:    SEC                         ; $20:C275: 38          ;
CODE_20C276:    SBC #$02                    ; $20:C276: E9 02       ;
CODE_20C278:    JSL CODE_20FB1F         ; $20:C278: 22 1F FB 20 ; ExecutePtrShort

PNTR_20C27C:          dw CODE_20C286
               dw CODE_20C2A8
               dw CODE_20C2CA
               dw CODE_20C2F3
               dw CODE_20C31A

CODE_20C286:    JSR CODE_20C3B2         ; $20:C286: 20 B2 C3    ;
CODE_20C289:    BNE CODE_20C291             ; $20:C289: D0 06       ;
CODE_20C28B:    INC $A6,x                   ; $20:C28B: F6 A6       ;
CODE_20C28D:    STZ $65,x                   ; $20:C28D: 74 65       ;
CODE_20C28F:    BRA CODE_20C2A5             ; $20:C28F: 80 14       ;

CODE_20C291:    LDA $5D,x                   ; $20:C291: B5 5D       ;
CODE_20C293:    CMP #$90                    ; $20:C293: C9 90       ;
CODE_20C295:    BCC CODE_20C2A5             ; $20:C295: 90 0E       ;
CODE_20C297:    LDA $65,x                   ; $20:C297: B5 65       ;
CODE_20C299:    BNE CODE_20C2A5             ; $20:C299: D0 0A       ;
CODE_20C29B:    LDA #$E8                    ; $20:C29B: A9 E8       ;
CODE_20C29D:    STA $65,x                   ; $20:C29D: 95 65       ;
CODE_20C29F:    STA $6D,x                   ; $20:C29F: 95 6D       ;
CODE_20C2A1:    LDA #$10                    ; $20:C2A1: A9 10       ;
CODE_20C2A3:    STA $99                     ; $20:C2A3: 85 99       ;
CODE_20C2A5:    JMP CODE_20C342             ; $20:C2A5: 4C 42 C3    ;

CODE_20C2A8:    JSR CODE_20C3B2             ; $20:C2A8: 20 B2 C3    ;
CODE_20C2AB:    LDA $BA                     ; $20:C2AB: A5 BA       ;
CODE_20C2AD:    AND #$10                    ; $20:C2AD: 29 10       ;
CODE_20C2AF:    BEQ CODE_20C2B9             ; $20:C2AF: F0 08       ;
CODE_20C2B1:    LDA #$0A                    ; $20:C2B1: A9 0A       ;
CODE_20C2B3:    STA $9B                     ; $20:C2B3: 85 9B       ;
CODE_20C2B5:    LDA #$30                    ; $20:C2B5: A9 30       ;
CODE_20C2B7:    STA $65,x                   ; $20:C2B7: 95 65       ;
CODE_20C2B9:    LDA $45,x                   ; $20:C2B9: B5 45       ;
CODE_20C2BB:    BEQ CODE_20C2C1             ; $20:C2BB: F0 04       ;
CODE_20C2BD:    LDA #$00                    ; $20:C2BD: A9 00       ;
CODE_20C2BF:    STA $65,x                   ; $20:C2BF: 95 65       ;
CODE_20C2C1:    LDA $98                     ; $20:C2C1: A5 98       ;
CODE_20C2C3:    BEQ CODE_20C2C7             ; $20:C2C3: F0 02       ;
CODE_20C2C5:    INC $A6,x                   ; $20:C2C5: F6 A6       ;
CODE_20C2C7:    JMP CODE_20C342             ; $20:C2C7: 4C 42 C3    ;

CODE_20C2CA:    LDA $98                     ; $20:C2CA: A5 98       ;
CODE_20C2CC:    BEQ CODE_20C2D7             ; $20:C2CC: F0 09       ;
CODE_20C2CE:    LDA #$D0                    ; $20:C2CE: A9 D0       ;
CODE_20C2D0:    STA $65,x                   ; $20:C2D0: 95 65       ;
CODE_20C2D2:    LDY #$01                    ; $20:C2D2: A0 01       ;
CODE_20C2D4:    JMP CODE_20C36F             ; $20:C2D4: 4C 6F C3    ;

CODE_20C2D7:    JSR CODE_20C3B2             ; $20:C2D7: 20 B2 C3    ;
CODE_20C2DA:    LDA $55,x                   ; $20:C2DA: B5 55       ;
CODE_20C2DC:    CMP #$38                    ; $20:C2DC: C9 38       ;
CODE_20C2DE:    BCS CODE_20C2EA                 ; $20:C2DE: B0 0A       ;
CODE_20C2E0:    LDA $65,x                   ; $20:C2E0: B5 65       ;
CODE_20C2E2:    BEQ CODE_20C2EA             ; $20:C2E2: F0 06       ;
CODE_20C2E4:    STZ $65,x                   ; $20:C2E4: 74 65       ;
CODE_20C2E6:    LDA #$D0                    ; $20:C2E6: A9 D0       ;
CODE_20C2E8:    STA $6B                     ; $20:C2E8: 85 6B       ;
CODE_20C2EA:    LDA $97                     ; $20:C2EA: A5 97       ;
CODE_20C2EC:    BEQ CODE_20C2F0             ; $20:C2EC: F0 02       ;
CODE_20C2EE:    INC $A6,x                   ; $20:C2EE: F6 A6       ;
CODE_20C2F0:    JMP CODE_20C342             ; $20:C2F0: 4C 42 C3    ;

CODE_20C2F3:    LDA $97                     ; $20:C2F3: A5 97       ;
CODE_20C2F5:    BEQ CODE_20C2FC             ; $20:C2F5: F0 05       ;
CODE_20C2F7:    LDY #$00                    ; $20:C2F7: A0 00       ;
CODE_20C2F9:    JMP CODE_20C36F             ; $20:C2F9: 4C 6F C3    ;

CODE_20C2FC:    JSR CODE_20C3B2             ; $20:C2FC: 20 B2 C3    ;
CODE_20C2FF:    LDA #$30                    ; $20:C2FF: A9 30       ;
CODE_20C301:    STA $65,x                   ; $20:C301: 95 65       ;
CODE_20C303:    LDA $45,x                   ; $20:C303: B5 45       ;
CODE_20C305:    BEQ CODE_20C317             ; $20:C305: F0 10       ;
CODE_20C307:    LDA #$FF                    ; $20:C307: A9 FF       ;
CODE_20C309:    STA $45,x                   ; $20:C309: 95 45       ;
CODE_20C30B:    LDA #$F0                    ; $20:C30B: A9 F0       ;
CODE_20C30D:    STA $55,x                   ; $20:C30D: 95 55       ;
CODE_20C30F:    LDA #$30                    ; $20:C30F: A9 30       ;
CODE_20C311:    STA $0513,x                 ; $20:C311: 9D 13 05    ;
CODE_20C314:    INC $A6,x                   ; $20:C314: F6 A6       ;
CODE_20C316:    RTS                         ; $20:C316: 60          ;

CODE_20C317:    JMP CODE_20C342             ; $20:C317: 4C 42 C3    ;

CODE_20C31A:    LDA $0513,x                 ; $20:C31A: BD 13 05    ;
CODE_20C31D:    BNE CODE_20C341             ; $20:C31D: D0 22       ;
CODE_20C31F:    LDA $9D                     ; $20:C31F: A5 9D       ;
CODE_20C321:    BNE CODE_20C33B             ; $20:C321: D0 18       ;
CODE_20C323:    JSR CODE_20C3B2             ; $20:C323: 20 B2 C3    ;
CODE_20C326:    LDA $45,x                   ; $20:C326: B5 45       ;
CODE_20C328:    BNE CODE_20C33B             ; $20:C328: D0 11       ;
CODE_20C32A:    LDA $8F                     ; $20:C32A: A5 8F       ;
CODE_20C32C:    BEQ CODE_20C33B             ; $20:C32C: F0 0D       ;
CODE_20C32E:    LDA $53                     ; $20:C32E: A5 53       ;
CODE_20C330:    SEC                         ; $20:C330: 38          ;
CODE_20C331:    SBC $55,x                   ; $20:C331: F5 55       ;
CODE_20C333:    CMP #$10                    ; $20:C333: C9 10       ;
CODE_20C335:    BCS CODE_20C33B                     ; $20:C335: B0 04       ;
CODE_20C337:    LDA #$2C                    ; $20:C337: A9 2C       ;
CODE_20C339:    STA $9D                     ; $20:C339: 85 9D       ;
CODE_20C33B:    JSR CODE_20C3CE             ; $20:C33B: 20 CE C3    ;
CODE_20C33E:    JSR CODE_20C342             ; $20:C33E: 20 42 C3    ;
CODE_20C341:    RTS                         ; $20:C341: 60          ;

CODE_20C342:    LDA $65,x                   ; $20:C342: B5 65       ;
CODE_20C344:    BEQ CODE_20C35C             ; $20:C344: F0 16       ;
CODE_20C346:    LDA $9D                     ; $20:C346: A5 9D       ;
CODE_20C348:    BNE CODE_20C35C             ; $20:C348: D0 12       ;
CODE_20C34A:    LDA $15                     ; $20:C34A: A5 15       ;
CODE_20C34C:    AND #$06                    ; $20:C34C: 29 06       ;
CODE_20C34E:    PHA                         ; $20:C34E: 48          ;
CODE_20C34F:    LSR A                       ; $20:C34F: 4A          ;
CODE_20C350:    STA $051F,x                 ; $20:C350: 9D 1F 05    ;
CODE_20C353:    PLA                         ; $20:C353: 68          ;
CODE_20C354:    AND #$04                    ; $20:C354: 29 04       ;
CODE_20C356:    ASL A                       ; $20:C356: 0A          ;
CODE_20C357:    ASL A                       ; $20:C357: 0A          ;
CODE_20C358:    ASL A                       ; $20:C358: 0A          ;
CODE_20C359:    ASL A                       ; $20:C359: 0A          ;
CODE_20C35A:    STA $A0,x                   ; $20:C35A: 95 A0       ;
CODE_20C35C:    JMP CODE_20C418             ; $20:C35C: 4C 18 C4    ;

DATA_20C35F:        db $F4,$F6,$FA,$FE,$02,$06,$0A,$0C
                    db $0C,$0A,$06,$02,$FE,$FA,$F6,$F4

CODE_20C36F:    LDA $0053,y                     ; $20:C36F: B9 53 00    ;
CODE_20C372:    STA $55,x                   ; $20:C372: 95 55       ;
CODE_20C374:    LDA $0043,y                 ; $20:C374: B9 43 00    ;
CODE_20C377:    STA $45,x                   ; $20:C377: 95 45       ;
CODE_20C379:    LDA $005B,y                 ; $20:C379: B9 5B 00    ;
CODE_20C37C:    CLC                         ; $20:C37C: 18          ;
CODE_20C37D:    ADC #$0D                    ; $20:C37D: 69 0D       ;
CODE_20C37F:    STA $5D,x                   ; $20:C37F: 95 5D       ;
CODE_20C381:    LDA $0085,y                 ; $20:C381: B9 85 00    ;
CODE_20C384:    PHP                         ; $20:C384: 08          ;
CODE_20C385:    LDA $0099,y                 ; $20:C385: B9 99 00    ;
CODE_20C388:    PLP                         ; $20:C388: 28          ;
CODE_20C389:    PHA                         ; $20:C389: 48          ;
CODE_20C38A:    BEQ CODE_20C38F             ; $20:C38A: F0 03       ;
CODE_20C38C:    CLC                         ; $20:C38C: 18          ;
CODE_20C38D:    ADC #$08                    ; $20:C38D: 69 08       ;
CODE_20C38F:    STX $0F                     ; $20:C38F: 86 0F       ;
CODE_20C391:    TAX                         ; $20:C391: AA          ;
CODE_20C392:    LDA.l DATA_20C35F,x                 ; $20:C392: BF 5F C3 20 ;
CODE_20C396:    BPL CODE_20C39C             ; $20:C396: 10 04       ;
CODE_20C398:    LDX $0F                     ; $20:C398: A6 0F       ;
CODE_20C39A:    DEC $45,x                   ; $20:C39A: D6 45       ;
CODE_20C39C:    LDX $0F                     ; $20:C39C: A6 0F       ;
CODE_20C39E:    CLC                         ; $20:C39E: 18          ;
CODE_20C39F:    ADC $55,x                   ; $20:C39F: 75 55       ;
CODE_20C3A1:    STA $55,x                   ; $20:C3A1: 95 55       ;
CODE_20C3A3:    BCC CODE_20C3A7             ; $20:C3A3: 90 02       ;
CODE_20C3A5:    INC $45,x                   ; $20:C3A5: F6 45       ;
CODE_20C3A7:    PLA                         ; $20:C3A7: 68          ;
CODE_20C3A8:    BNE CODE_20C3AD             ; $20:C3A8: D0 03       ;
CODE_20C3AA:    JMP CODE_20C418             ; $20:C3AA: 4C 18 C4    ;

CODE_20C3AD:    LDA #$00                    ; $20:C3AD: A9 00       ;
CODE_20C3AF:    JMP CODE_20C41C             ; $20:C3AF: 4C 1C C4    ;

CODE_20C3B2:    LDA $6D,x                   ; $20:C3B2: B5 6D       ;
CODE_20C3B4:    CLC                         ; $20:C3B4: 18          ;
CODE_20C3B5:    ADC #$04                    ; $20:C3B5: 69 04       ;
CODE_20C3B7:    STA $6D,x                   ; $20:C3B7: 95 6D       ;
CODE_20C3B9:    JSR CODE_20C508             ; $20:C3B9: 20 08 C5    ;
CODE_20C3BC:    JSR CODE_20C500             ; $20:C3BC: 20 00 C5    ;
CODE_20C3BF:    LDA $5D,x                   ; $20:C3BF: B5 5D       ;
CODE_20C3C1:    AND #$F0                    ; $20:C3C1: 29 F0       ;
CODE_20C3C3:    CMP #$B0                    ; $20:C3C3: C9 B0       ;
CODE_20C3C5:    BNE CODE_20C3C9             ; $20:C3C5: D0 02       ;
CODE_20C3C7:    STA $5D,x                   ; $20:C3C7: 95 5D       ;
CODE_20C3C9:    RTS                         ; $20:C3C9: 60          ;

DATA_20C3CA:        db $F0,$30

DATA_20C3CC:        db $FF,$00

CODE_20C3CE:    PHX                     ; $20:C3CE: DA          ;
CODE_20C3CF:    TXY                     ; $20:C3CF: 9B          ;
CODE_20C3D0:    LDX #$00                    ; $20:C3D0: A2 00       ;
CODE_20C3D2:    LDA $0045,y                 ; $20:C3D2: B9 45 00    ;
CODE_20C3D5:    BEQ CODE_20C3F0             ; $20:C3D5: F0 19       ;
CODE_20C3D7:    BPL CODE_20C3DA             ; $20:C3D7: 10 01       ;
CODE_20C3D9:    INX                         ; $20:C3D9: E8          ;
CODE_20C3DA:    LDA $0055,y                 ; $20:C3DA: B9 55 00    ;
CODE_20C3DD:    CLC                         ; $20:C3DD: 18          ;
CODE_20C3DE:    ADC.l DATA_20C3CA,x                 ; $20:C3DE: 7F CA C3 20 ;
CODE_20C3E2:    LDA $0045,y                 ; $20:C3E2: B9 45 00    ;
CODE_20C3E5:    ADC.l DATA_20C3CC,x                 ; $20:C3E5: 7F CC C3 20 ;
CODE_20C3E9:    BEQ CODE_20C3F0             ; $20:C3E9: F0 05       ;
CODE_20C3EB:    LDA #$00                    ; $20:C3EB: A9 00       ;
CODE_20C3ED:    STA $00A6,y                 ; $20:C3ED: 99 A6 00    ;
CODE_20C3F0:    PLX                         ; $20:C3F0: FA          ;
CODE_20C3F1:    RTS                         ; $20:C3F1: 60          ;

DATA_20C3F2:        db $F8,$F8,$F4,$F4,$F0,$F2,$FA,$FC
                    db $FE,$FE,$DC,$DC,$D4,$D4,$D6,$D8
                    db $DA,$DA,$D6,$D8

DATA_20C406:        db $00,$02,$04,$06,$0A,$0C

DATA_20C40C:        db $00,$10,$20,$50,$40,$30

DATA_20C412:        db $01,$01,$01,$01,$02,$02

CODE_20C418:    LDA.l DATA_20C40C,x     ; $20:C418: BF 0C C4 20 ;
CODE_20C41C:    PHA                         ; $20:C41C: 48          ;
CODE_20C41D:    LDA.l DATA_20C412,x                 ; $20:C41D: BF 12 C4 20 ;
CODE_20C421:    ASL A                       ; $20:C421: 0A          ;
CODE_20C422:    STA $02                     ; $20:C422: 85 02       ;
CODE_20C424:    PHX                         ; $20:C424: DA          ;
CODE_20C425:    LDA $051F,x                 ; $20:C425: BD 1F 05    ;
CODE_20C428:    ASL A                       ; $20:C428: 0A          ;
CODE_20C429:    CLC                         ; $20:C429: 18          ;
CODE_20C42A:    ADC.l DATA_20C406,x                 ; $20:C42A: 7F 06 C4 20 ;
CODE_20C42E:    TAX                         ; $20:C42E: AA          ;
CODE_20C42F:    LDA.l DATA_20C3F2,x                 ; $20:C42F: BF F2 C3 20 ;
CODE_20C433:    STA $00                     ; $20:C433: 85 00       ;
CODE_20C435:    LDA.l DATA_20C3F2+1,x               ; $20:C435: BF F3 C3 20 ;
CODE_20C439:    STA $01                     ; $20:C439: 85 01       ;
CODE_20C43B:    PLX                         ; $20:C43B: FA          ;
CODE_20C43C:    PLA                         ; $20:C43C: 68          ;
CODE_20C43D:    TAY                         ; $20:C43D: A8          ;
CODE_20C43E:    LDA $5D,x                   ; $20:C43E: B5 5D       ;
CODE_20C440:    CMP #$E8                    ; $20:C440: C9 E8       ;
CODE_20C442:    BCC CODE_20C445             ; $20:C442: 90 01       ;
CODE_20C444:    RTS                         ; $20:C444: 60          ;

CODE_20C445:    STA $0901,y                 ; $20:C445: 99 01 09    ;
CODE_20C448:    STA $0905,y                 ; $20:C448: 99 05 09    ;
CODE_20C44B:    CLC                         ; $20:C44B: 18          ;
CODE_20C44C:    ADC #$08                    ; $20:C44C: 69 08       ;
CODE_20C44E:    STA $0909,y                 ; $20:C44E: 99 09 09    ;
CODE_20C451:    STA $090D,y                 ; $20:C451: 99 0D 09    ;
CODE_20C454:    LDA $55,x                   ; $20:C454: B5 55       ;
CODE_20C456:    STA $0900,y                 ; $20:C456: 99 00 09    ;
CODE_20C459:    STA $0908,y                 ; $20:C459: 99 08 09    ;
CODE_20C45C:    CLC                         ; $20:C45C: 18          ;
CODE_20C45D:    ADC #$08                    ; $20:C45D: 69 08       ;
CODE_20C45F:    STA $0904,y                 ; $20:C45F: 99 04 09    ;
CODE_20C462:    STA $090C,y                 ; $20:C462: 99 0C 09    ;
CODE_20C465:    LDA $02                     ; $20:C465: A5 02       ;
CODE_20C467:    ORA $A0,x                   ; $20:C467: 15 A0       ;
CODE_20C469:    ORA #$30                    ; $20:C469: 09 30       ;
CODE_20C46B:    STA $0903,y                 ; $20:C46B: 99 03 09    ;
CODE_20C46E:    STA $0907,y                 ; $20:C46E: 99 07 09    ;
CODE_20C471:    STA $090B,y                 ; $20:C471: 99 0B 09    ;
CODE_20C474:    STA $090F,y                 ; $20:C474: 99 0F 09    ;
CODE_20C477:    LDA $00                     ; $20:C477: A5 00       ;
CODE_20C479:    PHA                         ; $20:C479: 48          ;
CODE_20C47A:    STA $0902,y                 ; $20:C47A: 99 02 09    ;
CODE_20C47D:    INC A                       ; $20:C47D: 1A          ;
CODE_20C47E:    STA $090A,y                 ; $20:C47E: 99 0A 09    ;
CODE_20C481:    LDA $01                     ; $20:C481: A5 01       ;
CODE_20C483:    STA $0906,y                 ; $20:C483: 99 06 09    ;
CODE_20C486:    INC A                       ; $20:C486: 1A          ;
CODE_20C487:    STA $090E,y                 ; $20:C487: 99 0E 09    ;
CODE_20C48A:    LDA $A0,x                   ; $20:C48A: B5 A0       ;
CODE_20C48C:    BEQ CODE_20C4A0             ; $20:C48C: F0 12       ;
CODE_20C48E:    LDA $01                     ; $20:C48E: A5 01       ;
CODE_20C490:    STA $0902,y                 ; $20:C490: 99 02 09    ;
CODE_20C493:    INC A                       ; $20:C493: 1A          ;
CODE_20C494:    STA $090A,y                 ; $20:C494: 99 0A 09    ;
CODE_20C497:    LDA $00                     ; $20:C497: A5 00       ;
CODE_20C499:    STA $0906,y                 ; $20:C499: 99 06 09    ;
CODE_20C49C:    INC A                       ; $20:C49C: 1A          ;
CODE_20C49D:    STA $090E,y                 ; $20:C49D: 99 0E 09    ;
CODE_20C4A0:    LDA $A0,x                   ; $20:C4A0: B5 A0       ;
CODE_20C4A2:    AND #$80                    ; $20:C4A2: 29 80       ;
CODE_20C4A4:    BEQ CODE_20C4B8             ; $20:C4A4: F0 12       ;
CODE_20C4A6:    LDA $01                     ; $20:C4A6: A5 01       ;
CODE_20C4A8:    STA $090A,y                 ; $20:C4A8: 99 0A 09    ;
CODE_20C4AB:    INC A                       ; $20:C4AB: 1A          ;
CODE_20C4AC:    STA $0902,y                 ; $20:C4AC: 99 02 09    ;
CODE_20C4AF:    LDA $00                     ; $20:C4AF: A5 00       ;
CODE_20C4B1:    STA $090E,y                 ; $20:C4B1: 99 0E 09    ;
CODE_20C4B4:    INC A                       ; $20:C4B4: 1A          ;
CODE_20C4B5:    STA $0906,y                 ; $20:C4B5: 99 06 09    ;
CODE_20C4B8:    PLA                         ; $20:C4B8: 68          ;
CODE_20C4B9:    CMP $01                     ; $20:C4B9: C5 01       ;
CODE_20C4BB:    BNE CODE_20C4D0             ; $20:C4BB: D0 13       ;
CODE_20C4BD:    LDA $0903,y                 ; $20:C4BD: B9 03 09    ;
CODE_20C4C0:    AND #$BF                    ; $20:C4C0: 29 BF       ;
CODE_20C4C2:    STA $0903,y                 ; $20:C4C2: 99 03 09    ;
CODE_20C4C5:    STA $090B,y                 ; $20:C4C5: 99 0B 09    ;
CODE_20C4C8:    ORA #$40                    ; $20:C4C8: 09 40       ;
CODE_20C4CA:    STA $0907,y                 ; $20:C4CA: 99 07 09    ;
CODE_20C4CD:    STA $090F,y                 ; $20:C4CD: 99 0F 09    ;
CODE_20C4D0:    STZ $D8                     ; $20:C4D0: 64 D8       ;
CODE_20C4D2:    STZ $D9                     ; $20:C4D2: 64 D9       ;
CODE_20C4D4:    LDA $45,x                   ; $20:C4D4: B5 45       ;
CODE_20C4D6:    BEQ CODE_20C4DA             ; $20:C4D6: F0 02       ;
CODE_20C4D8:    INC $D8                     ; $20:C4D8: E6 D8       ;
CODE_20C4DA:    LDA $55,x                   ; $20:C4DA: B5 55       ;
CODE_20C4DC:    CLC                         ; $20:C4DC: 18          ;
CODE_20C4DD:    ADC #$08                    ; $20:C4DD: 69 08       ;
CODE_20C4DF:    LDA #$00                    ; $20:C4DF: A9 00       ;
CODE_20C4E1:    ADC $45,x                   ; $20:C4E1: 75 45       ;
CODE_20C4E3:    BEQ CODE_20C4E7             ; $20:C4E3: F0 02       ;
CODE_20C4E5:    INC $D9                     ; $20:C4E5: E6 D9       ;
CODE_20C4E7:    TYA                         ; $20:C4E7: 98          ;
CODE_20C4E8:    LSR A                       ; $20:C4E8: 4A          ;
CODE_20C4E9:    LSR A                       ; $20:C4E9: 4A          ;
CODE_20C4EA:    TAY                         ; $20:C4EA: A8          ;
CODE_20C4EB:    LDA $D8                     ; $20:C4EB: A5 D8       ;
CODE_20C4ED:    AND #$01                    ; $20:C4ED: 29 01       ;
CODE_20C4EF:    STA $0A60,y                 ; $20:C4EF: 99 60 0A    ;
CODE_20C4F2:    STA $0A62,y                 ; $20:C4F2: 99 62 0A    ;
CODE_20C4F5:    LDA $D9                     ; $20:C4F5: A5 D9       ;
CODE_20C4F7:    AND #$01                    ; $20:C4F7: 29 01       ;
CODE_20C4F9:    STA $0A61,y                 ; $20:C4F9: 99 61 0A    ;
CODE_20C4FC:    STA $0A63,y                 ; $20:C4FC: 99 63 0A    ;
CODE_20C4FF:    RTS                         ; $20:C4FF: 60          ;

CODE_20C500:    INX                         ; $20:C500: E8          ;
CODE_20C501:    INX                         ; $20:C501: E8          ;
CODE_20C502:    JSR CODE_20BCDF             ; $20:C502: 20 DF BC    ;
CODE_20C505:    DEX                         ; $20:C505: CA          ;
CODE_20C506:    DEX                         ; $20:C506: CA          ;
CODE_20C507:    RTS                         ; $20:C507: 60          ;

CODE_20C508:    LDA $6D,x                   ; $20:C508: B5 6D       ;
CODE_20C50A:    BMI CODE_20C514             ; $20:C50A: 30 08       ;
CODE_20C50C:    CMP #$60                    ; $20:C50C: C9 60       ;
CODE_20C50E:    BMI CODE_20C514             ; $20:C50E: 30 04       ;
CODE_20C510:    LDA #$60                    ; $20:C510: A9 60       ;
CODE_20C512:    STA $6D,x                   ; $20:C512: 95 6D       ;
CODE_20C514:    INX                         ; $20:C514: E8          ;
CODE_20C515:    INX                         ; $20:C515: E8          ;
CODE_20C516:    JSR CODE_20BD1A             ; $20:C516: 20 1A BD    ;
CODE_20C519:    DEX                         ; $20:C519: CA          ;
CODE_20C51A:    DEX                         ; $20:C51A: CA          ;
CODE_20C51B:    RTS                         ; $20:C51B: 60          ;

DATA_20C51C:        db $00,$30,$60,$90

CODE_20C520:    JSL CODE_22E0A9         ; $20:C520: 22 A9 E0 22 ;
CODE_20C524:    LDX #$03                ; $20:C524: A2 03       ;
CODE_20C526:    LDA $A6,x               ; $20:C526: B5 A6       ;
CODE_20C528:    BEQ CODE_20C536         ; $20:C528: F0 0C       ;
CODE_20C52A:    CMP #$01                ; $20:C52A: C9 01       ;
CODE_20C52C:    BNE CODE_20C533             ; $20:C52C: D0 05       ;
CODE_20C52E:    JSR CODE_20C53A             ; $20:C52E: 20 3A C5    ;
CODE_20C531:    BRA CODE_20C536             ; $20:C531: 80 03       ;

CODE_20C533:    JSR CODE_20C568             ; $20:C533: 20 68 C5    ;
CODE_20C536:    DEX                         ; $20:C536: CA          ;
CODE_20C537:    BPL CODE_20C526             ; $20:C537: 10 ED       ;
CODE_20C539:    RTS                         ; $20:C539: 60          ;

CODE_20C53A:    INC $A6,x                   ; $20:C53A: F6 A6       ;
CODE_20C53C:    LDA #$FF                    ; $20:C53C: A9 FF       ;
CODE_20C53E:    STA $45,x                   ; $20:C53E: 95 45       ;
CODE_20C540:    LDA #$F0                    ; $20:C540: A9 F0       ;
CODE_20C542:    STA $55,x                   ; $20:C542: 95 55       ;
CODE_20C544:    LDA #$08                    ; $20:C544: A9 08       ;
CODE_20C546:    CPX #$03                    ; $20:C546: E0 03       ;
CODE_20C548:    BNE CODE_20C54C             ; $20:C548: D0 02       ;
CODE_20C54A:    LDA #$12                    ; $20:C54A: A9 12       ;
CODE_20C54C:    STA $65,x                   ; $20:C54C: 95 65       ;
CODE_20C54E:    RTS                         ; $20:C54E: 60          ;

DATA_20C54F:        db $E0,$F0,$00

DATA_20C552:        db $20,$20,$90,$00

DATA_20C556:        db $44,$44,$44

DATA_20C559:        db $44,$44,$44

DATA_20C55C:        db $B0,$E4,$E8,$B0,$E4,$EE

DATA_20C562:        db $E0,$E2,$E6,$E0,$EA,$EC

CODE_20C568:    JSR CODE_20C500         ; $20:C568: 20 00 C5    ;
CODE_20C56B:    JSR CODE_20C3CE         ; $20:C56B: 20 CE C3    ;
CODE_20C56E:    LDA $45,x               ; $20:C56E: B5 45       ;
CODE_20C570:    BNE CODE_20C584                     ; $20:C570: D0 12       ;
CODE_20C572:    LDA.l DATA_20C552,x     ; $20:C572: BF 52 C5 20 ;
CODE_20C576:    BEQ CODE_20C584         ; $20:C576: F0 0C       ;
CODE_20C578:    CMP $55,x                   ; $20:C578: D5 55       ;
CODE_20C57A:    BCS CODE_20C584                     ; $20:C57A: B0 08       ;
CODE_20C57C:    INX                         ; $20:C57C: E8          ;
CODE_20C57D:    LDA $A6,x                   ; $20:C57D: B5 A6       ;
CODE_20C57F:    BNE CODE_20C583             ; $20:C57F: D0 02       ;
CODE_20C581:    INC $A6,x                   ; $20:C581: F6 A6       ;
CODE_20C583:    DEX                         ; $20:C583: CA          ;
CODE_20C584:    LDA $15                     ; $20:C584: A5 15       ;
CODE_20C586:    LSR A                       ; $20:C586: 4A          ;
CODE_20C587:    LSR A                       ; $20:C587: 4A          ;
CODE_20C588:    CPX #$03                    ; $20:C588: E0 03       ;
CODE_20C58A:    BEQ CODE_20C58D             ; $20:C58A: F0 01       ;
CODE_20C58C:    LSR A                       ; $20:C58C: 4A          ;
CODE_20C58D:    AND #$01                    ; $20:C58D: 29 01       ;
CODE_20C58F:    BEQ CODE_20C593             ; $20:C58F: F0 02       ;
CODE_20C591:    LDA #$03                    ; $20:C591: A9 03       ;
CODE_20C593:    STA $051F,x                 ; $20:C593: 9D 1F 05    ;
CODE_20C596:    STX $02                     ; $20:C596: 86 02       ;
CODE_20C598:    LDA $55,x                   ; $20:C598: B5 55       ;
CODE_20C59A:    STA $00                     ; $20:C59A: 85 00       ;
CODE_20C59C:    LDA $051F,x                 ; $20:C59C: BD 1F 05    ;
CODE_20C59F:    STA $01                     ; $20:C59F: 85 01       ;
CODE_20C5A1:    LDA.l DATA_20C51C,x                 ; $20:C5A1: BF 1C C5 20 ;
CODE_20C5A5:    TAY                         ; $20:C5A5: A8          ;
CODE_20C5A6:    LDX #$02                    ; $20:C5A6: A2 02       ;
CODE_20C5A8:    LDA #$BA                    ; $20:C5A8: A9 BA       ;
CODE_20C5AA:    CLC                         ; $20:C5AA: 18          ;
CODE_20C5AB:    ADC.l DATA_20C54F,x                 ; $20:C5AB: 7F 4F C5 20 ;
CODE_20C5AF:    STA $0901,y                 ; $20:C5AF: 99 01 09    ;
CODE_20C5B2:    STA $0905,y                 ; $20:C5B2: 99 05 09    ;
CODE_20C5B5:    CLC                         ; $20:C5B5: 18          ;
CODE_20C5B6:    ADC #$08                    ; $20:C5B6: 69 08       ;
CODE_20C5B8:    STA $0909,y                 ; $20:C5B8: 99 09 09    ;
CODE_20C5BB:    STA $090D,y                 ; $20:C5BB: 99 0D 09    ;
CODE_20C5BE:    TXA                         ; $20:C5BE: 8A          ;
CODE_20C5BF:    PHA                         ; $20:C5BF: 48          ;
CODE_20C5C0:    CLC                         ; $20:C5C0: 18          ;
CODE_20C5C1:    ADC $01                     ; $20:C5C1: 65 01       ;
CODE_20C5C3:    TAX                         ; $20:C5C3: AA          ;
CODE_20C5C4:    LDA.l DATA_20C55C,x                 ; $20:C5C4: BF 5C C5 20 ;
CODE_20C5C8:    STA $0902,y                 ; $20:C5C8: 99 02 09    ;
CODE_20C5CB:    INC A                       ; $20:C5CB: 1A          ;
CODE_20C5CC:    STA $090A,y                 ; $20:C5CC: 99 0A 09    ;
CODE_20C5CF:    LDA.l DATA_20C562,x                 ; $20:C5CF: BF 62 C5 20 ;
CODE_20C5D3:    STA $0906,y                 ; $20:C5D3: 99 06 09    ;
CODE_20C5D6:    INC A                       ; $20:C5D6: 1A          ;
CODE_20C5D7:    STA $090E,y                 ; $20:C5D7: 99 0E 09    ;
CODE_20C5DA:    PHY                         ; $20:C5DA: 5A          ;
CODE_20C5DB:    LDX $02                     ; $20:C5DB: A6 02       ;
CODE_20C5DD:    JSR CODE_20C4D0             ; $20:C5DD: 20 D0 C4    ;
CODE_20C5E0:    PLY                         ; $20:C5E0: 7A          ;
CODE_20C5E1:    PLA                         ; $20:C5E1: 68          ;
CODE_20C5E2:    TAX                         ; $20:C5E2: AA          ;
CODE_20C5E3:    LDA.l DATA_20C556,x                 ; $20:C5E3: BF 56 C5 20 ;
CODE_20C5E7:    ORA #$20                    ; $20:C5E7: 09 20       ;
CODE_20C5E9:    STA $0903,y                 ; $20:C5E9: 99 03 09    ;
CODE_20C5EC:    STA $090B,y                 ; $20:C5EC: 99 0B 09    ;
CODE_20C5EF:    LDA.l DATA_20C559,x                 ; $20:C5EF: BF 59 C5 20 ;
CODE_20C5F3:    ORA #$20                    ; $20:C5F3: 09 20       ;
CODE_20C5F5:    STA $0907,y                 ; $20:C5F5: 99 07 09    ;
CODE_20C5F8:    STA $090F,y                 ; $20:C5F8: 99 0F 09    ;
CODE_20C5FB:    LDA $00                     ; $20:C5FB: A5 00       ;
CODE_20C5FD:    STA $0900,y                 ; $20:C5FD: 99 00 09    ;
CODE_20C600:    STA $0908,y                 ; $20:C600: 99 08 09    ;
CODE_20C603:    CLC                         ; $20:C603: 18          ;
CODE_20C604:    ADC #$08                    ; $20:C604: 69 08       ;
CODE_20C606:    STA $0904,y                 ; $20:C606: 99 04 09    ;
CODE_20C609:    STA $090C,y                 ; $20:C609: 99 0C 09    ;
CODE_20C60C:    TYA                         ; $20:C60C: 98          ;
CODE_20C60D:    CLC                         ; $20:C60D: 18          ;
CODE_20C60E:    ADC #$10                    ; $20:C60E: 69 10       ;
CODE_20C610:    TAY                         ; $20:C610: A8          ;
CODE_20C611:    DEX                         ; $20:C611: CA          ;
CODE_20C612:    BPL CODE_20C5A8             ; $20:C612: 10 94       ;
CODE_20C614:    LDX $02                     ; $20:C614: A6 02       ;
CODE_20C616:    RTS                         ; $20:C616: 60          ;

CODE_20C617:    STZ $1EBF                   ; $20:C617: 9C BF 1E    ;
CODE_20C61A:    STZ $4200                   ; $20:C61A: 9C 00 42    ;
CODE_20C61D:    JSL CODE_008B63             ; $20:C61D: 22 63 8B 00 ;
CODE_20C621:    REP #$20                    ; $20:C621: C2 20       ;
CODE_20C623:    LDX #$80                    ; $20:C623: A2 80       ;
CODE_20C625:    STX $2115                   ; $20:C625: 8E 15 21    ;
CODE_20C628:    LDA #$2000                  ; $20:C628: A9 00 20    ;
CODE_20C62B:    STA $2116                   ; $20:C62B: 8D 16 21    ;
CODE_20C62E:    LDA #$1801                  ; $20:C62E: A9 01 18    ;
CODE_20C631:    STA $4300                   ; $20:C631: 8D 00 43    ;
CODE_20C634:    LDA.w #DATA_35E000                  ; $20:C634: A9 00 E0    ;
CODE_20C637:    STA $4302                   ; $20:C637: 8D 02 43    ;
CODE_20C63A:    LDX.b #DATA_35E000>>16                      ; $20:C63A: A2 35       ;
CODE_20C63C:    STX $4304                   ; $20:C63C: 8E 04 43    ;
CODE_20C63F:    LDA #$2000                  ; $20:C63F: A9 00 20    ;
CODE_20C642:    STA $4305                   ; $20:C642: 8D 05 43    ;
CODE_20C645:    LDX #$01                    ; $20:C645: A2 01       ;
CODE_20C647:    STX $420B                   ; $20:C647: 8E 0B 42    ;
CODE_20C64A:    LDA #$3400                  ; $20:C64A: A9 00 34    ;
CODE_20C64D:    STA $2116                   ; $20:C64D: 8D 16 21    ;
CODE_20C650:    LDA #$1801                  ; $20:C650: A9 01 18    ;
CODE_20C653:    STA $4300                   ; $20:C653: 8D 00 43    ;
CODE_20C656:    LDA.w #DATA_329000                  ; $20:C656: A9 00 90    ;
CODE_20C659:    STA $4302                   ; $20:C659: 8D 02 43    ;
CODE_20C65C:    LDX.b #DATA_329000>>16                      ; $20:C65C: A2 32       ;
CODE_20C65E:    STX $4304                   ; $20:C65E: 8E 04 43    ;
CODE_20C661:    LDA #$1000                  ; $20:C661: A9 00 10    ;
CODE_20C664:    STA $4305                   ; $20:C664: 8D 05 43    ;
CODE_20C667:    LDX #$01                    ; $20:C667: A2 01       ;
CODE_20C669:    STX $420B                   ; $20:C669: 8E 0B 42    ;
CODE_20C66C:    REP #$10                    ; $20:C66C: C2 10       ;
CODE_20C66E:    PHB                         ; $20:C66E: 8B          ;
CODE_20C66F:    LDX.w #DATA_3CA120                  ; $20:C66F: A2 20 A1    ;
CODE_20C672:    LDY #$1320                  ; $20:C672: A0 20 13    ;
CODE_20C675:    LDA #$00DF                  ; $20:C675: A9 DF 00    ;
CODE_20C678:    MVN $00, DATA_3CA120>>16                    ; $20:C678: 54 00 3C    ;
CODE_20C67B:    LDX.w #DATA_3CA8C0                  ; $20:C67B: A2 C0 A8    ;
CODE_20C67E:    LDY #$1320                  ; $20:C67E: A0 20 13    ;
CODE_20C681:    LDA #$001F                  ; $20:C681: A9 1F 00    ;
CODE_20C684:    MVN $00, DATA_3CA8C0>>16                    ; $20:C684: 54 00 3C    ;
CODE_20C687:    LDX.w #DATA_3C8800                  ; $20:C687: A2 00 88    ;
CODE_20C68A:    LDY #$1400                  ; $20:C68A: A0 00 14    ;
CODE_20C68D:    LDA #$009F                  ; $20:C68D: A9 9F 00    ;
CODE_20C690:    MVN $00, DATA_3C8800>>16                    ; $20:C690: 54 00 3C    ;
CODE_20C693:    LDX.w #DATA_3C8BE0                  ; $20:C693: A2 E0 8B    ;
CODE_20C696:    LDY #$14A0                  ; $20:C696: A0 A0 14    ;
CODE_20C699:    LDA #$001F                  ; $20:C699: A9 1F 00    ;
CODE_20C69C:    MVN $00, DATA_3C8BE0>>16                    ; $20:C69C: 54 00 3C    ;
CODE_20C69F:    PLB                         ; $20:C69F: AB          ;
CODE_20C6A0:    PHB                         ; $20:C6A0: 8B          ;
CODE_20C6A1:    LDX.w #DATA_3C88A0                  ; $20:C6A1: A2 A0 88    ;
CODE_20C6A4:    LDA $0726                   ; $20:C6A4: AD 26 07    ;
CODE_20C6A7:    AND #$00FF                  ; $20:C6A7: 29 FF 00    ;
CODE_20C6AA:    BEQ CODE_20C6AF             ; $20:C6AA: F0 03       ;
CODE_20C6AC:    LDX.w #DATA_3C88E0                  ; $20:C6AC: A2 E0 88    ;
CODE_20C6AF:    LDY #$14E0                  ; $20:C6AF: A0 E0 14    ;
CODE_20C6B2:    LDA #$001F                  ; $20:C6B2: A9 1F 00    ;
CODE_20C6B5:    MVN $00, DATA_3C88A0>>16                    ; $20:C6B5: 54 00 3C    ;
CODE_20C6B8:    PLB                         ; $20:C6B8: AB          ;
CODE_20C6B9:    SEP #$30                    ; $20:C6B9: E2 30       ;
CODE_20C6BB:    REP #$20                    ; $20:C6BB: C2 20       ;
CODE_20C6BD:    LDX #$00                    ; $20:C6BD: A2 00       ;
CODE_20C6BF:    LDA #$00FF                  ; $20:C6BF: A9 FF 00    ;
CODE_20C6C2:    STA $7F9000,x               ; $20:C6C2: 9F 00 90 7F ;
CODE_20C6C6:    STA $7F9070,x               ; $20:C6C6: 9F 70 90 7F ;
CODE_20C6CA:    STA $7F90E0,x               ; $20:C6CA: 9F E0 90 7F ;
CODE_20C6CE:    STA $7F9150,x               ; $20:C6CE: 9F 50 91 7F ;
CODE_20C6D2:    STA $7F9200,x               ; $20:C6D2: 9F 00 92 7F ;
CODE_20C6D6:    STA $7F9270,x               ; $20:C6D6: 9F 70 92 7F ;
CODE_20C6DA:    STA $7F92E0,x               ; $20:C6DA: 9F E0 92 7F ;
CODE_20C6DE:    STA $7F9350,x               ; $20:C6DE: 9F 50 93 7F ;
CODE_20C6E2:    INX                         ; $20:C6E2: E8          ;
CODE_20C6E3:    INX                         ; $20:C6E3: E8          ;
CODE_20C6E4:    CPX #$70                    ; $20:C6E4: E0 70       ;
CODE_20C6E6:    BNE CODE_20C6C2             ; $20:C6E6: D0 DA       ;
CODE_20C6E8:    LDA #$2641                  ; $20:C6E8: A9 41 26    ;
CODE_20C6EB:    STA $4370                   ; $20:C6EB: 8D 70 43    ;
CODE_20C6EE:    LDA.w #DATA_2AF859                  ; $20:C6EE: A9 59 F8    ;
CODE_20C6F1:    STA $4372                   ; $20:C6F1: 8D 72 43    ;
CODE_20C6F4:    LDX.b #DATA_2AF859>>16                      ; $20:C6F4: A2 2A       ;
CODE_20C6F6:    STX $4374                   ; $20:C6F6: 8E 74 43    ;
CODE_20C6F9:    LDX #$7F                    ; $20:C6F9: A2 7F       ;
CODE_20C6FB:    STX $4377                   ; $20:C6FB: 8E 77 43    ;
CODE_20C6FE:    LDA #$2841                  ; $20:C6FE: A9 41 28    ;
CODE_20C701:    STA $4360                   ; $20:C701: 8D 60 43    ;
CODE_20C704:    LDA.w #DATA_2AF860                  ; $20:C704: A9 60 F8    ;
CODE_20C707:    STA $4362                   ; $20:C707: 8D 62 43    ;
CODE_20C70A:    LDX.b #DATA_2AF860>>16                      ; $20:C70A: A2 2A       ;
CODE_20C70C:    STX $4364                   ; $20:C70C: 8E 64 43    ;
CODE_20C70F:    LDX #$7F                    ; $20:C70F: A2 7F       ;
CODE_20C711:    STX $4367                   ; $20:C711: 8E 67 43    ;
CODE_20C714:    STZ $212A                   ; $20:C714: 9C 2A 21    ;
CODE_20C717:    SEP #$20                    ; $20:C717: E2 20       ;
CODE_20C719:    LDA #$25                    ; $20:C719: A9 25       ;
CODE_20C71B:    STA $0205                   ; $20:C71B: 8D 05 02    ;
CODE_20C71E:    LDA #$45                    ; $20:C71E: A9 45       ;
CODE_20C720:    STA $0206                   ; $20:C720: 8D 06 02    ;
CODE_20C723:    LDA #$85                    ; $20:C723: A9 85       ;
CODE_20C725:    STA $0207                   ; $20:C725: 8D 07 02    ;
CODE_20C728:    LDA #$A0                    ; $20:C728: A9 A0       ;
CODE_20C72A:    STA $0202                   ; $20:C72A: 8D 02 02    ;
CODE_20C72D:    LDA #$10                    ; $20:C72D: A9 10       ;
CODE_20C72F:    STA $0203                   ; $20:C72F: 8D 03 02    ;
CODE_20C732:    LDA #$32                    ; $20:C732: A9 32       ;
CODE_20C734:    STA $0204                   ; $20:C734: 8D 04 02    ;
CODE_20C737:    LDX #$01                    ; $20:C737: A2 01       ;
CODE_20C739:    STX $1500                   ; $20:C739: 8E 00 15    ;
CODE_20C73C:    LDA #$FF                    ; $20:C73C: A9 FF       ;
CODE_20C73E:    STA $00                     ; $20:C73E: 85 00       ;
CODE_20C740:    STZ $01                     ; $20:C740: 64 01       ;
CODE_20C742:    JSR CODE_20FA0A             ; $20:C742: 20 0A FA    ;
CODE_20C745:    LDA #$80                    ; $20:C745: A9 80       ;
CODE_20C747:    STA $0101                   ; $20:C747: 8D 01 01    ;
CODE_20C74A:    LDX #$F5                    ; $20:C74A: A2 F5       ;
CODE_20C74C:    STZ $00,x                   ; $20:C74C: 74 00       ;
CODE_20C74E:    DEX                         ; $20:C74E: CA          ;
CODE_20C74F:    BNE CODE_20C74C             ; $20:C74F: D0 FB       ;
CODE_20C751:    LDA #$EF                    ; $20:C751: A9 EF       ;
CODE_20C753:    STA $0216                   ; $20:C753: 8D 16 02    ;
CODE_20C756:    LDA #$B0                    ; $20:C756: A9 B0       ;
CODE_20C758:    STA $0218                   ; $20:C758: 8D 18 02    ;
CODE_20C75B:    JSR CODE_20B328             ; $20:C75B: 20 28 B3    ;
CODE_20C75E:    LDA #$51                    ; $20:C75E: A9 51       ;
CODE_20C760:    ASL A                       ; $20:C760: 0A          ;
CODE_20C761:    TAX                         ; $20:C761: AA          ;
CODE_20C762:    LDA.l PNTR_20D301,x                 ; $20:C762: BF 01 D3 20 ;
CODE_20C766:    STA $36                     ; $20:C766: 85 36       ;
CODE_20C768:    LDA.l PNTR_20D301+1,x               ; $20:C768: BF 02 D3 20 ;
CODE_20C76C:    STA $37                     ; $20:C76C: 85 37       ;
CODE_20C76E:    LDA #$20                    ; $20:C76E: A9 20       ;
CODE_20C770:    STA $38                     ; $20:C770: 85 38       ;
CODE_20C772:    JSL CODE_29E8AB             ; $20:C772: 22 AB E8 29 ;
CODE_20C776:    LDA #$22                    ; $20:C776: A9 22       ;
CODE_20C778:    STA $0350                   ; $20:C778: 8D 50 03    ;
CODE_20C77B:    JSL CODE_2A8DB6             ; $20:C77B: 22 B6 8D 2A ;
CODE_20C77F:    LDA #$20                    ; $20:C77F: A9 20       ;
CODE_20C781:    STA $0612                   ; $20:C781: 8D 12 06    ;
CODE_20C784:    JSL CODE_2AB48E             ; $20:C784: 22 8E B4 2A ;
CODE_20C788:    LDA #$C0                    ; $20:C788: A9 C0       ;
CODE_20C78A:    STA $0293                   ; $20:C78A: 8D 93 02    ;
CODE_20C78D:    STZ $0249                   ; $20:C78D: 9C 49 02    ;
CODE_20C790:    STZ $024A                   ; $20:C790: 9C 4A 02    ;
CODE_20C793:    LDA #$01                    ; $20:C793: A9 01       ;
CODE_20C795:    STA $020E                   ; $20:C795: 8D 0E 02    ;
CODE_20C798:    LDA #$11                    ; $20:C798: A9 11       ;
CODE_20C79A:    STA $020F                   ; $20:C79A: 8D 0F 02    ;
CODE_20C79D:    LDA #$00                    ; $20:C79D: A9 00       ;
CODE_20C79F:    STA $16                     ; $20:C79F: 85 16       ;
CODE_20C7A1:    STA $2100                   ; $20:C7A1: 8D 00 21    ;
CODE_20C7A4:    LDA #$09                    ; $20:C7A4: A9 09       ;
CODE_20C7A6:    STA $020C                   ; $20:C7A6: 8D 0C 02    ;
CODE_20C7A9:    STA $2105                   ; $20:C7A9: 8D 05 21    ;
CODE_20C7AC:    LDA #$03                    ; $20:C7AC: A9 03       ;
CODE_20C7AE:    STA $021E                   ; $20:C7AE: 8D 1E 02    ;
CODE_20C7B1:    LDA #$17                    ; $20:C7B1: A9 17       ;
CODE_20C7B3:    STA $0208                   ; $20:C7B3: 8D 08 02    ;
CODE_20C7B6:    LDA #$80                    ; $20:C7B6: A9 80       ;
CODE_20C7B8:    STA $4200                   ; $20:C7B8: 8D 00 42    ;
CODE_20C7BB:    JSR CODE_20A4B6             ; $20:C7BB: 20 B6 A4    ;
CODE_20C7BE:    JSR CODE_20C7CA             ; $20:C7BE: 20 CA C7    ;
CODE_20C7C1:    LDA $A3                     ; $20:C7C1: A5 A3       ;
CODE_20C7C3:    CMP #$07                    ; $20:C7C3: C9 07       ;
CODE_20C7C5:    BNE CODE_20C7BB             ; $20:C7C5: D0 F4       ;
CODE_20C7C7:    JMP CODE_20CB96             ; $20:C7C7: 4C 96 CB    ;

CODE_20C7CA:    JSL CODE_22E0A9             ; $20:C7CA: 22 A9 E0 22 ;
CODE_20C7CE:    LDA #$10                    ; $20:C7CE: A9 10       ;
CODE_20C7D0:    STA $91                     ; $20:C7D0: 85 91       ;
CODE_20C7D2:    LDA #$40                    ; $20:C7D2: A9 40       ;
CODE_20C7D4:    STA $92                     ; $20:C7D4: 85 92       ;
CODE_20C7D6:    LDX #$02                    ; $20:C7D6: A2 02       ;
CODE_20C7D8:    LDA $A0,x                   ; $20:C7D8: B5 A0       ;
CODE_20C7DA:    BEQ CODE_20C7DE             ; $20:C7DA: F0 02       ;
CODE_20C7DC:    DEC $A0,x                   ; $20:C7DC: D6 A0       ;
CODE_20C7DE:    DEX                         ; $20:C7DE: CA          ;
CODE_20C7DF:    BPL CODE_20C7D8             ; $20:C7DF: 10 F7       ;
CODE_20C7E1:    JSR CODE_20C809             ; $20:C7E1: 20 09 C8    ;
CODE_20C7E4:    LDX #$00                    ; $20:C7E4: A2 00       ;
CODE_20C7E6:    STX $9F                     ; $20:C7E6: 86 9F       ;
CODE_20C7E8:    JSR CODE_20BE8D             ; $20:C7E8: 20 8D BE    ;
CODE_20C7EB:    LDA $0726                   ; $20:C7EB: AD 26 07    ;
CODE_20C7EE:    BEQ CODE_20C802             ; $20:C7EE: F0 12       ;
CODE_20C7F0:    LDY #$24                    ; $20:C7F0: A0 24       ;
CODE_20C7F2:    LDA $0803,y                 ; $20:C7F2: B9 03 08    ;
CODE_20C7F5:    ORA #$02                    ; $20:C7F5: 09 02       ;
CODE_20C7F7:    STA $0803,y                 ; $20:C7F7: 99 03 08    ;
CODE_20C7FA:    DEY                         ; $20:C7FA: 88          ;
CODE_20C7FB:    DEY                         ; $20:C7FB: 88          ;
CODE_20C7FC:    DEY                         ; $20:C7FC: 88          ;
CODE_20C7FD:    DEY                         ; $20:C7FD: 88          ;
CODE_20C7FE:    CPY #$10                    ; $20:C7FE: C0 10       ;
CODE_20C800:    BPL CODE_20C7F2             ; $20:C800: 10 F0       ;
CODE_20C802:    INX                         ; $20:C802: E8          ;
CODE_20C803:    STX $9F                     ; $20:C803: 86 9F       ;
CODE_20C805:    JSR CODE_20BE99             ; $20:C805: 20 99 BE    ;
CODE_20C808:    RTS                         ; $20:C808: 60          ;

CODE_20C809:    LDA $A3                     ; $20:C809: A5 A3       ;
CODE_20C80B:    JSL CODE_20FB1F         ; $20:C80B: 22 1F FB 20 ; ExecutePtrShort

PNTR_20C80F:          dw CODE_20C81F
               dw CODE_20C856
               dw CODE_20C863
               dw CODE_20C895
               dw CODE_20C8B5
               dw CODE_20C986
               dw CODE_20C9C6
               dw CODE_20C9CE    

CODE_20C81F:    LDA #$EC                ; $20:C81F: A9 EC       ;
CODE_20C821:    STA $53                 ; $20:C821: 85 53       ;
CODE_20C823:    LDA #$FF                    ; $20:C823: A9 FF       ;
CODE_20C825:    STA $43                     ; $20:C825: 85 43       ;
CODE_20C827:    LDA #$C8                    ; $20:C827: A9 C8       ;
CODE_20C829:    STA $54                     ; $20:C829: 85 54       ;
CODE_20C82B:    LDA #$A0                    ; $20:C82B: A9 A0       ;
CODE_20C82D:    STA $5B                     ; $20:C82D: 85 5B       ;
CODE_20C82F:    STA $5C                     ; $20:C82F: 85 5C       ;
CODE_20C831:    LDA #$18                    ; $20:C831: A9 18       ;
CODE_20C833:    STA $8D                     ; $20:C833: 85 8D       ;
CODE_20C835:    LDA #$19                    ; $20:C835: A9 19       ;
CODE_20C837:    STA $8E                     ; $20:C837: 85 8E       ;
CODE_20C839:    LDA #$40                    ; $20:C839: A9 40       ;
CODE_20C83B:    STA $85                     ; $20:C83B: 85 85       ;
CODE_20C83D:    STA $86                     ; $20:C83D: 85 86       ;
CODE_20C83F:    LDA #$01                    ; $20:C83F: A9 01       ;
CODE_20C841:    STA $8F                     ; $20:C841: 85 8F       ;
CODE_20C843:    LDA #$0F                    ; $20:C843: A9 0F       ;
CODE_20C845:    STA $A0                     ; $20:C845: 85 A0       ;
CODE_20C847:    INC $A3                     ; $20:C847: E6 A3       ;
CODE_20C849:    LDA #$00                    ; $20:C849: A9 00       ;
CODE_20C84B:    STA $A6                     ; $20:C84B: 85 A6       ;
CODE_20C84D:    LDA #$50                    ; $20:C84D: A9 50       ;
CODE_20C84F:    STA $A5                     ; $20:C84F: 85 A5       ;
CODE_20C851:    LDA #$C7                    ; $20:C851: A9 C7       ;
CODE_20C853:    STA $A4                     ; $20:C853: 85 A4       ;
CODE_20C855:    RTS                         ; $20:C855: 60          ;

CODE_20C856:    LDA $A0                     ; $20:C856: A5 A0       ;
CODE_20C858:    EOR #$0F                    ; $20:C858: 49 0F       ;
CODE_20C85A:    STA $16                     ; $20:C85A: 85 16       ;
CODE_20C85C:    CMP #$0F                    ; $20:C85C: C9 0F       ;
CODE_20C85E:    BNE CODE_20C862             ; $20:C85E: D0 02       ;
CODE_20C860:    INC $A3                     ; $20:C860: E6 A3       ;
CODE_20C862:    RTS                         ; $20:C862: 60          ;

CODE_20C863:    LDA $53                     ; $20:C863: A5 53       ;
CODE_20C865:    CLC                         ; $20:C865: 18          ;
CODE_20C866:    ADC #$01                    ; $20:C866: 69 01       ;
CODE_20C868:    STA $53                     ; $20:C868: 85 53       ;
CODE_20C86A:    LDA $43                     ; $20:C86A: A5 43       ;
CODE_20C86C:    ADC #$00                    ; $20:C86C: 69 00       ;
CODE_20C86E:    STA $43                     ; $20:C86E: 85 43       ;
CODE_20C870:    PHX                         ; $20:C870: DA          ;
CODE_20C871:    LDA $15                     ; $20:C871: A5 15       ;
CODE_20C873:    AND #$0C                    ; $20:C873: 29 0C       ;
CODE_20C875:    LSR A                       ; $20:C875: 4A          ;
CODE_20C876:    LSR A                       ; $20:C876: 4A          ;
CODE_20C877:    TAX                         ; $20:C877: AA          ;
CODE_20C878:    LDA.l DATA_20BB25,x                 ; $20:C878: BF 25 BB 20 ;
CODE_20C87C:    STA $8D                     ; $20:C87C: 85 8D       ;
CODE_20C87E:    LDX #$00                    ; $20:C87E: A2 00       ;
CODE_20C880:    JSR CODE_20C027             ; $20:C880: 20 27 C0    ;
CODE_20C883:    PLX                         ; $20:C883: FA          ;
CODE_20C884:    LDA $53                     ; $20:C884: A5 53       ;
CODE_20C886:    CMP #$20                    ; $20:C886: C9 20       ;
CODE_20C888:    BNE CODE_20C894             ; $20:C888: D0 0A       ;
CODE_20C88A:    LDA #$02                    ; $20:C88A: A9 02       ;
CODE_20C88C:    STA $8D                     ; $20:C88C: 85 8D       ;
CODE_20C88E:    INC $A3                     ; $20:C88E: E6 A3       ;
CODE_20C890:    LDA #$30                    ; $20:C890: A9 30       ;
CODE_20C892:    STA $A0                     ; $20:C892: 85 A0       ;
CODE_20C894:    RTS                         ; $20:C894: 60          ;

CODE_20C895:    LDA $A0                     ; $20:C895: A5 A0       ;
CODE_20C897:    CMP #$01                    ; $20:C897: C9 01       ;
CODE_20C899:    BNE CODE_20C8A8             ; $20:C899: D0 0D       ;
CODE_20C89B:    LDA #$02                    ; $20:C89B: A9 02       ;
CODE_20C89D:    STA $8D                     ; $20:C89D: 85 8D       ;
CODE_20C89F:    LDA #$80                    ; $20:C89F: A9 80       ;
CODE_20C8A1:    STA $A1                     ; $20:C8A1: 85 A1       ;
CODE_20C8A3:    LDA #$01                    ; $20:C8A3: A9 01       ;
CODE_20C8A5:    STA $1202                   ; $20:C8A5: 8D 02 12    ;
CODE_20C8A8:    LDA $A1                     ; $20:C8A8: A5 A1       ;
CODE_20C8AA:    CMP #$01                    ; $20:C8AA: C9 01       ;
CODE_20C8AC:    BNE CODE_20C8B4             ; $20:C8AC: D0 06       ;
CODE_20C8AE:    LDA #$13                    ; $20:C8AE: A9 13       ;
CODE_20C8B0:    STA $A0                     ; $20:C8B0: 85 A0       ;
CODE_20C8B2:    INC $A3                     ; $20:C8B2: E6 A3       ;
CODE_20C8B4:    RTS                         ; $20:C8B4: 60          ;

CODE_20C8B5:    LDA $A0                     ; $20:C8B5: A5 A0       ;
CODE_20C8B7:    BEQ CODE_20C916             ; $20:C8B7: F0 5D       ;
CODE_20C8B9:    LDY #$30                    ; $20:C8B9: A0 30       ;
CODE_20C8BB:    STY $A1                     ; $20:C8BB: 84 A1       ;
CODE_20C8BD:    AND #$FE                    ; $20:C8BD: 29 FE       ;
CODE_20C8BF:    TAX                         ; $20:C8BF: AA          ;
CODE_20C8C0:    LDA #$2A                    ; $20:C8C0: A9 2A       ;
CODE_20C8C2:    STA $DA                     ; $20:C8C2: 85 DA       ;
CODE_20C8C4:    REP #$20                    ; $20:C8C4: C2 20       ;
CODE_20C8C6:    LDA.l PNTR_20C972,x                 ; $20:C8C6: BF 72 C9 20 ;
CODE_20C8CA:    BEQ CODE_20C914             ; $20:C8CA: F0 48       ;
CODE_20C8CC:    STA $D8                     ; $20:C8CC: 85 D8       ;
CODE_20C8CE:    LDY #$00                    ; $20:C8CE: A0 00       ;
CODE_20C8D0:    LDA [$D8],y                 ; $20:C8D0: B7 D8       ;
CODE_20C8D2:    STA $1320,y                 ; $20:C8D2: 99 20 13    ;
CODE_20C8D5:    INY                         ; $20:C8D5: C8          ;
CODE_20C8D6:    INY                         ; $20:C8D6: C8          ;
CODE_20C8D7:    CPY #$20                    ; $20:C8D7: C0 20       ;
CODE_20C8D9:    BNE CODE_20C8D0             ; $20:C8D9: D0 F5       ;
CODE_20C8DB:    LDY #$01                    ; $20:C8DB: A0 01       ;
CODE_20C8DD:    STY $1500                   ; $20:C8DD: 8C 00 15    ;
CODE_20C8E0:    LDY $A0                     ; $20:C8E0: A4 A0       ;
CODE_20C8E2:    CPY #$09                    ; $20:C8E2: C0 09       ;
CODE_20C8E4:    BPL CODE_20C914             ; $20:C8E4: 10 2E       ;
CODE_20C8E6:    PHB                         ; $20:C8E6: 8B          ;
CODE_20C8E7:    LDY #$7F                    ; $20:C8E7: A0 7F       ;
CODE_20C8E9:    PHY                         ; $20:C8E9: 5A          ;
CODE_20C8EA:    PLB                         ; $20:C8EA: AB          ;
CODE_20C8EB:    REP #$10                    ; $20:C8EB: C2 10       ;
CODE_20C8ED:    LDY #$0000                  ; $20:C8ED: A0 00 00    ;
CODE_20C8F0:    LDA $000249                 ; $20:C8F0: AF 49 02 00 ;
CODE_20C8F4:    TAX                         ; $20:C8F4: AA          ;
CODE_20C8F5:    LDA.l DATA_2AEEB1,x                 ; $20:C8F5: BF B1 EE 2A ;
CODE_20C8F9:    STA $9000,x                 ; $20:C8F9: 9D 00 90    ;
CODE_20C8FC:    LDA.l DATA_2AF031,x                 ; $20:C8FC: BF 31 F0 2A ;
CODE_20C900:    STA $9200,x                 ; $20:C900: 9D 00 92    ;
CODE_20C903:    INX                         ; $20:C903: E8          ;
CODE_20C904:    INX                         ; $20:C904: E8          ;
CODE_20C905:    INY                         ; $20:C905: C8          ;
CODE_20C906:    INY                         ; $20:C906: C8          ;
CODE_20C907:    CPY #$0030                  ; $20:C907: C0 30 00    ;
CODE_20C90A:    BNE CODE_20C8F5             ; $20:C90A: D0 E9       ;
CODE_20C90C:    TXA                         ; $20:C90C: 8A          ;
CODE_20C90D:    STA $000249                 ; $20:C90D: 8F 49 02 00 ;
CODE_20C911:    SEP #$10                    ; $20:C911: E2 10       ;
CODE_20C913:    PLB                         ; $20:C913: AB          ;
CODE_20C914:    SEP #$20                    ; $20:C914: E2 20       ;
CODE_20C916:    LDA $A1                     ; $20:C916: A5 A1       ;
CODE_20C918:    BNE CODE_20C971             ; $20:C918: D0 57       ;
CODE_20C91A:    INC $A3                     ; $20:C91A: E6 A3       ;
CODE_20C91C:    LDA #$80                    ; $20:C91C: A9 80       ;
CODE_20C91E:    STA $A0                     ; $20:C91E: 85 A0       ;
CODE_20C920:    LDA #$1A                    ; $20:C920: A9 1A       ;
CODE_20C922:    STA $8E                     ; $20:C922: 85 8E       ;
CODE_20C924:    BRA CODE_20C971             ; $20:C924: 80 4B       ;

CODE_20C926:    PHX                         ; $20:C926: DA          ;
CODE_20C927:    LDX #$00                    ; $20:C927: A2 00       ;
CODE_20C929:    LDA $0726                   ; $20:C929: AD 26 07    ;
CODE_20C92C:    BEQ CODE_20C930             ; $20:C92C: F0 02       ;
CODE_20C92E:    LDX #$23                    ; $20:C92E: A2 23       ;
CODE_20C930:    LDA $0715                   ; $20:C930: AD 15 07    ;
CODE_20C933:    STA $1D9F,x                 ; $20:C933: 9D 9F 1D    ;
CODE_20C936:    LDA $0716                   ; $20:C936: AD 16 07    ;
CODE_20C939:    STA $1DA0,x                 ; $20:C939: 9D A0 1D    ;
CODE_20C93C:    LDA $0717                   ; $20:C93C: AD 17 07    ;
CODE_20C93F:    STA $1DA1,x                 ; $20:C93F: 9D A1 1D    ;
CODE_20C942:    REP #$20                    ; $20:C942: C2 20       ;
CODE_20C944:    LDX #$08                    ; $20:C944: A2 08       ;
CODE_20C946:    LDA.w DATA_21E43C,x                 ; $20:C946: BD 3C E4    ;
CODE_20C949:    STA $1EED,x                 ; $20:C949: 9D ED 1E    ;
CODE_20C94C:    LDA.w DATA_21E484,x                 ; $20:C94C: BD 84 E4    ;
CODE_20C94F:    STA $1F09,x                 ; $20:C94F: 9D 09 1F    ;
CODE_20C952:    LDA.w DATA_21E4CC,x                 ; $20:C952: BD CC E4    ;
CODE_20C955:    STA $1EFB,x                 ; $20:C955: 9D FB 1E    ;
CODE_20C958:    LDA.w DATA_21E514,x                 ; $20:C958: BD 14 E5    ;
CODE_20C95B:    STA $1F17,x                 ; $20:C95B: 9D 17 1F    ;
CODE_20C95E:    DEX                         ; $20:C95E: CA          ;
CODE_20C95F:    DEX                         ; $20:C95F: CA          ;
CODE_20C960:    BPL CODE_20C946             ; $20:C960: 10 E4       ;
CODE_20C962:    SEP #$20                    ; $20:C962: E2 20       ;
CODE_20C964:    LDX #$7F                    ; $20:C964: A2 7F       ;
CODE_20C966:    STZ $1D00,x                 ; $20:C966: 9E 00 1D    ;
CODE_20C969:    DEX                         ; $20:C969: CA          ;
CODE_20C96A:    BPL CODE_20C966             ; $20:C96A: 10 FA       ;
CODE_20C96C:    JSL CODE_00922D             ; $20:C96C: 22 2D 92 00 ;
CODE_20C970:    PLX                         ; $20:C970: FA          ;
CODE_20C971:    RTS                         ; $20:C971: 60          ;

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

CODE_20C986:    LDA $A0                     ; $20:C986: A5 A0       ;
CODE_20C988:    BEQ CODE_20C993             ; $20:C988: F0 09       ;
CODE_20C98A:    CMP #$60                    ; $20:C98A: C9 60       ;
CODE_20C98C:    BCS CODE_20C992                     ; $20:C98C: B0 04       ;
CODE_20C98E:    LDA #$00                    ; $20:C98E: A9 00       ;
CODE_20C990:    STA $86                     ; $20:C990: 85 86       ;
CODE_20C992:    RTS                         ; $20:C992: 60          ;

CODE_20C993:    LDA $53                     ; $20:C993: A5 53       ;
CODE_20C995:    CMP #$68                    ; $20:C995: C9 68       ;
CODE_20C997:    BCC CODE_20C9A8             ; $20:C997: 90 0F       ;
CODE_20C999:    LDA #$02                    ; $20:C999: A9 02       ;
CODE_20C99B:    STA $8D                     ; $20:C99B: 85 8D       ;
CODE_20C99D:    LDA #$1A                    ; $20:C99D: A9 1A       ;
CODE_20C99F:    STA $8E                     ; $20:C99F: 85 8E       ;
CODE_20C9A1:    INC $A3                     ; $20:C9A1: E6 A3       ;
CODE_20C9A3:    LDA #$B0                    ; $20:C9A3: A9 B0       ;
CODE_20C9A5:    STA $A0                     ; $20:C9A5: 85 A0       ;
CODE_20C9A7:    RTS                         ; $20:C9A7: 60          ;

CODE_20C9A8:    LDA #$50                    ; $20:C9A8: A9 50       ;
CODE_20C9AA:    STA $A1                     ; $20:C9AA: 85 A1       ;
CODE_20C9AC:    INC $53                     ; $20:C9AC: E6 53       ;
CODE_20C9AE:    DEC $54                     ; $20:C9AE: C6 54       ;
CODE_20C9B0:    PHX                         ; $20:C9B0: DA          ;
CODE_20C9B1:    LDA $15                     ; $20:C9B1: A5 15       ;
CODE_20C9B3:    AND #$0C                    ; $20:C9B3: 29 0C       ;
CODE_20C9B5:    LSR A                       ; $20:C9B5: 4A          ;
CODE_20C9B6:    LSR A                       ; $20:C9B6: 4A          ;
CODE_20C9B7:    TAX                         ; $20:C9B7: AA          ;
CODE_20C9B8:    LDA.l DATA_20BB25,x                 ; $20:C9B8: BF 25 BB 20 ;
CODE_20C9BC:    STA $8D                     ; $20:C9BC: 85 8D       ;
CODE_20C9BE:    LDA.l DATA_20BB2D,x                 ; $20:C9BE: BF 2D BB 20 ;
CODE_20C9C2:    STA $8E                     ; $20:C9C2: 85 8E       ;
CODE_20C9C4:    PLX                         ; $20:C9C4: FA          ;
CODE_20C9C5:    RTS                         ; $20:C9C5: 60          ;

CODE_20C9C6:    LDA $A0                     ; $20:C9C6: A5 A0       ;
CODE_20C9C8:    BNE CODE_20C9CD             ; $20:C9C8: D0 03       ;
CODE_20C9CA:    JMP CODE_20C9E3             ; $20:C9CA: 4C E3 C9    ;

CODE_20C9CD:    RTS                         ; $20:C9CD: 60          ;

CODE_20C9CE:    LDA $A0                     ; $20:C9CE: A5 A0       ;
CODE_20C9D0:    BNE CODE_20C9DB             ; $20:C9D0: D0 09       ;
CODE_20C9D2:    STA $16                     ; $20:C9D2: 85 16       ;
CODE_20C9D4:    LDA $A1                     ; $20:C9D4: A5 A1       ;
CODE_20C9D6:    BNE CODE_20C9DA             ; $20:C9D6: D0 02       ;
CODE_20C9D8:    INC $A3                     ; $20:C9D8: E6 A3       ;
CODE_20C9DA:    RTS                         ; $20:C9DA: 60          ;

CODE_20C9DB:    STA $16                     ; $20:C9DB: 85 16       ;
CODE_20C9DD:    LDA #$10                    ; $20:C9DD: A9 10       ;
CODE_20C9DF:    STA $00A1                   ; $20:C9DF: 8D A1 00    ;
CODE_20C9E2:    RTS                         ; $20:C9E2: 60          ;

CODE_20C9E3:    LDA $A7                     ; $20:C9E3: A5 A7       ;
CODE_20C9E5:    JSL CODE_20FB1F         ; $20:C9E5: 22 1F FB 20 ; ExecutePtrShort

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

CODE_20CA69:    PHB                     ; $20:CA69: 8B          ;
CODE_20CA6A:    PHK                     ; $20:CA6A: 4B          ;
CODE_20CA6B:    PLB                         ; $20:CA6B: AB          ;
CODE_20CA6C:    LDX $1600                   ; $20:CA6C: AE 00 16    ;
CODE_20CA6F:    LDA $A5                     ; $20:CA6F: A5 A5       ;
CODE_20CA71:    STA $1602,x                 ; $20:CA71: 9D 02 16    ;
CODE_20CA74:    LDA $A4                     ; $20:CA74: A5 A4       ;
CODE_20CA76:    STA $1603,x                 ; $20:CA76: 9D 03 16    ;
CODE_20CA79:    CLC                         ; $20:CA79: 18          ;
CODE_20CA7A:    ADC #$20                    ; $20:CA7A: 69 20       ;
CODE_20CA7C:    STA $A4                     ; $20:CA7C: 85 A4       ;
CODE_20CA7E:    BCC CODE_20CA82             ; $20:CA7E: 90 02       ;
CODE_20CA80:    INC $A5                     ; $20:CA80: E6 A5       ;
CODE_20CA82:    LDA #$00                    ; $20:CA82: A9 00       ;
CODE_20CA84:    STA $1604,x                 ; $20:CA84: 9D 04 16    ;
CODE_20CA87:    LDA #$25                    ; $20:CA87: A9 25       ;
CODE_20CA89:    STA $1605,x                 ; $20:CA89: 9D 05 16    ;
CODE_20CA8C:    STA $00                     ; $20:CA8C: 85 00       ;
CODE_20CA8E:    LDY $A6                     ; $20:CA8E: A4 A6       ;
CODE_20CA90:    LDA DATA_20CA61,y                   ; $20:CA90: B9 61 CA    ;
CODE_20CA93:    TAY                         ; $20:CA93: A8          ;
CODE_20CA94:    LDA DATA_20C9EF,y                   ; $20:CA94: B9 EF C9    ;
CODE_20CA97:    STA $1606,x                 ; $20:CA97: 9D 06 16    ;
CODE_20CA9A:    INY                         ; $20:CA9A: C8          ;
CODE_20CA9B:    INX                         ; $20:CA9B: E8          ;
CODE_20CA9C:    DEC $00                     ; $20:CA9C: C6 00       ;
CODE_20CA9E:    BPL CODE_20CA94             ; $20:CA9E: 10 F4       ;
CODE_20CAA0:    LDA #$FF                    ; $20:CAA0: A9 FF       ;
CODE_20CAA2:    STA $1606,x                 ; $20:CAA2: 9D 06 16    ;
CODE_20CAA5:    INX                         ; $20:CAA5: E8          ;
CODE_20CAA6:    INX                         ; $20:CAA6: E8          ;
CODE_20CAA7:    INX                         ; $20:CAA7: E8          ;
CODE_20CAA8:    INX                         ; $20:CAA8: E8          ;
CODE_20CAA9:    STX $1600                   ; $20:CAA9: 8E 00 16    ;
CODE_20CAAC:    INC $A6                     ; $20:CAAC: E6 A6       ;
CODE_20CAAE:    LDA $A6                     ; $20:CAAE: A5 A6       ;
CODE_20CAB0:    CMP #$08                    ; $20:CAB0: C9 08       ;
CODE_20CAB2:    BCC CODE_20CAC9             ; $20:CAB2: 90 15       ;
CODE_20CAB4:    LDY #$00                    ; $20:CAB4: A0 00       ;
CODE_20CAB6:    LDA DATA_20CB25,y                   ; $20:CAB6: B9 25 CB    ;
CODE_20CAB9:    STA $A6                     ; $20:CAB9: 85 A6       ;
CODE_20CABB:    LDA #$50                    ; $20:CABB: A9 50       ;
CODE_20CABD:    STA $A5                     ; $20:CABD: 85 A5       ;
CODE_20CABF:    LDA #$E9                    ; $20:CABF: A9 E9       ;
CODE_20CAC1:    STA $A4                     ; $20:CAC1: 85 A4       ;
CODE_20CAC3:    LDA #$10                    ; $20:CAC3: A9 10       ;
CODE_20CAC5:    STA $A2                     ; $20:CAC5: 85 A2       ;
CODE_20CAC7:    INC $A7                     ; $20:CAC7: E6 A7       ;
CODE_20CAC9:    PLB                         ; $20:CAC9: AB          ;
CODE_20CACA:    RTS                         ; $20:CACA: 60          ;

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

CODE_20CB26:    PHB                     ; $20:CB26: 8B          ;
CODE_20CB27:    PHK                         ; $20:CB27: 4B          ;
CODE_20CB28:    PLB                         ; $20:CB28: AB          ;
CODE_20CB29:    LDA $A2                     ; $20:CB29: A5 A2       ;
CODE_20CB2B:    BNE CODE_20CB89             ; $20:CB2B: D0 5C       ;
CODE_20CB2D:    LDX $1600                   ; $20:CB2D: AE 00 16    ;
CODE_20CB30:    LDY $A6                     ; $20:CB30: A4 A6       ;
CODE_20CB32:    LDA $A5                     ; $20:CB32: A5 A5       ;
CODE_20CB34:    STA $1602,x                 ; $20:CB34: 9D 02 16    ;
CODE_20CB37:    LDA #$00                    ; $20:CB37: A9 00       ;
CODE_20CB39:    STA $1604,x                 ; $20:CB39: 9D 04 16    ;
CODE_20CB3C:    LDA #$01                    ; $20:CB3C: A9 01       ;
CODE_20CB3E:    STA $1605,x                 ; $20:CB3E: 9D 05 16    ;
CODE_20CB41:    LDA DATA_20CACB,y                   ; $20:CB41: B9 CB CA    ;
CODE_20CB44:    STA $1606,x                 ; $20:CB44: 9D 06 16    ;
CODE_20CB47:    LDA #$21                    ; $20:CB47: A9 21       ;
CODE_20CB49:    STA $1607,x                 ; $20:CB49: 9D 07 16    ;
CODE_20CB4C:    LDA #$FF                    ; $20:CB4C: A9 FF       ;
CODE_20CB4E:    STA $1608,x                 ; $20:CB4E: 9D 08 16    ;
CODE_20CB51:    TXA                         ; $20:CB51: 8A          ;
CODE_20CB52:    CLC                         ; $20:CB52: 18          ;
CODE_20CB53:    ADC #$06                    ; $20:CB53: 69 06       ;
CODE_20CB55:    STA $1600                   ; $20:CB55: 8D 00 16    ;
CODE_20CB58:    LDA $A4                     ; $20:CB58: A5 A4       ;
CODE_20CB5A:    STA $1603,x                 ; $20:CB5A: 9D 03 16    ;
CODE_20CB5D:    INC $A6                     ; $20:CB5D: E6 A6       ;
CODE_20CB5F:    INC $A4                     ; $20:CB5F: E6 A4       ;
CODE_20CB61:    AND #$1F                    ; $20:CB61: 29 1F       ;
CODE_20CB63:    CMP #$17                    ; $20:CB63: C9 17       ;
CODE_20CB65:    BNE CODE_20CB7C             ; $20:CB65: D0 15       ;
CODE_20CB67:    LDA $A4                     ; $20:CB67: A5 A4       ;
CODE_20CB69:    CLC                         ; $20:CB69: 18          ;
CODE_20CB6A:    ADC #$11                    ; $20:CB6A: 69 11       ;
CODE_20CB6C:    STA $A4                     ; $20:CB6C: 85 A4       ;
CODE_20CB6E:    BCC CODE_20CB72             ; $20:CB6E: 90 02       ;
CODE_20CB70:    INC $A5                     ; $20:CB70: E6 A5       ;
CODE_20CB72:    CMP #$A9                    ; $20:CB72: C9 A9       ;
CODE_20CB74:    BNE CODE_20CB7C             ; $20:CB74: D0 06       ;
CODE_20CB76:    INC $A7                     ; $20:CB76: E6 A7       ;
CODE_20CB78:    LDA #$4A                    ; $20:CB78: A9 4A       ;
CODE_20CB7A:    STA $A1                     ; $20:CB7A: 85 A1       ;
CODE_20CB7C:    LDX #$10                    ; $20:CB7C: A2 10       ;
CODE_20CB7E:    LDA DATA_20CACB,y                   ; $20:CB7E: B9 CB CA    ;
CODE_20CB81:    CMP #$FE                    ; $20:CB81: C9 FE       ;
CODE_20CB83:    BNE CODE_20CB87             ; $20:CB83: D0 02       ;
CODE_20CB85:    LDX #$01                    ; $20:CB85: A2 01       ;
CODE_20CB87:    STX $A0                     ; $20:CB87: 86 A0       ;
CODE_20CB89:    PLB                         ; $20:CB89: AB          ;
CODE_20CB8A:    RTS                         ; $20:CB8A: 60          ;

CODE_20CB8B:    LDA $A1                     ; $20:CB8B: A5 A1       ;
CODE_20CB8D:    BNE CODE_20CB95             ; $20:CB8D: D0 06       ;
CODE_20CB8F:    LDA #$0F                    ; $20:CB8F: A9 0F       ;
CODE_20CB91:    STA $A0                     ; $20:CB91: 85 A0       ;
CODE_20CB93:    INC $A3                     ; $20:CB93: E6 A3       ;
CODE_20CB95:    RTS                         ; $20:CB95: 60          ;

CODE_20CB96:    LDA #$0F                    ; $20:CB96: A9 0F       ;
CODE_20CB98:    STA $16                     ; $20:CB98: 85 16       ;
CODE_20CB9A:    JSR CODE_20A4B6             ; $20:CB9A: 20 B6 A4    ;
CODE_20CB9D:    DEC $16                     ; $20:CB9D: C6 16       ;
CODE_20CB9F:    BNE CODE_20CB9A             ; $20:CB9F: D0 F9       ;
CODE_20CBA1:    STZ $4200                   ; $20:CBA1: 9C 00 42    ;
CODE_20CBA4:    STZ $16                     ; $20:CBA4: 64 16       ;
CODE_20CBA6:    STZ $0293                   ; $20:CBA6: 9C 93 02    ;
CODE_20CBA9:    STZ $420C                   ; $20:CBA9: 9C 0C 42    ;
CODE_20CBAC:    LDA #$80                    ; $20:CBAC: A9 80       ;
CODE_20CBAE:    STA $2100                   ; $20:CBAE: 8D 00 21    ;
CODE_20CBB1:    LDA #$02                    ; $20:CBB1: A9 02       ;
CODE_20CBB3:    STA $2107                   ; $20:CBB3: 8D 07 21    ;
CODE_20CBB6:    LDA #$0A                    ; $20:CBB6: A9 0A       ;
CODE_20CBB8:    STA $2108                   ; $20:CBB8: 8D 08 21    ;
CODE_20CBBB:    LDA #$13                    ; $20:CBBB: A9 13       ;
CODE_20CBBD:    STA $2109                   ; $20:CBBD: 8D 09 21    ;
CODE_20CBC0:    JSL CODE_22E0A9             ; $20:CBC0: 22 A9 E0 22 ;
CODE_20CBC4:    LDA #$5C                    ; $20:CBC4: A9 5C       ;
CODE_20CBC6:    STA $00                     ; $20:CBC6: 85 00       ;
CODE_20CBC8:    STZ $01                     ; $20:CBC8: 64 01       ;
CODE_20CBCA:    JSR CODE_20FA0A             ; $20:CBCA: 20 0A FA    ;
CODE_20CBCD:    REP #$20                    ; $20:CBCD: C2 20       ;
CODE_20CBCF:    LDX #$80                    ; $20:CBCF: A2 80       ;
CODE_20CBD1:    STX $2115                   ; $20:CBD1: 8E 15 21    ;
CODE_20CBD4:    LDA #$2000                  ; $20:CBD4: A9 00 20    ;
CODE_20CBD7:    STA $2116                   ; $20:CBD7: 8D 16 21    ;
CODE_20CBDA:    LDA #$1801                  ; $20:CBDA: A9 01 18    ;
CODE_20CBDD:    STA $4300                   ; $20:CBDD: 8D 00 43    ;
CODE_20CBE0:    STA $4310                   ; $20:CBE0: 8D 10 43    ;
CODE_20CBE3:    STA $4320                   ; $20:CBE3: 8D 20 43    ;
CODE_20CBE6:    STA $4330                   ; $20:CBE6: 8D 30 43    ;
CODE_20CBE9:    LDA.w #DATA_37E000                  ; $20:CBE9: A9 00 E0    ;
CODE_20CBEC:    STA $4302                   ; $20:CBEC: 8D 02 43    ;
CODE_20CBEF:    LDA.w #DATA_37B000                  ; $20:CBEF: A9 00 B0    ;
CODE_20CBF2:    STA $4312                   ; $20:CBF2: 8D 12 43    ;
CODE_20CBF5:    LDA.w #DATA_0CD000                  ; $20:CBF5: A9 00 D0    ;
CODE_20CBF8:    STA $4322                   ; $20:CBF8: 8D 22 43    ;
CODE_20CBFB:    LDA.w #DATA_3AB000                  ; $20:CBFB: A9 00 B0    ;
CODE_20CBFE:    STA $4332               ; $20:CBFE: 8D 32 43    ;
CODE_20CC01:    LDX.b #DATA_37B000>>16                      ; $20:CC01: A2 37       ;
CODE_20CC03:    STX $4304                   ; $20:CC03: 8E 04 43    ;
CODE_20CC06:    STX $4314                   ; $20:CC06: 8E 14 43    ;
CODE_20CC09:    LDX.b #DATA_0CD000>>16                      ; $20:CC09: A2 0C       ;
CODE_20CC0B:    STX $4324                   ; $20:CC0B: 8E 24 43    ;
CODE_20CC0E:    LDX.b #DATA_3AB000>>16                      ; $20:CC0E: A2 3A       ;
CODE_20CC10:    STX $4334                   ; $20:CC10: 8E 34 43    ;
CODE_20CC13:    LDA #$1000                  ; $20:CC13: A9 00 10    ;
CODE_20CC16:    STA $4305                   ; $20:CC16: 8D 05 43    ;
CODE_20CC19:    STA $4315                   ; $20:CC19: 8D 15 43    ;
CODE_20CC1C:    STA $4335                   ; $20:CC1C: 8D 35 43    ;
CODE_20CC1F:    LDA #$2800                  ; $20:CC1F: A9 00 28    ;
CODE_20CC22:    STA $4325                   ; $20:CC22: 8D 25 43    ;
CODE_20CC25:    LDX #$01                    ; $20:CC25: A2 01       ;
CODE_20CC27:    STX $420B                   ; $20:CC27: 8E 0B 42    ;
CODE_20CC2A:    INX                         ; $20:CC2A: E8          ;
CODE_20CC2B:    STX $420B                   ; $20:CC2B: 8E 0B 42    ;
CODE_20CC2E:    LDA #$6000                  ; $20:CC2E: A9 00 60    ;
CODE_20CC31:    STA $2116                   ; $20:CC31: 8D 16 21    ;
CODE_20CC34:    LDX #$04                    ; $20:CC34: A2 04       ;
CODE_20CC36:    STX $420B                   ; $20:CC36: 8E 0B 42    ;
CODE_20CC39:    LDA #$3000                  ; $20:CC39: A9 00 30    ;
CODE_20CC3C:    STA $2116                   ; $20:CC3C: 8D 16 21    ;
CODE_20CC3F:    LDX #$08                    ; $20:CC3F: A2 08       ;
CODE_20CC41:    STX $420B                   ; $20:CC41: 8E 0B 42    ;
CODE_20CC44:    LDX $0726                   ; $20:CC44: AE 26 07    ;
CODE_20CC47:    BEQ CODE_20CC7F             ; $20:CC47: F0 36       ;
CODE_20CC49:    LDA.w #DATA_3DE000                  ; $20:CC49: A9 00 E0    ;
CODE_20CC4C:    STA $4302                   ; $20:CC4C: 8D 02 43    ;
CODE_20CC4F:    LDA.w #DATA_3DF000                  ; $20:CC4F: A9 00 F0    ;
CODE_20CC52:    STA $4312                   ; $20:CC52: 8D 12 43    ;
CODE_20CC55:    LDX.b #DATA_3DE000>>16                      ; $20:CC55: A2 3D       ;
CODE_20CC57:    STX $4304                   ; $20:CC57: 8E 04 43    ;
CODE_20CC5A:    STX $4314                   ; $20:CC5A: 8E 14 43    ;
CODE_20CC5D:    LDA #$1000                  ; $20:CC5D: A9 00 10    ;
CODE_20CC60:    STA $4305                   ; $20:CC60: 8D 05 43    ;
CODE_20CC63:    LDA #$0800                  ; $20:CC63: A9 00 08    ;
CODE_20CC66:    STA $4315                   ; $20:CC66: 8D 15 43    ;
CODE_20CC69:    LDA #$6000                  ; $20:CC69: A9 00 60    ;
CODE_20CC6C:    STA $2116                   ; $20:CC6C: 8D 16 21    ;
CODE_20CC6F:    LDX #$01                    ; $20:CC6F: A2 01       ;
CODE_20CC71:    STX $420B                   ; $20:CC71: 8E 0B 42    ;
CODE_20CC74:    LDA #$6C00                  ; $20:CC74: A9 00 6C    ;
CODE_20CC77:    STA $2116                   ; $20:CC77: 8D 16 21    ;
CODE_20CC7A:    LDX #$02                    ; $20:CC7A: A2 02       ;
CODE_20CC7C:    STX $420B                   ; $20:CC7C: 8E 0B 42    ;
CODE_20CC7F:    SEP #$20                    ; $20:CC7F: E2 20       ;
CODE_20CC81:    LDA #$05                    ; $20:CC81: A9 05       ;
CODE_20CC83:    STA $0350                   ; $20:CC83: 8D 50 03    ;
CODE_20CC86:    JSL CODE_2A8DB6             ; $20:CC86: 22 B6 8D 2A ;
CODE_20CC8A:    JSL CODE_2A84B0             ; $20:CC8A: 22 B0 84 2A ;
CODE_20CC8E:    REP #$20                    ; $20:CC8E: C2 20       ;
CODE_20CC90:    LDA #$00FF                  ; $20:CC90: A9 FF 00    ;
CODE_20CC93:    STA $00                     ; $20:CC93: 85 00       ;
CODE_20CC95:    STZ $2115                   ; $20:CC95: 9C 15 21    ;
CODE_20CC98:    LDA #$0400                  ; $20:CC98: A9 00 04    ;
CODE_20CC9B:    STA $2116                   ; $20:CC9B: 8D 16 21    ;
CODE_20CC9E:    LDA #$1808                  ; $20:CC9E: A9 08 18    ;
CODE_20CCA1:    STA $4300                   ; $20:CCA1: 8D 00 43    ;
CODE_20CCA4:    STZ $4302                   ; $20:CCA4: 9C 02 43    ;
CODE_20CCA7:    STZ $4304                   ; $20:CCA7: 9C 04 43    ;
CODE_20CCAA:    LDA #$0800                  ; $20:CCAA: A9 00 08    ;
CODE_20CCAD:    STA $4305                   ; $20:CCAD: 8D 05 43    ;
CODE_20CCB0:    LDY #$01                    ; $20:CCB0: A0 01       ;
CODE_20CCB2:    STY $420B                   ; $20:CCB2: 8C 0B 42    ;
CODE_20CCB5:    STZ $2115                   ; $20:CCB5: 9C 15 21    ;
CODE_20CCB8:    LDA #$0800                  ; $20:CCB8: A9 00 08    ;
CODE_20CCBB:    STA $2116                   ; $20:CCBB: 8D 16 21    ;
CODE_20CCBE:    LDA #$1808                  ; $20:CCBE: A9 08 18    ;
CODE_20CCC1:    STA $4300                   ; $20:CCC1: 8D 00 43    ;
CODE_20CCC4:    STZ $4302                   ; $20:CCC4: 9C 02 43    ;
CODE_20CCC7:    STZ $4304                   ; $20:CCC7: 9C 04 43    ;
CODE_20CCCA:    LDA #$0800                  ; $20:CCCA: A9 00 08    ;
CODE_20CCCD:    STA $4305                   ; $20:CCCD: 8D 05 43    ;
CODE_20CCD0:    STY $420B                   ; $20:CCD0: 8C 0B 42    ;
CODE_20CCD3:    SEP #$20                    ; $20:CCD3: E2 20       ;
CODE_20CCD5:    LDA #$01                    ; $20:CCD5: A9 01       ;
CODE_20CCD7:    STA $7E3955                 ; $20:CCD7: 8F 55 39 7E ;
CODE_20CCDB:    LDA #$20                    ; $20:CCDB: A9 20       ;
CODE_20CCDD:    STA $0101                   ; $20:CCDD: 8D 01 01    ;
CODE_20CCE0:    STZ $0238                   ; $20:CCE0: 9C 38 02    ;
CODE_20CCE3:    STZ $0239                   ; $20:CCE3: 9C 39 02    ;
CODE_20CCE6:    LDX #$F4                    ; $20:CCE6: A2 F4       ;
CODE_20CCE8:    LDA #$00                    ; $20:CCE8: A9 00       ;
CODE_20CCEA:    STA $00,x                   ; $20:CCEA: 95 00       ;
CODE_20CCEC:    DEX                         ; $20:CCEC: CA          ;
CODE_20CCED:    CPX #$6B                    ; $20:CCED: E0 6B       ;
CODE_20CCEF:    BCC CODE_20CCF5             ; $20:CCEF: 90 04       ;
CODE_20CCF1:    CPX #$75                    ; $20:CCF1: E0 75       ;
CODE_20CCF3:    BCC CODE_20CCEC             ; $20:CCF3: 90 F7       ;
CODE_20CCF5:    CPX #$FF                    ; $20:CCF5: E0 FF       ;
CODE_20CCF7:    BNE CODE_20CCE8             ; $20:CCF7: D0 EF       ;
CODE_20CCF9:    LDX #$15                    ; $20:CCF9: A2 15       ;
CODE_20CCFB:    LDA #$00                    ; $20:CCFB: A9 00       ;
CODE_20CCFD:    STA $0510,x                 ; $20:CCFD: 9D 10 05    ;
CODE_20CD00:    DEX                         ; $20:CD00: CA          ;
CODE_20CD01:    BPL CODE_20CCFB             ; $20:CD01: 10 F8       ;
CODE_20CD03:    JSR CODE_20B328             ; $20:CD03: 20 28 B3    ;
CODE_20CD06:    JSR CODE_20B09A             ; $20:CD06: 20 9A B0    ;
CODE_20CD09:    JSL CODE_29CE10             ; $20:CD09: 22 10 CE 29 ;
CODE_20CD0D:    REP #$20                    ; $20:CD0D: C2 20       ;
CODE_20CD0F:    LDX #$1E                    ; $20:CD0F: A2 1E       ;
CODE_20CD11:    LDA #$0000                  ; $20:CD11: A9 00 00    ;
CODE_20CD14:    STA $1340,x                 ; $20:CD14: 9D 40 13    ;
CODE_20CD17:    DEX                         ; $20:CD17: CA          ;
CODE_20CD18:    DEX                         ; $20:CD18: CA          ;
CODE_20CD19:    BPL CODE_20CD14             ; $20:CD19: 10 F9       ;
CODE_20CD1B:    SEP #$20                    ; $20:CD1B: E2 20       ;
CODE_20CD1D:    LDA #$20                    ; $20:CD1D: A9 20       ;
CODE_20CD1F:    ASL A                       ; $20:CD1F: 0A          ;
CODE_20CD20:    TAX                         ; $20:CD20: AA          ;
CODE_20CD21:    LDA.l PNTR_20D301,x                 ; $20:CD21: BF 01 D3 20 ;
CODE_20CD25:    STA $36                     ; $20:CD25: 85 36       ;
CODE_20CD27:    LDA.l PNTR_20D301+1,x               ; $20:CD27: BF 02 D3 20 ;
CODE_20CD2B:    STA $37                     ; $20:CD2B: 85 37       ;
CODE_20CD2D:    LDA #$20                    ; $20:CD2D: A9 20       ;
CODE_20CD2F:    STA $38                     ; $20:CD2F: 85 38       ;
CODE_20CD31:    JSL CODE_29E8AB             ; $20:CD31: 22 AB E8 29 ;
CODE_20CD35:    LDA #$B0                    ; $20:CD35: A9 B0       ;
CODE_20CD37:    STA $0216                   ; $20:CD37: 8D 16 02    ;
CODE_20CD3A:    STZ $0218                   ; $20:CD3A: 9C 18 02    ;
CODE_20CD3D:    STZ $0219                   ; $20:CD3D: 9C 19 02    ;
CODE_20CD40:    STZ $021A                   ; $20:CD40: 9C 1A 02    ;
CODE_20CD43:    STZ $021B                   ; $20:CD43: 9C 1B 02    ;
CODE_20CD46:    LDA #$00                    ; $20:CD46: A9 00       ;
CODE_20CD48:    STA $7E3955                 ; $20:CD48: 8F 55 39 7E ;
CODE_20CD4C:    LDA #$1F                    ; $20:CD4C: A9 1F       ;
CODE_20CD4E:    ASL A                       ; $20:CD4E: 0A          ;
CODE_20CD4F:    TAX                         ; $20:CD4F: AA          ;
CODE_20CD50:    LDA.l PNTR_20D301,x                 ; $20:CD50: BF 01 D3 20 ;
CODE_20CD54:    STA $36                     ; $20:CD54: 85 36       ;
CODE_20CD56:    LDA.l PNTR_20D301+1,x               ; $20:CD56: BF 02 D3 20 ;
CODE_20CD5A:    STA $37                     ; $20:CD5A: 85 37       ;
CODE_20CD5C:    LDA #$20                    ; $20:CD5C: A9 20       ;
CODE_20CD5E:    STA $38                     ; $20:CD5E: 85 38       ;
CODE_20CD60:    JSL CODE_29E8AB             ; $20:CD60: 22 AB E8 29 ;
CODE_20CD64:    LDA #$13                    ; $20:CD64: A9 13       ;
CODE_20CD66:    STA $0208                   ; $20:CD66: 8D 08 02    ;
CODE_20CD69:    LDA #$04                    ; $20:CD69: A9 04       ;
CODE_20CD6B:    STA $0209                   ; $20:CD6B: 8D 09 02    ;
CODE_20CD6E:    LDA #$02                    ; $20:CD6E: A9 02       ;
CODE_20CD70:    STA $0203                   ; $20:CD70: 8D 03 02    ;
CODE_20CD73:    LDA #$20                    ; $20:CD73: A9 20       ;
CODE_20CD75:    STA $0204                   ; $20:CD75: 8D 04 02    ;
CODE_20CD78:    LDA #$00                    ; $20:CD78: A9 00       ;
CODE_20CD7A:    LDX #$C6                    ; $20:CD7A: A2 C6       ;
CODE_20CD7C:    LDY #$3C                    ; $20:CD7C: A0 3C       ;
CODE_20CD7E:    JSL CODE_20A1D2             ; $20:CD7E: 22 D2 A1 20 ;
CODE_20CD82:    LDA #$00                    ; $20:CD82: A9 00       ;
CODE_20CD84:    LDX #$D0                    ; $20:CD84: A2 D0       ;
CODE_20CD86:    LDY #$3C                    ; $20:CD86: A0 3C       ;
CODE_20CD88:    JSL CODE_20A1E6             ; $20:CD88: 22 E6 A1 20 ;
CODE_20CD8C:    LDA #$01                    ; $20:CD8C: A9 01       ;
CODE_20CD8E:    STA $02BF                   ; $20:CD8E: 8D BF 02    ;
CODE_20CD91:    LDA #$1E                    ; $20:CD91: A9 1E       ;
CODE_20CD93:    STA $02C1                   ; $20:CD93: 8D C1 02    ;
CODE_20CD96:    REP #$20                    ; $20:CD96: C2 20       ;
CODE_20CD98:    JSL CODE_22E1C5             ; $20:CD98: 22 C5 E1 22 ;
CODE_20CD9C:    REP #$20                    ; $20:CD9C: C2 20       ;
CODE_20CD9E:    LDA #$B800                  ; $20:CD9E: A9 00 B8    ;
CODE_20CDA1:    STA $0D                     ; $20:CDA1: 85 0D       ;
CODE_20CDA3:    LDX #$32                    ; $20:CDA3: A2 32       ;
CODE_20CDA5:    STX $0F                     ; $20:CDA5: 86 0F       ;
CODE_20CDA7:    LDA #$0800                  ; $20:CDA7: A9 00 08    ;
CODE_20CDAA:    STA $0B                     ; $20:CDAA: 85 0B       ;
CODE_20CDAC:    LDA #$4400                  ; $20:CDAC: A9 00 44    ;
CODE_20CDAF:    JSR CODE_20AFF0             ; $20:CDAF: 20 F0 AF    ;
CODE_20CDB2:    LDA #$E000                  ; $20:CDB2: A9 00 E0    ;
CODE_20CDB5:    STA $0D                     ; $20:CDB5: 85 0D       ;
CODE_20CDB7:    LDX #$37                    ; $20:CDB7: A2 37       ;
CODE_20CDB9:    STX $0F                     ; $20:CDB9: 86 0F       ;
CODE_20CDBB:    LDA #$1000                  ; $20:CDBB: A9 00 10    ;
CODE_20CDBE:    STA $0B                     ; $20:CDBE: 85 0B       ;
CODE_20CDC0:    LDA #$4800                  ; $20:CDC0: A9 00 48    ;
CODE_20CDC3:    JSR CODE_20AFF0             ; $20:CDC3: 20 F0 AF    ;
CODE_20CDC6:    LDA #$B000                  ; $20:CDC6: A9 00 B0    ;
CODE_20CDC9:    STA $0D                     ; $20:CDC9: 85 0D       ;
CODE_20CDCB:    LDX #$3A                    ; $20:CDCB: A2 3A       ;
CODE_20CDCD:    STX $0F                     ; $20:CDCD: 86 0F       ;
CODE_20CDCF:    LDA #$0800                  ; $20:CDCF: A9 00 08    ;
CODE_20CDD2:    STA $0B                     ; $20:CDD2: 85 0B       ;
CODE_20CDD4:    LDA #$3C00                  ; $20:CDD4: A9 00 3C    ;
CODE_20CDD7:    JSR CODE_20AFF0             ; $20:CDD7: 20 F0 AF    ;
CODE_20CDDA:    SEP #$20                    ; $20:CDDA: E2 20       ;
CODE_20CDDC:    LDA #$07                    ; $20:CDDC: A9 07       ;
CODE_20CDDE:    STA $0243                   ; $20:CDDE: 8D 43 02    ;
CODE_20CDE1:    LDA #$01                    ; $20:CDE1: A9 01       ;
CODE_20CDE3:    STA $0245                   ; $20:CDE3: 8D 45 02    ;
CODE_20CDE6:    JSR CODE_20A07B             ; $20:CDE6: 20 7B A0    ;
CODE_20CDE9:    LDA #$81                    ; $20:CDE9: A9 81       ;
CODE_20CDEB:    STA $4200                   ; $20:CDEB: 8D 00 42    ;
CODE_20CDEE:    STA $02D9                   ; $20:CDEE: 8D D9 02    ;
CODE_20CDF1:    LDA #$0F                    ; $20:CDF1: A9 0F       ;
CODE_20CDF3:    STA $16                     ; $20:CDF3: 85 16       ;
CODE_20CDF5:    LDA #$58                    ; $20:CDF5: A9 58       ;
CODE_20CDF7:    STA $BD                     ; $20:CDF7: 85 BD       ;
CODE_20CDF9:    LDA #$05                    ; $20:CDF9: A9 05       ;
CODE_20CDFB:    STA $B1                     ; $20:CDFB: 85 B1       ;
CODE_20CDFD:    JSR CODE_20A4B6             ; $20:CDFD: 20 B6 A4    ;
CODE_20CE00:    DEC $B1                     ; $20:CE00: C6 B1       ;
CODE_20CE02:    BPL CODE_20CDFD             ; $20:CE02: 10 F9       ;
CODE_20CE04:    LDA #$03                    ; $20:CE04: A9 03       ;
CODE_20CE06:    STA $B1                     ; $20:CE06: 85 B1       ;
CODE_20CE08:    LDA $BD                     ; $20:CE08: A5 BD       ;
CODE_20CE0A:    STA $0028                   ; $20:CE0A: 8D 28 00    ;
CODE_20CE0D:    INC $BD                     ; $20:CE0D: E6 BD       ;
CODE_20CE0F:    LDA $BD                     ; $20:CE0F: A5 BD       ;
CODE_20CE11:    CMP #$5B                    ; $20:CE11: C9 5B       ;
CODE_20CE13:    BNE CODE_20CDFD             ; $20:CE13: D0 E8       ;
CODE_20CE15:    LDA #$14                    ; $20:CE15: A9 14       ;
CODE_20CE17:    STA $4B                     ; $20:CE17: 85 4B       ;
CODE_20CE19:    LDA #$20                    ; $20:CE19: A9 20       ;
CODE_20CE1B:    STA $4C                     ; $20:CE1B: 85 4C       ;
CODE_20CE1D:    LDA #$00                    ; $20:CE1D: A9 00       ;
CODE_20CE1F:    STA $BD                     ; $20:CE1F: 85 BD       ;
CODE_20CE21:    JSR CODE_20A4B6             ; $20:CE21: 20 B6 A4    ;
CODE_20CE24:    LDA $BD                     ; $20:CE24: A5 BD       ;
CODE_20CE26:    BNE CODE_20CE35             ; $20:CE26: D0 0D       ;
CODE_20CE28:    LDA $0216                   ; $20:CE28: AD 16 02    ;
CODE_20CE2B:    SEC                         ; $20:CE2B: 38          ;
CODE_20CE2C:    SBC #$01                    ; $20:CE2C: E9 01       ;
CODE_20CE2E:    STA $0216                   ; $20:CE2E: 8D 16 02    ;
CODE_20CE31:    BNE CODE_20CE35             ; $20:CE31: D0 02       ;
CODE_20CE33:    INC $BD                     ; $20:CE33: E6 BD       ;
CODE_20CE35:    LDA $4C                     ; $20:CE35: A5 4C       ;
CODE_20CE37:    SEC                         ; $20:CE37: 38          ;
CODE_20CE38:    SBC #$01                    ; $20:CE38: E9 01       ;
CODE_20CE3A:    STA $4C                     ; $20:CE3A: 85 4C       ;
CODE_20CE3C:    BCS CODE_20CE21                     ; $20:CE3C: B0 E3       ;
CODE_20CE3E:    LDA #$16                    ; $20:CE3E: A9 16       ;
CODE_20CE40:    STA $4C                     ; $20:CE40: 85 4C       ;
CODE_20CE42:    DEC $4B                     ; $20:CE42: C6 4B       ;
CODE_20CE44:    BPL CODE_20CE21             ; $20:CE44: 10 DB       ;
CODE_20CE46:    JSR CODE_20A4B6             ; $20:CE46: 20 B6 A4    ;
CODE_20CE49:    JSR CODE_20D0BA             ; $20:CE49: 20 BA D0    ;
CODE_20CE4C:    LDA $4D                     ; $20:CE4C: A5 4D       ;
CODE_20CE4E:    CMP #$08                    ; $20:CE4E: C9 08       ;
CODE_20CE50:    BNE CODE_20CE46             ; $20:CE50: D0 F4       ;
CODE_20CE52:    LDA #$00                    ; $20:CE52: A9 00       ;
CODE_20CE54:    STA $4D                     ; $20:CE54: 85 4D       ;
CODE_20CE56:    STZ $02D3                   ; $20:CE56: 9C D3 02    ;
CODE_20CE59:    LDA #$B0                    ; $20:CE59: A9 B0       ;
CODE_20CE5B:    STA $0216                   ; $20:CE5B: 8D 16 02    ;
CODE_20CE5E:    STZ $0217                   ; $20:CE5E: 9C 17 02    ;
CODE_20CE61:    REP #$30                    ; $20:CE61: C2 30       ;
CODE_20CE63:    LDA #$0000                  ; $20:CE63: A9 00 00    ;
CODE_20CE66:    LDX #$001E                  ; $20:CE66: A2 1E 00    ;
CODE_20CE69:    STA $7F94E0,x               ; $20:CE69: 9F E0 94 7F ;
CODE_20CE6D:    DEX                         ; $20:CE6D: CA          ;
CODE_20CE6E:    DEX                         ; $20:CE6E: CA          ;
CODE_20CE6F:    BPL CODE_20CE69             ; $20:CE6F: 10 F8       ;
CODE_20CE71:    PHB                         ; $20:CE71: 8B          ;
CODE_20CE72:    LDX.w #DATA_3CA4C0                  ; $20:CE72: A2 C0 A4    ;
CODE_20CE75:    LDY #$13E0                  ; $20:CE75: A0 E0 13    ;
CODE_20CE78:    LDA #$001F                  ; $20:CE78: A9 1F 00    ;
CODE_20CE7B:    MVN $00, DATA_3CA4C0>>16                    ; $20:CE7B: 54 00 3C    ;
CODE_20CE7E:    PLB                         ; $20:CE7E: AB          ;
CODE_20CE7F:    SEP #$30                    ; $20:CE7F: E2 30       ;
CODE_20CE81:    INC $1500                   ; $20:CE81: EE 00 15    ;
CODE_20CE84:    JSL CODE_22E0A9             ; $20:CE84: 22 A9 E0 22 ;
CODE_20CE88:    JSR CODE_20A4B6             ; $20:CE88: 20 B6 A4    ;
CODE_20CE8B:    DEC $0216                   ; $20:CE8B: CE 16 02    ;
CODE_20CE8E:    LDA $0216                   ; $20:CE8E: AD 16 02    ;
CODE_20CE91:    BNE CODE_20CE88             ; $20:CE91: D0 F5       ;
CODE_20CE93:    LDA #$55                    ; $20:CE93: A9 55       ;
CODE_20CE95:    STA $B1                     ; $20:CE95: 85 B1       ;
CODE_20CE97:    JSR CODE_20A4B6             ; $20:CE97: 20 B6 A4    ;
CODE_20CE9A:    DEC $B1                     ; $20:CE9A: C6 B1       ;
CODE_20CE9C:    BPL CODE_20CE97             ; $20:CE9C: 10 F9       ;
CODE_20CE9E:    LDA #$1B                    ; $20:CE9E: A9 1B       ;
CODE_20CEA0:    STA $071E                   ; $20:CEA0: 8D 1E 07    ;
CODE_20CEA3:    LDA #$00                    ; $20:CEA3: A9 00       ;
CODE_20CEA5:    STA $7FC587                 ; $20:CEA5: 8F 87 C5 7F ;
CODE_20CEA9:    JSR CODE_20CEAE             ; $20:CEA9: 20 AE CE    ;
CODE_20CEAC:    BRA CODE_20CEE5             ; $20:CEAC: 80 37       ;

CODE_20CEAE:    LDX #$00                    ; $20:CEAE: A2 00       ;
CODE_20CEB0:    TXY                         ; $20:CEB0: 9B          ;
CODE_20CEB1:    TXA                         ; $20:CEB1: 8A          ;
CODE_20CEB2:    AND #$03                    ; $20:CEB2: 29 03       ;
CODE_20CEB4:    ASL A                       ; $20:CEB4: 0A          ;
CODE_20CEB5:    ASL A                       ; $20:CEB5: 0A          ;
CODE_20CEB6:    ASL A                       ; $20:CEB6: 0A          ;
CODE_20CEB7:    ASL A                       ; $20:CEB7: 0A          ;
CODE_20CEB8:    CLC                         ; $20:CEB8: 18          ;
CODE_20CEB9:    ADC #$60                    ; $20:CEB9: 69 60       ;
CODE_20CEBB:    STA $0800,y                 ; $20:CEBB: 99 00 08    ;
CODE_20CEBE:    LDA #$60                    ; $20:CEBE: A9 60       ;
CODE_20CEC0:    STA $0801,y                 ; $20:CEC0: 99 01 08    ;
CODE_20CEC3:    TXA                         ; $20:CEC3: 8A          ;
CODE_20CEC4:    AND #$03                    ; $20:CEC4: 29 03       ;
CODE_20CEC6:    ASL A                       ; $20:CEC6: 0A          ;
CODE_20CEC7:    CLC                         ; $20:CEC7: 18          ;
CODE_20CEC8:    ADC #$C0                    ; $20:CEC8: 69 C0       ;
CODE_20CECA:    STA $0802,y                 ; $20:CECA: 99 02 08    ;
CODE_20CECD:    LDA #$04                    ; $20:CECD: A9 04       ;
CODE_20CECF:    ORA $7FC587                 ; $20:CECF: 0F 87 C5 7F ;
CODE_20CED3:    STA $0803,y                 ; $20:CED3: 99 03 08    ;
CODE_20CED6:    LDA #$02                    ; $20:CED6: A9 02       ;
CODE_20CED8:    STA $0A20,x                 ; $20:CED8: 9D 20 0A    ;
CODE_20CEDB:    INY                         ; $20:CEDB: C8          ;
CODE_20CEDC:    INY                         ; $20:CEDC: C8          ;
CODE_20CEDD:    INY                         ; $20:CEDD: C8          ;
CODE_20CEDE:    INY                         ; $20:CEDE: C8          ;
CODE_20CEDF:    INX                         ; $20:CEDF: E8          ;
CODE_20CEE0:    CPX #$04                    ; $20:CEE0: E0 04       ;
CODE_20CEE2:    BNE CODE_20CEB1             ; $20:CEE2: D0 CD       ;
CODE_20CEE4:    RTS                         ; $20:CEE4: 60          ;

CODE_20CEE5:    JSL CODE_29CFB6             ; $20:CEE5: 22 B6 CF 29 ;
CODE_20CEE9:    LDA #$03                    ; $20:CEE9: A9 03       ;
CODE_20CEEB:    STA $B1                     ; $20:CEEB: 85 B1       ;
CODE_20CEED:    LDA #$03                    ; $20:CEED: A9 03       ;
CODE_20CEEF:    STA $BD                     ; $20:CEEF: 85 BD       ;
CODE_20CEF1:    JSR CODE_20A4B6             ; $20:CEF1: 20 B6 A4    ;
CODE_20CEF4:    JSL CODE_29D09A             ; $20:CEF4: 22 9A D0 29 ;
CODE_20CEF8:    LDA $7FC587                 ; $20:CEF8: AF 87 C5 7F ;
CODE_20CEFC:    CLC                         ; $20:CEFC: 18          ;
CODE_20CEFD:    ADC #$03                    ; $20:CEFD: 69 03       ;
CODE_20CEFF:    CMP #$30                    ; $20:CEFF: C9 30       ;
CODE_20CF01:    BCC CODE_20CF05             ; $20:CF01: 90 02       ;
CODE_20CF03:    LDA #$30                    ; $20:CF03: A9 30       ;
CODE_20CF05:    STA $7FC587                 ; $20:CF05: 8F 87 C5 7F ;
CODE_20CF09:    PHA                         ; $20:CF09: 48          ;
CODE_20CF0A:    AND #$30                    ; $20:CF0A: 29 30       ;
CODE_20CF0C:    STA $7FC587                 ; $20:CF0C: 8F 87 C5 7F ;
CODE_20CF10:    JSR CODE_20CEAE             ; $20:CF10: 20 AE CE    ;
CODE_20CF13:    PLA                         ; $20:CF13: 68          ;
CODE_20CF14:    STA $7FC587                 ; $20:CF14: 8F 87 C5 7F ;
CODE_20CF18:    LDA $02B3                   ; $20:CF18: AD B3 02    ;
CODE_20CF1B:    CMP #$02                    ; $20:CF1B: C9 02       ;
CODE_20CF1D:    BNE CODE_20CEF1             ; $20:CF1D: D0 D2       ;
CODE_20CF1F:    LDA #$C0                    ; $20:CF1F: A9 C0       ;
CODE_20CF21:    STA $1CFC                   ; $20:CF21: 8D FC 1C    ;
CODE_20CF24:    JSR CODE_20A4B6             ; $20:CF24: 20 B6 A4    ;
CODE_20CF27:    DEC $1CFC                   ; $20:CF27: CE FC 1C    ;
CODE_20CF2A:    BNE CODE_20CF24             ; $20:CF2A: D0 F8       ;
CODE_20CF2C:    LDA #$15                    ; $20:CF2C: A9 15       ;
CODE_20CF2E:    STA $1203                   ; $20:CF2E: 8D 03 12    ;
CODE_20CF31:    JSR CODE_20A4B6             ; $20:CF31: 20 B6 A4    ;
CODE_20CF34:    LDA $02E5                   ; $20:CF34: AD E5 02    ;
CODE_20CF37:    BNE CODE_20CF62             ; $20:CF37: D0 29       ;
CODE_20CF39:    JSL CODE_2AFE63             ; $20:CF39: 22 63 FE 2A ;
CODE_20CF3D:    LDX $0726                   ; $20:CF3D: AE 26 07    ;
CODE_20CF40:    LDA $F6,x                   ; $20:CF40: B5 F6       ;
CODE_20CF42:    AND #$10                    ; $20:CF42: 29 10       ;
CODE_20CF44:    BEQ CODE_20CF31             ; $20:CF44: F0 EB       ;
CODE_20CF46:    REP #$10                    ; $20:CF46: C2 10       ;
CODE_20CF48:    LDX #$0000                  ; $20:CF48: A2 00 00    ;
CODE_20CF4B:    LDA #$F0                    ; $20:CF4B: A9 F0       ;
CODE_20CF4D:    STA $0801,x                 ; $20:CF4D: 9D 01 08    ;
CODE_20CF50:    INX                         ; $20:CF50: E8          ;
CODE_20CF51:    INX                         ; $20:CF51: E8          ;
CODE_20CF52:    INX                         ; $20:CF52: E8          ;
CODE_20CF53:    INX                         ; $20:CF53: E8          ;
CODE_20CF54:    CPX #$0200                  ; $20:CF54: E0 00 02    ;
CODE_20CF57:    BCC CODE_20CF4D             ; $20:CF57: 90 F4       ;
CODE_20CF59:    SEP #$10                    ; $20:CF59: E2 10       ;
CODE_20CF5B:    JSL CODE_29EBB7             ; $20:CF5B: 22 B7 EB 29 ;
CODE_20CF5F:    INC $02E5                   ; $20:CF5F: EE E5 02    ;
CODE_20CF62:    JSL CODE_29EBF7             ; $20:CF62: 22 F7 EB 29 ;
CODE_20CF66:    JMP CODE_20CF31             ; $20:CF66: 4C 31 CF    ;

CODE_20CF69:    DEC $C2                     ; $20:CF69: C6 C2       ;
CODE_20CF6B:    LDA $C2                     ; $20:CF6B: A5 C2       ;
CODE_20CF6D:    JSL CODE_20FB1F         ; $20:CF6D: 22 1F FB 20 ; ExecutePtrShort

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

CODE_20CFDC:    LDA $02D3                   ; $20:CFDC: AD D3 02    ;
CODE_20CFDF:    CMP #$FF                    ; $20:CFDF: C9 FF       ;
CODE_20CFE1:    BEQ CODE_20D026             ; $20:CFE1: F0 43       ;
CODE_20CFE3:    BPL CODE_20D026             ; $20:CFE3: 10 41       ;
CODE_20CFE5:    AND #$7F                    ; $20:CFE5: 29 7F       ;
CODE_20CFE7:    CMP #$05                    ; $20:CFE7: C9 05       ;
CODE_20CFE9:    BEQ CODE_20D027             ; $20:CFE9: F0 3C       ;
CODE_20CFEB:    CMP #$06                    ; $20:CFEB: C9 06       ;
CODE_20CFED:    BNE CODE_20CFF2             ; $20:CFED: D0 03       ;
CODE_20CFEF:    JMP CODE_20D06F             ; $20:CFEF: 4C 6F D0    ;

CODE_20CFF2:    TAX                         ; $20:CFF2: AA          ;
CODE_20CFF3:    ASL A                       ; $20:CFF3: 0A          ;
CODE_20CFF4:    STA $00                     ; $20:CFF4: 85 00       ;
CODE_20CFF6:    LDA.l DATA_20CFC5,x                 ; $20:CFF6: BF C5 CF 20 ;
CODE_20CFFA:    CLC                         ; $20:CFFA: 18          ;
CODE_20CFFB:    ADC $004D                   ; $20:CFFB: 6D 4D 00    ;
CODE_20CFFE:    TAX                         ; $20:CFFE: AA          ;
CODE_20CFFF:    LDA.l DATA_20CF75,x                 ; $20:CFFF: BF 75 CF 20 ;
CODE_20D003:    STA $0F                     ; $20:D003: 85 0F       ;
CODE_20D005:    LDA.l DATA_20CF9D,x                 ; $20:D005: BF 9D CF 20 ;
CODE_20D009:    STA $0E                     ; $20:D009: 85 0E       ;
CODE_20D00B:    STZ $0D                     ; $20:D00B: 64 0D       ;
CODE_20D00D:    REP #$20                    ; $20:D00D: C2 20       ;
CODE_20D00F:    LDA #$0800                  ; $20:D00F: A9 00 08    ;
CODE_20D012:    STA $0B                     ; $20:D012: 85 0B       ;
CODE_20D014:    LDX $00                     ; $20:D014: A6 00       ;
CODE_20D016:    LDA #$2000                  ; $20:D016: A9 00 20    ;
CODE_20D019:    CLC                         ; $20:D019: 18          ;
CODE_20D01A:    ADC.l DATA_20CFCA,x                 ; $20:D01A: 7F CA CF 20 ;
CODE_20D01E:    JSR CODE_20AFF0             ; $20:D01E: 20 F0 AF    ;
CODE_20D021:    SEP #$20                    ; $20:D021: E2 20       ;
CODE_20D023:    INC $02D3                   ; $20:D023: EE D3 02    ;
CODE_20D026:    RTS                         ; $20:D026: 60          ;

CODE_20D027:    INC $02D3                   ; $20:D027: EE D3 02    ;
CODE_20D02A:    REP #$20                    ; $20:D02A: C2 20       ;
CODE_20D02C:    LDX #$80                    ; $20:D02C: A2 80       ;
CODE_20D02E:    STX $2115                   ; $20:D02E: 8E 15 21    ;
CODE_20D031:    LDA #$1801                  ; $20:D031: A9 01 18    ;
CODE_20D034:    STA $4300                   ; $20:D034: 8D 00 43    ;
CODE_20D037:    LDA #$0800                  ; $20:D037: A9 00 08    ;
CODE_20D03A:    STA $4305                   ; $20:D03A: 8D 05 43    ;
CODE_20D03D:    LDA #$6000                  ; $20:D03D: A9 00 60    ;
CODE_20D040:    LDY $004D                   ; $20:D040: AC 4D 00    ;
CODE_20D043:    CPY #$04                    ; $20:D043: C0 04       ;
CODE_20D045:    BCC CODE_20D04A             ; $20:D045: 90 03       ;
CODE_20D047:    LDA #$8000                  ; $20:D047: A9 00 80    ;
CODE_20D04A:    STA $00                     ; $20:D04A: 85 00       ;
CODE_20D04C:    TYA                         ; $20:D04C: 98          ;
CODE_20D04D:    AND #$0003                  ; $20:D04D: 29 03 00    ;
CODE_20D050:    ASL A                       ; $20:D050: 0A          ;
CODE_20D051:    TAX                         ; $20:D051: AA          ;
CODE_20D052:    LDA.l DATA_20CFD4,x                 ; $20:D052: BF D4 CF 20 ;
CODE_20D056:    CLC                         ; $20:D056: 18          ;
CODE_20D057:    ADC $00                     ; $20:D057: 65 00       ;
CODE_20D059:    STA $4302                   ; $20:D059: 8D 02 43    ;
CODE_20D05C:    LDX #$7E                    ; $20:D05C: A2 7E       ;
CODE_20D05E:    STX $4304                   ; $20:D05E: 8E 04 43    ;
CODE_20D061:    LDA #$0400                  ; $20:D061: A9 00 04    ;
CODE_20D064:    STA $2116                   ; $20:D064: 8D 16 21    ;
CODE_20D067:    LDX #$01                    ; $20:D067: A2 01       ;
CODE_20D069:    STX $420B                   ; $20:D069: 8E 0B 42    ;
CODE_20D06C:    SEP #$20                    ; $20:D06C: E2 20       ;
CODE_20D06E:    RTS                         ; $20:D06E: 60          ;

CODE_20D06F:    LDA #$FF                    ; $20:D06F: A9 FF       ;
CODE_20D071:    STA $02D3                   ; $20:D071: 8D D3 02    ;
CODE_20D074:    REP #$20                    ; $20:D074: C2 20       ;
CODE_20D076:    LDA #$0800                  ; $20:D076: A9 00 08    ;
CODE_20D079:    STA $2116                   ; $20:D079: 8D 16 21    ;
CODE_20D07C:    LDX #$80                    ; $20:D07C: A2 80       ;
CODE_20D07E:    STX $2115                   ; $20:D07E: 8E 15 21    ;
CODE_20D081:    LDA #$1801                  ; $20:D081: A9 01 18    ;
CODE_20D084:    STA $4300                   ; $20:D084: 8D 00 43    ;
CODE_20D087:    LDA #$2000                  ; $20:D087: A9 00 20    ;
CODE_20D08A:    STA $4302                   ; $20:D08A: 8D 02 43    ;
CODE_20D08D:    LDX #$7F                    ; $20:D08D: A2 7F       ;
CODE_20D08F:    STX $4304                   ; $20:D08F: 8E 04 43    ;
CODE_20D092:    LDA #$0600                  ; $20:D092: A9 00 06    ;
CODE_20D095:    STA $4305                   ; $20:D095: 8D 05 43    ;
CODE_20D098:    LDX #$01                    ; $20:D098: A2 01       ;
CODE_20D09A:    STX $420B                   ; $20:D09A: 8E 0B 42    ;
CODE_20D09D:    SEP #$20                    ; $20:D09D: E2 20       ;
CODE_20D09F:    RTS                         ; $20:D09F: 60          ;

CODE_20D0A0:    LDA $15                     ; $20:D0A0: A5 15       ;
CODE_20D0A2:    AND #$18                    ; $20:D0A2: 29 18       ;
CODE_20D0A4:    LSR A                       ; $20:D0A4: 4A          ;
CODE_20D0A5:    LSR A                       ; $20:D0A5: 4A          ;
CODE_20D0A6:    LSR A                       ; $20:D0A6: 4A          ;
CODE_20D0A7:    TAX                         ; $20:D0A7: AA          ;
CODE_20D0A8:    LDA.w DATA_21C9DF,x                 ; $20:D0A8: BD DF C9    ;
CODE_20D0AB:    CMP $0245                   ; $20:D0AB: CD 45 02    ;
CODE_20D0AE:    BEQ CODE_20D0B3             ; $20:D0AE: F0 03       ;
CODE_20D0B0:    STZ $0243                   ; $20:D0B0: 9C 43 02    ;
CODE_20D0B3:    STA $0245                   ; $20:D0B3: 8D 45 02    ;
CODE_20D0B6:    JSR CODE_20A07B             ; $20:D0B6: 20 7B A0    ;
CODE_20D0B9:    RTS                         ; $20:D0B9: 60          ;

CODE_20D0BA:    LDA #$00                    ; $20:D0BA: A9 00       ;
CODE_20D0BC:    STA $C2                     ; $20:D0BC: 85 C2       ;
CODE_20D0BE:    LDA $43                     ; $20:D0BE: A5 43       ;
CODE_20D0C0:    JSL CODE_20FB1F         ; $20:D0C0: 22 1F FB 20 ; ExecutePtrShort

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

CODE_20D0DA:    INC $43                 ; $20:D0DA: E6 43       ;
CODE_20D0DC:    NOP                     ; $20:D0DC: EA          ;
CODE_20D0DD:    NOP                         ; $20:D0DD: EA          ;
CODE_20D0DE:    RTS                         ; $20:D0DE: 60          ;

CODE_20D0DF:    LDY #$01                    ; $20:D0DF: A0 01       ;
CODE_20D0E1:    INC $0216                   ; $20:D0E1: EE 16 02    ;
CODE_20D0E4:    LDA $0216                   ; $20:D0E4: AD 16 02    ;
CODE_20D0E7:    CMP #$D0                    ; $20:D0E7: C9 D0       ;
CODE_20D0E9:    BEQ CODE_20D0EF             ; $20:D0E9: F0 04       ;
CODE_20D0EB:    DEY                         ; $20:D0EB: 88          ;
CODE_20D0EC:    BPL CODE_20D0E1             ; $20:D0EC: 10 F3       ;
CODE_20D0EE:    RTS                         ; $20:D0EE: 60          ;

CODE_20D0EF:    INC $43                     ; $20:D0EF: E6 43       ;
CODE_20D0F1:    LDA #$10                    ; $20:D0F1: A9 10       ;
CODE_20D0F3:    STA $0216                   ; $20:D0F3: 8D 16 02    ;
CODE_20D0F6:    LDA #$01                    ; $20:D0F6: A9 01       ;
CODE_20D0F8:    STA $0217                   ; $20:D0F8: 8D 17 02    ;
CODE_20D0FB:    STZ $0218                   ; $20:D0FB: 9C 18 02    ;
CODE_20D0FE:    STZ $0219                   ; $20:D0FE: 9C 19 02    ;
CODE_20D101:    RTS                         ; $20:D101: 60          ;

CODE_20D102:    LDA #$03                    ; $20:D102: A9 03       ;
CODE_20D104:    STA $46                     ; $20:D104: 85 46       ;
CODE_20D106:    LDA #$20                    ; $20:D106: A9 20       ;
CODE_20D108:    STA $47                     ; $20:D108: 85 47       ;
CODE_20D10A:    LDA #$06                    ; $20:D10A: A9 06       ;
CODE_20D10C:    STA $44                     ; $20:D10C: 85 44       ;
CODE_20D10E:    LDA #$5C                    ; $20:D10E: A9 5C       ;
CODE_20D110:    STA $45                     ; $20:D110: 85 45       ;
CODE_20D112:    INC $43                     ; $20:D112: E6 43       ;
CODE_20D114:    RTS                         ; $20:D114: 60          ;

CODE_20D115:    LDA #$01                    ; $20:D115: A9 01       ;
CODE_20D117:    STA $C2                     ; $20:D117: 85 C2       ;
CODE_20D119:    RTS                         ; $20:D119: 60          ;

CODE_20D11A:    REP #$20                    ; $20:D11A: C2 20       ;
CODE_20D11C:    LDX #$80                    ; $20:D11C: A2 80       ;
CODE_20D11E:    STX $2115                   ; $20:D11E: 8E 15 21    ;
CODE_20D121:    LDA $46                     ; $20:D121: A5 46       ;
CODE_20D123:    XBA                         ; $20:D123: EB          ;
CODE_20D124:    STA $2116                   ; $20:D124: 8D 16 21    ;
CODE_20D127:    LDY #$1F                    ; $20:D127: A0 1F       ;
CODE_20D129:    LDA #$085C                  ; $20:D129: A9 5C 08    ;
CODE_20D12C:    STA $2118                   ; $20:D12C: 8D 18 21    ;
CODE_20D12F:    DEY                         ; $20:D12F: 88          ;
CODE_20D130:    BPL CODE_20D12C             ; $20:D130: 10 FA       ;
CODE_20D132:    SEP #$20                    ; $20:D132: E2 20       ;
CODE_20D134:    DEC $44                     ; $20:D134: C6 44       ;
CODE_20D136:    BPL CODE_20D13B             ; $20:D136: 10 03       ;
CODE_20D138:    INC $43                     ; $20:D138: E6 43       ;
CODE_20D13A:    RTS                         ; $20:D13A: 60          ;

CODE_20D13B:    JSR CODE_20D2C1             ; $20:D13B: 20 C1 D2    ;
CODE_20D13E:    RTS                         ; $20:D13E: 60          ;

CODE_20D13F:    INC $43                     ; $20:D13F: E6 43       ;
CODE_20D141:    LDA $47                     ; $20:D141: A5 47       ;
CODE_20D143:    CLC                         ; $20:D143: 18          ;
CODE_20D144:    ADC #$08                    ; $20:D144: 69 08       ;
CODE_20D146:    STA $47                     ; $20:D146: 85 47       ;
CODE_20D148:    RTS                         ; $20:D148: 60          ;

CODE_20D149:    INC $43                     ; $20:D149: E6 43       ;
CODE_20D14B:    LDA #$0C                    ; $20:D14B: A9 0C       ;
CODE_20D14D:    STA $44                     ; $20:D14D: 85 44       ;
CODE_20D14F:    STZ $48                     ; $20:D14F: 64 48       ;
CODE_20D151:    RTS                         ; $20:D151: 60          ;

CODE_20D152:    LDA #$02                    ; $20:D152: A9 02       ;
CODE_20D154:    STA $C2                     ; $20:D154: 85 C2       ;
CODE_20D156:    RTS                         ; $20:D156: 60          ;

CODE_20D157:    INC $43                     ; $20:D157: E6 43       ;
CODE_20D159:    LDA #$80                    ; $20:D159: A9 80       ;
CODE_20D15B:    STA $02D3                   ; $20:D15B: 8D D3 02    ;
CODE_20D15E:    RTS                         ; $20:D15E: 60          ;

CODE_20D15F:    INC $43                     ; $20:D15F: E6 43       ;
CODE_20D161:    RTS                         ; $20:D161: 60          ;

CODE_20D162:    JSL CODE_22E0A9             ; $20:D162: 22 A9 E0 22 ;
CODE_20D166:    PHB                         ; $20:D166: 8B          ;
CODE_20D167:    LDA #$22                    ; $20:D167: A9 22       ;
CODE_20D169:    PHA                         ; $20:D169: 48          ;
CODE_20D16A:    PLB                         ; $20:D16A: AB          ;
CODE_20D16B:    LDX $4D                     ; $20:D16B: A6 4D       ;
CODE_20D16D:    LDA.w DATA_21923E,x                 ; $20:D16D: BD 3E 92    ;
CODE_20D170:    XBA                         ; $20:D170: EB          ;
CODE_20D171:    LDA.w DATA_219246,x                 ; $20:D171: BD 46 92    ;
CODE_20D174:    REP #$10                    ; $20:D174: C2 10       ;
CODE_20D176:    TAX                         ; $20:D176: AA          ;
CODE_20D177:    LDY #$0000                  ; $20:D177: A0 00 00    ;
CODE_20D17A:    LDA.w DATA_219256,x                 ; $20:D17A: BD 56 92    ;
CODE_20D17D:    CMP #$FF                    ; $20:D17D: C9 FF       ;
CODE_20D17F:    BEQ CODE_20D1C5             ; $20:D17F: F0 44       ;
CODE_20D181:    STA $0800,y                 ; $20:D181: 99 00 08    ;
CODE_20D184:    STA $0804,y                 ; $20:D184: 99 04 08    ;
CODE_20D187:    INX                         ; $20:D187: E8          ;
CODE_20D188:    LDA.w DATA_219256,x                 ; $20:D188: BD 56 92    ;
CODE_20D18B:    SEC                         ; $20:D18B: 38          ;
CODE_20D18C:    SBC #$10                    ; $20:D18C: E9 10       ;
CODE_20D18E:    STA $0801,y                 ; $20:D18E: 99 01 08    ;
CODE_20D191:    CLC                         ; $20:D191: 18          ;
CODE_20D192:    ADC #$08                    ; $20:D192: 69 08       ;
CODE_20D194:    STA $0805,y                 ; $20:D194: 99 05 08    ;
CODE_20D197:    INX                         ; $20:D197: E8          ;
CODE_20D198:    LDA.w DATA_219256,x                 ; $20:D198: BD 56 92    ;
CODE_20D19B:    STA $0802,y                 ; $20:D19B: 99 02 08    ;
CODE_20D19E:    INC A                       ; $20:D19E: 1A          ;
CODE_20D19F:    STA $0806,y                 ; $20:D19F: 99 06 08    ;
CODE_20D1A2:    INX                         ; $20:D1A2: E8          ;
CODE_20D1A3:    LDA.w DATA_219256,x                 ; $20:D1A3: BD 56 92    ;
CODE_20D1A6:    STA $0803,y                 ; $20:D1A6: 99 03 08    ;
CODE_20D1A9:    STA $0807,y                 ; $20:D1A9: 99 07 08    ;
CODE_20D1AC:    INX                         ; $20:D1AC: E8          ;
CODE_20D1AD:    PHY                         ; $20:D1AD: 5A          ;
CODE_20D1AE:    REP #$20                    ; $20:D1AE: C2 20       ;
CODE_20D1B0:    TYA                         ; $20:D1B0: 98          ;
CODE_20D1B1:    LSR A                       ; $20:D1B1: 4A          ;
CODE_20D1B2:    LSR A                       ; $20:D1B2: 4A          ;
CODE_20D1B3:    TAY                         ; $20:D1B3: A8          ;
CODE_20D1B4:    LDA #$0000                  ; $20:D1B4: A9 00 00    ;
CODE_20D1B7:    STA $0A20,y                 ; $20:D1B7: 99 20 0A    ;
CODE_20D1BA:    PLY                         ; $20:D1BA: 7A          ;
CODE_20D1BB:    TYA                         ; $20:D1BB: 98          ;
CODE_20D1BC:    CLC                         ; $20:D1BC: 18          ;
CODE_20D1BD:    ADC #$0008                  ; $20:D1BD: 69 08 00    ;
CODE_20D1C0:    TAY                         ; $20:D1C0: A8          ;
CODE_20D1C1:    SEP #$20                    ; $20:D1C1: E2 20       ;
CODE_20D1C3:    BRA CODE_20D17A             ; $20:D1C3: 80 B5       ;
CODE_20D1C5:    SEP #$10                    ; $20:D1C5: E2 10       ;
CODE_20D1C7:    LDA $4D                     ; $20:D1C7: A5 4D       ;
CODE_20D1C9:    CMP #$03                    ; $20:D1C9: C9 03       ;
CODE_20D1CB:    BNE CODE_20D1DA             ; $20:D1CB: D0 0D       ;
CODE_20D1CD:    LDA #$34                    ; $20:D1CD: A9 34       ;
CODE_20D1CF:    STA $0897                   ; $20:D1CF: 8D 97 08    ;
CODE_20D1D2:    STA $089F                   ; $20:D1D2: 8D 9F 08    ;
CODE_20D1D5:    LDA #$74                    ; $20:D1D5: A9 74       ;
CODE_20D1D7:    STA $08A7                   ; $20:D1D7: 8D A7 08    ;
CODE_20D1DA:    INC $43                     ; $20:D1DA: E6 43       ;
CODE_20D1DC:    LDA #$03                    ; $20:D1DC: A9 03       ;
CODE_20D1DE:    STA $49                     ; $20:D1DE: 85 49       ;
CODE_20D1E0:    PLB                         ; $20:D1E0: AB          ;
CODE_20D1E1:    JSL CODE_29CE95             ; $20:D1E1: 22 95 CE 29 ;
CODE_20D1E5:    STZ $02B3                   ; $20:D1E5: 9C B3 02    ;
CODE_20D1E8:    RTS                         ; $20:D1E8: 60          ;

CODE_20D1E9:    JSR CODE_20D0A0             ; $20:D1E9: 20 A0 D0    ;
CODE_20D1EC:    JSL CODE_29D09A             ; $20:D1EC: 22 9A D0 29 ;
CODE_20D1F0:    JSL CODE_29D232             ; $20:D1F0: 22 32 D2 29 ;
CODE_20D1F4:    LDA $02B3                   ; $20:D1F4: AD B3 02    ;
CODE_20D1F7:    CMP #$02                    ; $20:D1F7: C9 02       ;
CODE_20D1F9:    BNE CODE_20D205             ; $20:D1F9: D0 0A       ;
CODE_20D1FB:    INC $43                     ; $20:D1FB: E6 43       ;
CODE_20D1FD:    LDA #$0F                    ; $20:D1FD: A9 0F       ;
CODE_20D1FF:    STA $4B                     ; $20:D1FF: 85 4B       ;
CODE_20D201:    LDA #$16                    ; $20:D201: A9 16       ;
CODE_20D203:    STA $4C                     ; $20:D203: 85 4C       ;
CODE_20D205:    RTS                         ; $20:D205: 60          ;

CODE_20D206:    JSR CODE_20D0A0             ; $20:D206: 20 A0 D0    ;
CODE_20D209:    LDA $4C                     ; $20:D209: A5 4C       ;
CODE_20D20B:    SEC                         ; $20:D20B: 38          ;
CODE_20D20C:    SBC #$01                    ; $20:D20C: E9 01       ;
CODE_20D20E:    STA $4C                     ; $20:D20E: 85 4C       ;
CODE_20D210:    BCS CODE_20D25F                     ; $20:D210: B0 4D       ;
CODE_20D212:    LDA $4B                     ; $20:D212: A5 4B       ;
CODE_20D214:    BEQ CODE_20D24D             ; $20:D214: F0 37       ;
CODE_20D216:    DEC A                       ; $20:D216: 3A          ;
CODE_20D217:    BEQ CODE_20D22E             ; $20:D217: F0 15       ;
CODE_20D219:    DEC A                       ; $20:D219: 3A          ;
CODE_20D21A:    BNE CODE_20D251             ; $20:D21A: D0 35       ;
CODE_20D21C:    LDX $004D                   ; $20:D21C: AE 4D 00    ;
CODE_20D21F:    LDA.l DATA_20D260,x                 ; $20:D21F: BF 60 D2 20 ;
CODE_20D223:    STA $0350                   ; $20:D223: 8D 50 03    ;
CODE_20D226:    BEQ CODE_20D251             ; $20:D226: F0 29       ;
CODE_20D228:    JSL CODE_2A8DB6             ; $20:D228: 22 B6 8D 2A ;
CODE_20D22C:    BRA CODE_20D251             ; $20:D22C: 80 23       ;

CODE_20D22E:    LDA $004D                   ; $20:D22E: AD 4D 00    ;
CODE_20D231:    CMP #$06                    ; $20:D231: C9 06       ;
CODE_20D233:    BNE CODE_20D251             ; $20:D233: D0 1C       ;
CODE_20D235:    PHB                         ; $20:D235: 8B          ;
CODE_20D236:    PHK                         ; $20:D236: 4B          ;
CODE_20D237:    PLB                         ; $20:D237: AB          ;
CODE_20D238:    LDA #$00                    ; $20:D238: A9 00       ;
CODE_20D23A:    XBA                         ; $20:D23A: EB          ;
CODE_20D23B:    REP #$10                    ; $20:D23B: C2 10       ;
CODE_20D23D:    LDY #$00B0                  ; $20:D23D: A0 B0 00    ;
CODE_20D240:    LDX #$00F0                  ; $20:D240: A2 F0 00    ;
CODE_20D243:    LDA #$BF                    ; $20:D243: A9 BF       ;
CODE_20D245:    MVN $7F, $7F                    ; $20:D245: 54 7F 7F    ;
CODE_20D248:    SEP #$10                    ; $20:D248: E2 10       ;
CODE_20D24A:    PLB                         ; $20:D24A: AB          ;
CODE_20D24B:    BRA CODE_20D251             ; $20:D24B: 80 04       ;
CODE_20D24D:    JSL CODE_2A84B0             ; $20:D24D: 22 B0 84 2A ;
CODE_20D251:    LDA #$16                    ; $20:D251: A9 16       ;
CODE_20D253:    STA $4C                     ; $20:D253: 85 4C       ;
CODE_20D255:    DEC $4B                     ; $20:D255: C6 4B       ;
CODE_20D257:    BPL CODE_20D25F             ; $20:D257: 10 06       ;
CODE_20D259:    INC $43                     ; $20:D259: E6 43       ;
CODE_20D25B:    LDA #$03                    ; $20:D25B: A9 03       ;
CODE_20D25D:    STA $49                     ; $20:D25D: 85 49       ;
CODE_20D25F:    RTS                         ; $20:D25F: 60          ;

DATA_20D260:        db $0E,$01,$0C,$00,$18,$0A,$1B,$00

CODE_20D268:    JSR CODE_20D0A0             ; $20:D268: 20 A0 D0    ;
CODE_20D26B:    JSL CODE_29D09A             ; $20:D26B: 22 9A D0 29 ;
CODE_20D26F:    JSL CODE_29D232             ; $20:D26F: 22 32 D2 29 ;
CODE_20D273:    LDA $02B3                   ; $20:D273: AD B3 02    ;
CODE_20D276:    BNE CODE_20D2C0             ; $20:D276: D0 48       ;
CODE_20D278:    LDA #$01                    ; $20:D278: A9 01       ;
CODE_20D27A:    STA $43                     ; $20:D27A: 85 43       ;
CODE_20D27C:    INC $4D                     ; $20:D27C: E6 4D       ;
CODE_20D27E:    LDA $4D                     ; $20:D27E: A5 4D       ;
CODE_20D280:    CMP #$02                    ; $20:D280: C9 02       ;
CODE_20D282:    BNE CODE_20D29E             ; $20:D282: D0 1A       ;
CODE_20D284:    LDA #$EF                    ; $20:D284: A9 EF       ;
CODE_20D286:    STA $021A                   ; $20:D286: 8D 1A 02    ;
CODE_20D289:    LDA #$00                    ; $20:D289: A9 00       ;
CODE_20D28B:    STA $021B                   ; $20:D28B: 8D 1B 02    ;
CODE_20D28E:    LDA #$17                    ; $20:D28E: A9 17       ;
CODE_20D290:    STA $0208                   ; $20:D290: 8D 08 02    ;
CODE_20D293:    LDA #$13                    ; $20:D293: A9 13       ;
CODE_20D295:    STA $0209                   ; $20:D295: 8D 09 02    ;
CODE_20D298:    LDA #$64                    ; $20:D298: A9 64       ;
CODE_20D29A:    STA $0204                   ; $20:D29A: 8D 04 02    ;
CODE_20D29D:    RTS                         ; $20:D29D: 60          ;

CODE_20D29E:    STZ $021A                   ; $20:D29E: 9C 1A 02    ;
CODE_20D2A1:    STZ $021B                   ; $20:D2A1: 9C 1B 02    ;
CODE_20D2A4:    LDA #$13                    ; $20:D2A4: A9 13       ;
CODE_20D2A6:    STA $0208                   ; $20:D2A6: 8D 08 02    ;
CODE_20D2A9:    LDA #$04                    ; $20:D2A9: A9 04       ;
CODE_20D2AB:    STA $0209                   ; $20:D2AB: 8D 09 02    ;
CODE_20D2AE:    LDA #$20                    ; $20:D2AE: A9 20       ;
CODE_20D2B0:    STA $0204                   ; $20:D2B0: 8D 04 02    ;
CODE_20D2B3:    LDA #$20                    ; $20:D2B3: A9 20       ;
CODE_20D2B5:    STA $0205                   ; $20:D2B5: 8D 05 02    ;
CODE_20D2B8:    ASL A                       ; $20:D2B8: 0A          ;
CODE_20D2B9:    STA $0206                   ; $20:D2B9: 8D 06 02    ;
CODE_20D2BC:    ASL A                       ; $20:D2BC: 0A          ;
CODE_20D2BD:    STA $0207                   ; $20:D2BD: 8D 07 02    ;
CODE_20D2C0:    RTS                         ; $20:D2C0: 60          ;

CODE_20D2C1:    LDA $47                     ; $20:D2C1: A5 47       ;
CODE_20D2C3:    CLC                         ; $20:D2C3: 18          ;
CODE_20D2C4:    ADC #$20                    ; $20:D2C4: 69 20       ;
CODE_20D2C6:    STA $47                     ; $20:D2C6: 85 47       ;
CODE_20D2C8:    LDA $46                     ; $20:D2C8: A5 46       ;
CODE_20D2CA:    ADC #$00                    ; $20:D2CA: 69 00       ;
CODE_20D2CC:    STA $46                     ; $20:D2CC: 85 46       ;
CODE_20D2CE:    CMP #$18                    ; $20:D2CE: C9 18       ;
CODE_20D2D0:    BCS CODE_20D2E0                     ; $20:D2D0: B0 0E       ;
CODE_20D2D2:    CMP #$14                    ; $20:D2D2: C9 14       ;
CODE_20D2D4:    BCC CODE_20D2E0             ; $20:D2D4: 90 0A       ;
CODE_20D2D6:    LDA #$18                    ; $20:D2D6: A9 18       ;
CODE_20D2D8:    STA $46                     ; $20:D2D8: 85 46       ;
CODE_20D2DA:    LDA $47                     ; $20:D2DA: A5 47       ;
CODE_20D2DC:    AND #$1F                    ; $20:D2DC: 29 1F       ;
CODE_20D2DE:    STA $47                     ; $20:D2DE: 85 47       ;
CODE_20D2E0:    RTS                         ; $20:D2E0: 60          ;

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

CODE_20E07C:    LDA $0726                   ; $20:E07C: AD 26 07    ;
CODE_20E07F:    BEQ CODE_20E0A2             ; $20:E07F: F0 21       ;
CODE_20E081:    LDX $8D                     ; $20:E081: A6 8D       ;
CODE_20E083:    LDA.l DATA_20BB05,x                 ; $20:E083: BF 05 BB 20 ;
CODE_20E087:    LDX $8F                     ; $20:E087: A6 8F       ;
CODE_20E089:    CMP #$F0                    ; $20:E089: C9 F0       ;
CODE_20E08B:    BCC CODE_20E093             ; $20:E08B: 90 06       ;
CODE_20E08D:    SEC                         ; $20:E08D: 38          ;
CODE_20E08E:    SBC #$F0                    ; $20:E08E: E9 F0       ;
CODE_20E090:    TAX                         ; $20:E090: AA          ;
CODE_20E091:    LDA #$00                    ; $20:E091: A9 00       ;
CODE_20E093:    CLC                         ; $20:E093: 18          ;
CODE_20E094:    ADC.l DATA_20E06A,x                 ; $20:E094: 7F 6A E0 20 ;
CODE_20E098:    STA $01                     ; $20:E098: 85 01       ;
CODE_20E09A:    STZ $00                     ; $20:E09A: 64 00       ;
CODE_20E09C:    LDA.l DATA_20E076,x                 ; $20:E09C: BF 76 E0 20 ;
CODE_20E0A0:    BRA CODE_20E0C1             ; $20:E0A0: 80 1F       ;

CODE_20E0A2:    LDX $8D                     ; $20:E0A2: A6 8D       ;
CODE_20E0A4:    LDA.l DATA_20BB05,x                 ; $20:E0A4: BF 05 BB 20 ;
CODE_20E0A8:    LDX $8F                     ; $20:E0A8: A6 8F       ;
CODE_20E0AA:    CMP #$F0                    ; $20:E0AA: C9 F0       ;
CODE_20E0AC:    BCC CODE_20E0B4             ; $20:E0AC: 90 06       ;
CODE_20E0AE:    SEC                         ; $20:E0AE: 38          ;
CODE_20E0AF:    SBC #$F0                    ; $20:E0AF: E9 F0       ;
CODE_20E0B1:    TAX                         ; $20:E0B1: AA          ;
CODE_20E0B2:    LDA #$00                    ; $20:E0B2: A9 00       ;
CODE_20E0B4:    CLC                         ; $20:E0B4: 18          ;
CODE_20E0B5:    ADC.l DATA_20E064,x                 ; $20:E0B5: 7F 64 E0 20 ;
CODE_20E0B9:    STA $01                     ; $20:E0B9: 85 01       ;
CODE_20E0BB:    STZ $00                     ; $20:E0BB: 64 00       ;
CODE_20E0BD:    LDA.l DATA_20E070,x                 ; $20:E0BD: BF 70 E0 20 ;
CODE_20E0C1:    STA $0238                   ; $20:E0C1: 8D 38 02    ;
CODE_20E0C4:    LDA #$20                    ; $20:E0C4: A9 20       ;
CODE_20E0C6:    STA $06                     ; $20:E0C6: 85 06       ;
CODE_20E0C8:    REP #$30                    ; $20:E0C8: C2 30       ;
CODE_20E0CA:    LDA #$BA5D                  ; $20:E0CA: A9 5D BA    ;
CODE_20E0CD:    STA $04                     ; $20:E0CD: 85 04       ;
CODE_20E0CF:    LDA $8D                     ; $20:E0CF: A5 8D       ;
CODE_20E0D1:    AND #$00FF                  ; $20:E0D1: 29 FF 00    ;
CODE_20E0D4:    TAX                         ; $20:E0D4: AA          ;
CODE_20E0D5:    LDA.l DATA_20BA41,x                 ; $20:E0D5: BF 41 BA 20 ;
CODE_20E0D9:    AND #$00FF                  ; $20:E0D9: 29 FF 00    ;
CODE_20E0DC:    TAY                         ; $20:E0DC: A8          ;
CODE_20E0DD:    LDA [$04],y                 ; $20:E0DD: B7 04       ;
CODE_20E0DF:    AND #$00FF                  ; $20:E0DF: 29 FF 00    ;
CODE_20E0E2:    TAX                         ; $20:E0E2: AA          ;
CODE_20E0E3:    LDA.w DATA_2189E7,x                 ; $20:E0E3: BD E7 89    ;
CODE_20E0E6:    CLC                         ; $20:E0E6: 18          ;
CODE_20E0E7:    ADC $00                     ; $20:E0E7: 65 00       ;
CODE_20E0E9:    STA $0220                   ; $20:E0E9: 8D 20 02    ;
CODE_20E0EC:    INY                         ; $20:E0EC: C8          ;
CODE_20E0ED:    LDA [$04],y                 ; $20:E0ED: B7 04       ;
CODE_20E0EF:    AND #$00FF                  ; $20:E0EF: 29 FF 00    ;
CODE_20E0F2:    TAX                         ; $20:E0F2: AA          ;
CODE_20E0F3:    LDA.w DATA_2189E7,x                 ; $20:E0F3: BD E7 89    ;
CODE_20E0F6:    CLC                         ; $20:E0F6: 18          ;
CODE_20E0F7:    ADC $00                     ; $20:E0F7: 65 00       ;
CODE_20E0F9:    STA $0222                   ; $20:E0F9: 8D 22 02    ;
CODE_20E0FC:    INY                         ; $20:E0FC: C8          ;
CODE_20E0FD:    LDA [$04],y                 ; $20:E0FD: B7 04       ;
CODE_20E0FF:    AND #$00FF                  ; $20:E0FF: 29 FF 00    ;
CODE_20E102:    TAX                         ; $20:E102: AA          ;
CODE_20E103:    LDA.w DATA_2189E7,x                 ; $20:E103: BD E7 89    ;
CODE_20E106:    CLC                         ; $20:E106: 18          ;
CODE_20E107:    ADC $00                     ; $20:E107: 65 00       ;
CODE_20E109:    STA $0224                   ; $20:E109: 8D 24 02    ;
CODE_20E10C:    INY                         ; $20:E10C: C8          ;
CODE_20E10D:    LDA [$04],y                 ; $20:E10D: B7 04       ;
CODE_20E10F:    AND #$00FF                  ; $20:E10F: 29 FF 00    ;
CODE_20E112:    TAX                         ; $20:E112: AA          ;
CODE_20E113:    LDA.w DATA_2189E7,x                 ; $20:E113: BD E7 89    ;
CODE_20E116:    CLC                         ; $20:E116: 18          ;
CODE_20E117:    ADC $00                     ; $20:E117: 65 00       ;
CODE_20E119:    STA $0226                   ; $20:E119: 8D 26 02    ;
CODE_20E11C:    INY                         ; $20:E11C: C8          ;
CODE_20E11D:    LDA [$04],y                 ; $20:E11D: B7 04       ;
CODE_20E11F:    AND #$00FF                  ; $20:E11F: 29 FF 00    ;
CODE_20E122:    TAX                         ; $20:E122: AA          ;
CODE_20E123:    LDA.w DATA_2189E7,x                 ; $20:E123: BD E7 89    ;
CODE_20E126:    CLC                         ; $20:E126: 18          ;
CODE_20E127:    ADC $00                     ; $20:E127: 65 00       ;
CODE_20E129:    STA $0228                   ; $20:E129: 8D 28 02    ;
CODE_20E12C:    INY                         ; $20:E12C: C8          ;
CODE_20E12D:    LDA [$04],y                 ; $20:E12D: B7 04       ;
CODE_20E12F:    AND #$00FF                  ; $20:E12F: 29 FF 00    ;
CODE_20E132:    TAX                         ; $20:E132: AA          ;
CODE_20E133:    LDA.w DATA_2189E7,x                 ; $20:E133: BD E7 89    ;
CODE_20E136:    CLC                         ; $20:E136: 18          ;
CODE_20E137:    ADC $00                     ; $20:E137: 65 00       ;
CODE_20E139:    STA $022A                   ; $20:E139: 8D 2A 02    ;
CODE_20E13C:    SEP #$30                    ; $20:E13C: E2 30       ;
CODE_20E13E:    LDX $8E                     ; $20:E13E: A6 8E       ;
CODE_20E140:    LDA.l DATA_20BB05,x                 ; $20:E140: BF 05 BB 20 ;
CODE_20E144:    LDX $90                     ; $20:E144: A6 90       ;
CODE_20E146:    CMP #$F0                    ; $20:E146: C9 F0       ;
CODE_20E148:    BCC CODE_20E150             ; $20:E148: 90 06       ;
CODE_20E14A:    SEC                         ; $20:E14A: 38          ;
CODE_20E14B:    SBC #$F0                    ; $20:E14B: E9 F0       ;
CODE_20E14D:    TAX                         ; $20:E14D: AA          ;
CODE_20E14E:    LDA #$00                    ; $20:E14E: A9 00       ;
CODE_20E150:    CLC                         ; $20:E150: 18          ;
CODE_20E151:    ADC.l DATA_20E06A,x                 ; $20:E151: 7F 6A E0 20 ;
CODE_20E155:    STA $01                     ; $20:E155: 85 01       ;
CODE_20E157:    STZ $00                     ; $20:E157: 64 00       ;
CODE_20E159:    LDA.l DATA_20E076,x                 ; $20:E159: BF 76 E0 20 ;
CODE_20E15D:    STA $0239                   ; $20:E15D: 8D 39 02    ;
CODE_20E160:    REP #$30                    ; $20:E160: C2 30       ;
CODE_20E162:    LDA $8E                     ; $20:E162: A5 8E       ;
CODE_20E164:    AND #$00FF                  ; $20:E164: 29 FF 00    ;
CODE_20E167:    TAX                         ; $20:E167: AA          ;
CODE_20E168:    LDA.l DATA_20BA41,x                 ; $20:E168: BF 41 BA 20 ;
CODE_20E16C:    AND #$00FF                  ; $20:E16C: 29 FF 00    ;
CODE_20E16F:    TAY                         ; $20:E16F: A8          ;
CODE_20E170:    LDA [$04],y                 ; $20:E170: B7 04       ;
CODE_20E172:    AND #$00FF                  ; $20:E172: 29 FF 00    ;
CODE_20E175:    TAX                         ; $20:E175: AA          ;
CODE_20E176:    LDA.w DATA_2189E7,x                 ; $20:E176: BD E7 89    ;
CODE_20E179:    CLC                         ; $20:E179: 18          ;
CODE_20E17A:    ADC $00                     ; $20:E17A: 65 00       ;
CODE_20E17C:    STA $022C                   ; $20:E17C: 8D 2C 02    ;
CODE_20E17F:    INY                         ; $20:E17F: C8          ;
CODE_20E180:    LDA [$04],y                 ; $20:E180: B7 04       ;
CODE_20E182:    AND #$00FF                  ; $20:E182: 29 FF 00    ;
CODE_20E185:    TAX                         ; $20:E185: AA          ;
CODE_20E186:    LDA.w DATA_2189E7,x                 ; $20:E186: BD E7 89    ;
CODE_20E189:    CLC                         ; $20:E189: 18          ;
CODE_20E18A:    ADC $00                     ; $20:E18A: 65 00       ;
CODE_20E18C:    STA $022E                   ; $20:E18C: 8D 2E 02    ;
CODE_20E18F:    INY                         ; $20:E18F: C8          ;
CODE_20E190:    LDA [$04],y                 ; $20:E190: B7 04       ;
CODE_20E192:    AND #$00FF                  ; $20:E192: 29 FF 00    ;
CODE_20E195:    TAX                         ; $20:E195: AA          ;
CODE_20E196:    LDA.w DATA_2189E7,x                 ; $20:E196: BD E7 89    ;
CODE_20E199:    CLC                         ; $20:E199: 18          ;
CODE_20E19A:    ADC $00                     ; $20:E19A: 65 00       ;
CODE_20E19C:    STA $0230                   ; $20:E19C: 8D 30 02    ;
CODE_20E19F:    INY                         ; $20:E19F: C8          ;
CODE_20E1A0:    LDA [$04],y                 ; $20:E1A0: B7 04       ;
CODE_20E1A2:    AND #$00FF                  ; $20:E1A2: 29 FF 00    ;
CODE_20E1A5:    TAX                         ; $20:E1A5: AA          ;
CODE_20E1A6:    LDA.w DATA_2189E7,x                 ; $20:E1A6: BD E7 89    ;
CODE_20E1A9:    CLC                         ; $20:E1A9: 18          ;
CODE_20E1AA:    ADC $00                     ; $20:E1AA: 65 00       ;
CODE_20E1AC:    STA $0232                   ; $20:E1AC: 8D 32 02    ;
CODE_20E1AF:    INY                         ; $20:E1AF: C8          ;
CODE_20E1B0:    LDA [$04],y                 ; $20:E1B0: B7 04       ;
CODE_20E1B2:    AND #$00FF                  ; $20:E1B2: 29 FF 00    ;
CODE_20E1B5:    TAX                         ; $20:E1B5: AA          ;
CODE_20E1B6:    LDA.w DATA_2189E7,x                 ; $20:E1B6: BD E7 89    ;
CODE_20E1B9:    CLC                         ; $20:E1B9: 18          ;
CODE_20E1BA:    ADC $00                     ; $20:E1BA: 65 00       ;
CODE_20E1BC:    STA $0234                   ; $20:E1BC: 8D 34 02    ;
CODE_20E1BF:    INY                         ; $20:E1BF: C8          ;
CODE_20E1C0:    LDA [$04],y                 ; $20:E1C0: B7 04       ;
CODE_20E1C2:    AND #$00FF                  ; $20:E1C2: 29 FF 00    ;
CODE_20E1C5:    TAX                         ; $20:E1C5: AA          ;
CODE_20E1C6:    LDA.w DATA_2189E7,x                 ; $20:E1C6: BD E7 89    ;
CODE_20E1C9:    CLC                         ; $20:E1C9: 18          ;
CODE_20E1CA:    ADC $00                     ; $20:E1CA: 65 00       ;
CODE_20E1CC:    STA $0236                   ; $20:E1CC: 8D 36 02    ;
CODE_20E1CF:    SEP #$30                    ; $20:E1CF: E2 30       ;
CODE_20E1D1:    RTS                         ; $20:E1D1: 60          ;

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

CODE_20E237:    PHX                     ; $20:E237: DA          ;
CODE_20E238:    JSL CODE_22E000             ; $20:E238: 22 00 E0 22 ;
CODE_20E23C:    PLX                         ; $20:E23C: FA          ;
CODE_20E23D:    LDX $BC                     ; $20:E23D: A6 BC       ;
CODE_20E23F:    LDA $5E                     ; $20:E23F: A5 5E       ;
CODE_20E241:    STA $00                     ; $20:E241: 85 00       ;
CODE_20E243:    LDA $43                     ; $20:E243: A5 43       ;
CODE_20E245:    STA $01                     ; $20:E245: 85 01       ;
CODE_20E247:    REP #$20                    ; $20:E247: C2 20       ;
CODE_20E249:    LDA $00                     ; $20:E249: A5 00       ;
CODE_20E24B:    SEC                         ; $20:E24B: 38          ;
CODE_20E24C:    SBC $0210                   ; $20:E24C: ED 10 02    ;
CODE_20E24F:    STA $D8                     ; $20:E24F: 85 D8       ;
CODE_20E251:    CLC                         ; $20:E251: 18          ;
CODE_20E252:    ADC #$0008                  ; $20:E252: 69 08 00    ;
CODE_20E255:    STA $DA                     ; $20:E255: 85 DA       ;
CODE_20E257:    CLC                         ; $20:E257: 18          ;
CODE_20E258:    ADC #$0008                  ; $20:E258: 69 08 00    ;
CODE_20E25B:    STA $DC                     ; $20:E25B: 85 DC       ;
CODE_20E25D:    SEP #$20                    ; $20:E25D: E2 20       ;
CODE_20E25F:    LDA $D8                     ; $20:E25F: A5 D8       ;
CODE_20E261:    STA $79                     ; $20:E261: 85 79       ;
CODE_20E263:    LDA $0425                   ; $20:E263: AD 25 04    ;
CODE_20E266:    BEQ CODE_20E26E             ; $20:E266: F0 06       ;
CODE_20E268:    STZ $D9                     ; $20:E268: 64 D9       ;
CODE_20E26A:    STZ $DB                     ; $20:E26A: 64 DB       ;
CODE_20E26C:    STZ $DD                     ; $20:E26C: 64 DD       ;
CODE_20E26E:    LDA $70                     ; $20:E26E: A5 70       ;
CODE_20E270:    SEC                         ; $20:E270: 38          ;
CODE_20E271:    SBC $0543                   ; $20:E271: ED 43 05    ;
CODE_20E274:    STA $82                     ; $20:E274: 85 82       ;
CODE_20E276:    LDA $55                     ; $20:E276: A5 55       ;
CODE_20E278:    SBC $0542                   ; $20:E278: ED 42 05    ;
CODE_20E27B:    STA $0544                   ; $20:E27B: 8D 44 05    ;
CODE_20E27E:    LDA $0552                   ; $20:E27E: AD 52 05    ;
CODE_20E281:    BEQ CODE_20E28D             ; $20:E281: F0 0A       ;
CODE_20E283:    DEC $0552                   ; $20:E283: CE 52 05    ;
CODE_20E286:    AND #$02                    ; $20:E286: 29 02       ;
CODE_20E288:    BEQ CODE_20E28D             ; $20:E288: F0 03       ;
CODE_20E28A:    JMP CODE_20E5EA             ; $20:E28A: 4C EA E5    ;
CODE_20E28D:    LDA $0555                   ; $20:E28D: AD 55 05    ;
CODE_20E290:    BNE CODE_20E2A0             ; $20:E290: D0 0E       ;
CODE_20E292:    LDA $0553                   ; $20:E292: AD 53 05    ;
CODE_20E295:    BEQ CODE_20E2C1             ; $20:E295: F0 2A       ;
CODE_20E297:    LDA $15                     ; $20:E297: A5 15       ;
CODE_20E299:    AND #$01                    ; $20:E299: 29 01       ;
CODE_20E29B:    BEQ CODE_20E2A0             ; $20:E29B: F0 03       ;
CODE_20E29D:    DEC $0553                   ; $20:E29D: CE 53 05    ;
CODE_20E2A0:    LDA $15                     ; $20:E2A0: A5 15       ;
CODE_20E2A2:    AND #$0F                    ; $20:E2A2: 29 0F       ;
CODE_20E2A4:    LDY $0555                   ; $20:E2A4: AC 55 05    ;
CODE_20E2A7:    BNE CODE_20E2BD             ; $20:E2A7: D0 14       ;
CODE_20E2A9:    LDY $0553                   ; $20:E2A9: AC 53 05    ;
CODE_20E2AC:    CPY #$20                    ; $20:E2AC: C0 20       ;
CODE_20E2AE:    BNE CODE_20E2BB             ; $20:E2AE: D0 0B       ;
CODE_20E2B0:    LDY $0567                   ; $20:E2B0: AC 67 05    ;
CODE_20E2B3:    BNE CODE_20E2BB             ; $20:E2B3: D0 06       ;
CODE_20E2B5:    LDY $1062                   ; $20:E2B5: AC 62 10    ;
CODE_20E2B8:    STY $1202                   ; $20:E2B8: 8C 02 12    ;
CODE_20E2BB:    BCS CODE_20E2BF                     ; $20:E2BB: B0 02       ;
CODE_20E2BD:    LSR A                       ; $20:E2BD: 4A          ;
CODE_20E2BE:    LSR A                       ; $20:E2BE: 4A          ;
CODE_20E2BF:    AND #$03                    ; $20:E2BF: 29 03       ;
CODE_20E2C1:    ASL A                       ; $20:E2C1: 0A          ;
CODE_20E2C2:    ORA #$20                    ; $20:E2C2: 09 20       ;
CODE_20E2C4:    CMP #$20                    ; $20:E2C4: C9 20       ;
CODE_20E2C6:    BNE CODE_20E2CA             ; $20:E2C6: D0 02       ;
CODE_20E2C8:    ORA #$0E                    ; $20:E2C8: 09 0E       ;
CODE_20E2CA:    STA $00                     ; $20:E2CA: 85 00       ;
CODE_20E2CC:    LDA $0553                   ; $20:E2CC: AD 53 05    ;
CODE_20E2CF:    BEQ CODE_20E2DD             ; $20:E2CF: F0 0C       ;
CODE_20E2D1:    JSL CODE_29CD83             ; $20:E2D1: 22 83 CD 29 ;
CODE_20E2D5:    LDA $00                     ; $20:E2D5: A5 00       ;
CODE_20E2D7:    AND #$F1                    ; $20:E2D7: 29 F1       ;
CODE_20E2D9:    ORA #$0E                    ; $20:E2D9: 09 0E       ;
CODE_20E2DB:    STA $00                     ; $20:E2DB: 85 00       ;
CODE_20E2DD:    LDA $0588                   ; $20:E2DD: AD 88 05    ;
CODE_20E2E0:    ORA $058A                   ; $20:E2E0: 0D 8A 05    ;
CODE_20E2E3:    BEQ CODE_20E2ED             ; $20:E2E3: F0 08       ;
CODE_20E2E5:    LDA $00                     ; $20:E2E5: A5 00       ;
CODE_20E2E7:    AND #$CF                    ; $20:E2E7: 29 CF       ;
CODE_20E2E9:    ORA #$10                    ; $20:E2E9: 09 10       ;
CODE_20E2EB:    STA $00                     ; $20:E2EB: 85 00       ;
CODE_20E2ED:    REP #$10                    ; $20:E2ED: C2 10       ;
CODE_20E2EF:    LDX $C4                     ; $20:E2EF: A6 C4       ;
CODE_20E2F1:    LDA #$00                    ; $20:E2F1: A9 00       ;
CODE_20E2F3:    STA $081A,x                 ; $20:E2F3: 9D 1A 08    ;
CODE_20E2F6:    INC A                       ; $20:E2F6: 1A          ;
CODE_20E2F7:    STA $081E,x                 ; $20:E2F7: 9D 1E 08    ;
CODE_20E2FA:    INC A                       ; $20:E2FA: 1A          ;
CODE_20E2FB:    STA $0822,x                 ; $20:E2FB: 9D 22 08    ;
CODE_20E2FE:    INC A                       ; $20:E2FE: 1A          ;
CODE_20E2FF:    STA $0826,x                 ; $20:E2FF: 9D 26 08    ;
CODE_20E302:    INC A                       ; $20:E302: 1A          ;
CODE_20E303:    STA $082A,x                 ; $20:E303: 9D 2A 08    ;
CODE_20E306:    INC A                       ; $20:E306: 1A          ;
CODE_20E307:    STA $082E,x                 ; $20:E307: 9D 2E 08    ;
CODE_20E30A:    INC A                       ; $20:E30A: 1A          ;
CODE_20E30B:    STA $0802,x                 ; $20:E30B: 9D 02 08    ;
CODE_20E30E:    INC A                       ; $20:E30E: 1A          ;
CODE_20E30F:    STA $0806,x                 ; $20:E30F: 9D 06 08    ;
CODE_20E312:    INC A                       ; $20:E312: 1A          ;
CODE_20E313:    STA $080A,x                 ; $20:E313: 9D 0A 08    ;
CODE_20E316:    INC A                       ; $20:E316: 1A          ;
CODE_20E317:    STA $080E,x                 ; $20:E317: 9D 0E 08    ;
CODE_20E31A:    INC A                       ; $20:E31A: 1A          ;
CODE_20E31B:    STA $0812,x                 ; $20:E31B: 9D 12 08    ;
CODE_20E31E:    INC A                       ; $20:E31E: 1A          ;
CODE_20E31F:    STA $0816,x                 ; $20:E31F: 9D 16 08    ;
CODE_20E322:    LDA $BD                     ; $20:E322: A5 BD       ;
CODE_20E324:    AND #$C0                    ; $20:E324: 29 C0       ;
CODE_20E326:    ORA $00                     ; $20:E326: 05 00       ;
CODE_20E328:    STA $0803,x                 ; $20:E328: 9D 03 08    ;
CODE_20E32B:    STA $0807,x                 ; $20:E32B: 9D 07 08    ;
CODE_20E32E:    STA $080B,x                 ; $20:E32E: 9D 0B 08    ;
CODE_20E331:    STA $080F,x                 ; $20:E331: 9D 0F 08    ;
CODE_20E334:    STA $0813,x                 ; $20:E334: 9D 13 08    ;
CODE_20E337:    STA $0817,x                 ; $20:E337: 9D 17 08    ;
CODE_20E33A:    STA $081B,x                 ; $20:E33A: 9D 1B 08    ;
CODE_20E33D:    STA $081F,x                 ; $20:E33D: 9D 1F 08    ;
CODE_20E340:    STA $0823,x                 ; $20:E340: 9D 23 08    ;
CODE_20E343:    STA $0827,x                 ; $20:E343: 9D 27 08    ;
CODE_20E346:    STA $082B,x                 ; $20:E346: 9D 2B 08    ;
CODE_20E349:    STA $082F,x                 ; $20:E349: 9D 2F 08    ;
CODE_20E34C:    REP #$20                    ; $20:E34C: C2 20       ;
CODE_20E34E:    LDA $0226                   ; $20:E34E: AD 26 02    ;
CODE_20E351:    CMP $0228                   ; $20:E351: CD 28 02    ;
CODE_20E354:    BNE CODE_20E377             ; $20:E354: D0 21       ;
CODE_20E356:    SEP #$20                    ; $20:E356: E2 20       ;
CODE_20E358:    LDA $081B,x                 ; $20:E358: BD 1B 08    ;
CODE_20E35B:    AND #$BF                    ; $20:E35B: 29 BF       ;
CODE_20E35D:    STA $081B,x                 ; $20:E35D: 9D 1B 08    ;
CODE_20E360:    STA $081F,x                 ; $20:E360: 9D 1F 08    ;
CODE_20E363:    STA $0803,x                 ; $20:E363: 9D 03 08    ;
CODE_20E366:    STA $0807,x                 ; $20:E366: 9D 07 08    ;
CODE_20E369:    ORA #$40                    ; $20:E369: 09 40       ;
CODE_20E36B:    STA $080B,x                 ; $20:E36B: 9D 0B 08    ;
CODE_20E36E:    STA $080F,x                 ; $20:E36E: 9D 0F 08    ;
CODE_20E371:    STA $0823,x                 ; $20:E371: 9D 23 08    ;
CODE_20E374:    STA $0827,x                 ; $20:E374: 9D 27 08    ;
CODE_20E377:    SEP #$20                    ; $20:E377: E2 20       ;
CODE_20E379:    LDA $82                     ; $20:E379: A5 82       ;
CODE_20E37B:    STA $0819,x                 ; $20:E37B: 9D 19 08    ;
CODE_20E37E:    STA $0821,x                 ; $20:E37E: 9D 21 08    ;
CODE_20E381:    STA $0829,x                 ; $20:E381: 9D 29 08    ;
CODE_20E384:    CLC                         ; $20:E384: 18          ;
CODE_20E385:    ADC #$08                    ; $20:E385: 69 08       ;
CODE_20E387:    STA $081D,x                 ; $20:E387: 9D 1D 08    ;
CODE_20E38A:    STA $0825,x                 ; $20:E38A: 9D 25 08    ;
CODE_20E38D:    STA $082D,x                 ; $20:E38D: 9D 2D 08    ;
CODE_20E390:    CLC                         ; $20:E390: 18          ;
CODE_20E391:    ADC #$08                    ; $20:E391: 69 08       ;
CODE_20E393:    STA $0801,x                 ; $20:E393: 9D 01 08    ;
CODE_20E396:    STA $0809,x                 ; $20:E396: 9D 09 08    ;
CODE_20E399:    STA $0811,x                 ; $20:E399: 9D 11 08    ;
CODE_20E39C:    CLC                         ; $20:E39C: 18          ;
CODE_20E39D:    ADC #$08                    ; $20:E39D: 69 08       ;
CODE_20E39F:    STA $0805,x                 ; $20:E39F: 9D 05 08    ;
CODE_20E3A2:    STA $080D,x                 ; $20:E3A2: 9D 0D 08    ;
CODE_20E3A5:    STA $0815,x                 ; $20:E3A5: 9D 15 08    ;
CODE_20E3A8:    LDA $79                     ; $20:E3A8: A5 79       ;
CODE_20E3AA:    STA $0800,x                 ; $20:E3AA: 9D 00 08    ;
CODE_20E3AD:    STA $0804,x                 ; $20:E3AD: 9D 04 08    ;
CODE_20E3B0:    STA $0818,x                 ; $20:E3B0: 9D 18 08    ;
CODE_20E3B3:    STA $081C,x                 ; $20:E3B3: 9D 1C 08    ;
CODE_20E3B6:    CLC                         ; $20:E3B6: 18          ;
CODE_20E3B7:    ADC #$08                    ; $20:E3B7: 69 08       ;
CODE_20E3B9:    STA $0808,x                 ; $20:E3B9: 9D 08 08    ;
CODE_20E3BC:    STA $080C,x                 ; $20:E3BC: 9D 0C 08    ;
CODE_20E3BF:    STA $0820,x                 ; $20:E3BF: 9D 20 08    ;
CODE_20E3C2:    STA $0824,x                 ; $20:E3C2: 9D 24 08    ;
CODE_20E3C5:    CLC                         ; $20:E3C5: 18          ;
CODE_20E3C6:    ADC #$08                    ; $20:E3C6: 69 08       ;
CODE_20E3C8:    STA $0810,x                 ; $20:E3C8: 9D 10 08    ;
CODE_20E3CB:    STA $0814,x                 ; $20:E3CB: 9D 14 08    ;
CODE_20E3CE:    STA $0828,x                 ; $20:E3CE: 9D 28 08    ;
CODE_20E3D1:    STA $082C,x                 ; $20:E3D1: 9D 2C 08    ;
CODE_20E3D4:    PHX                         ; $20:E3D4: DA          ;
CODE_20E3D5:    REP #$20                    ; $20:E3D5: C2 20       ;
CODE_20E3D7:    TXA                         ; $20:E3D7: 8A          ;
CODE_20E3D8:    LSR A                       ; $20:E3D8: 4A          ;
CODE_20E3D9:    LSR A                       ; $20:E3D9: 4A          ;
CODE_20E3DA:    TAX                         ; $20:E3DA: AA          ;
CODE_20E3DB:    SEP #$20                    ; $20:E3DB: E2 20       ;
CODE_20E3DD:    LDA $D9                     ; $20:E3DD: A5 D9       ;
CODE_20E3DF:    AND #$01                    ; $20:E3DF: 29 01       ;
CODE_20E3E1:    STA $0A20,x                 ; $20:E3E1: 9D 20 0A    ;
CODE_20E3E4:    STA $0A21,x                 ; $20:E3E4: 9D 21 0A    ;
CODE_20E3E7:    STA $0A26,x                 ; $20:E3E7: 9D 26 0A    ;
CODE_20E3EA:    STA $0A27,x                 ; $20:E3EA: 9D 27 0A    ;
CODE_20E3ED:    LDA $DB                     ; $20:E3ED: A5 DB       ;
CODE_20E3EF:    AND #$01                    ; $20:E3EF: 29 01       ;
CODE_20E3F1:    STA $0A22,x                 ; $20:E3F1: 9D 22 0A    ;
CODE_20E3F4:    STA $0A23,x                 ; $20:E3F4: 9D 23 0A    ;
CODE_20E3F7:    STA $0A28,x                 ; $20:E3F7: 9D 28 0A    ;
CODE_20E3FA:    STA $0A29,x                 ; $20:E3FA: 9D 29 0A    ;
CODE_20E3FD:    LDA $DD                     ; $20:E3FD: A5 DD       ;
CODE_20E3FF:    AND #$01                    ; $20:E3FF: 29 01       ;
CODE_20E401:    STA $0A24,x                 ; $20:E401: 9D 24 0A    ;
CODE_20E404:    STA $0A25,x                 ; $20:E404: 9D 25 0A    ;
CODE_20E407:    STA $0A2A,x                 ; $20:E407: 9D 2A 0A    ;
CODE_20E40A:    STA $0A2B,x                 ; $20:E40A: 9D 2B 0A    ;
CODE_20E40D:    PLX                         ; $20:E40D: FA          ;
CODE_20E40E:    LDA $BD                     ; $20:E40E: A5 BD       ;
CODE_20E410:    AND #$40                    ; $20:E410: 29 40       ;
CODE_20E412:    BNE CODE_20E417             ; $20:E412: D0 03       ;
CODE_20E414:    BRL CODE_20E4C3             ; $20:E414: 82 AC 00    ;

CODE_20E417:    LDA $0802,x                 ; $20:E417: BD 02 08    ;
CODE_20E41A:    PHA                         ; $20:E41A: 48          ;
CODE_20E41B:    LDA $080A,x                 ; $20:E41B: BD 0A 08    ;
CODE_20E41E:    STA $0802,x                 ; $20:E41E: 9D 02 08    ;
CODE_20E421:    PLA                         ; $20:E421: 68          ;
CODE_20E422:    STA $080A,x                 ; $20:E422: 9D 0A 08    ;
CODE_20E425:    LDA $0806,x                 ; $20:E425: BD 06 08    ;
CODE_20E428:    PHA                         ; $20:E428: 48          ;
CODE_20E429:    LDA $080E,x                 ; $20:E429: BD 0E 08    ;
CODE_20E42C:    STA $0806,x                 ; $20:E42C: 9D 06 08    ;
CODE_20E42F:    PLA                         ; $20:E42F: 68          ;
CODE_20E430:    STA $080E,x                 ; $20:E430: 9D 0E 08    ;
CODE_20E433:    LDA $0810,x                 ; $20:E433: BD 10 08    ;
CODE_20E436:    CLC                         ; $20:E436: 18          ;
CODE_20E437:    ADC #$E8                    ; $20:E437: 69 E8       ;
CODE_20E439:    STA $0810,x                 ; $20:E439: 9D 10 08    ;
CODE_20E43C:    STA $0814,x                 ; $20:E43C: 9D 14 08    ;
CODE_20E43F:    STA $0828,x                 ; $20:E43F: 9D 28 08    ;
CODE_20E442:    STA $082C,x                 ; $20:E442: 9D 2C 08    ;
CODE_20E445:    LDA $0425                   ; $20:E445: AD 25 04    ;
CODE_20E448:    BNE CODE_20E46C             ; $20:E448: D0 22       ;
CODE_20E44A:    PHX                         ; $20:E44A: DA          ;
CODE_20E44B:    REP #$20                    ; $20:E44B: C2 20       ;
CODE_20E44D:    LDA $DC                     ; $20:E44D: A5 DC       ;
CODE_20E44F:    SEC                         ; $20:E44F: 38          ;
CODE_20E450:    SBC #$0018                  ; $20:E450: E9 18 00    ;
CODE_20E453:    STA $DC                     ; $20:E453: 85 DC       ;
CODE_20E455:    TXA                         ; $20:E455: 8A          ;
CODE_20E456:    LSR A                       ; $20:E456: 4A          ;
CODE_20E457:    LSR A                       ; $20:E457: 4A          ;
CODE_20E458:    TAX                         ; $20:E458: AA          ;
CODE_20E459:    SEP #$20                    ; $20:E459: E2 20       ;
CODE_20E45B:    LDA $DD                     ; $20:E45B: A5 DD       ;
CODE_20E45D:    AND #$01                    ; $20:E45D: 29 01       ;
CODE_20E45F:    STA $0A24,x                 ; $20:E45F: 9D 24 0A    ;
CODE_20E462:    STA $0A25,x                 ; $20:E462: 9D 25 0A    ;
CODE_20E465:    STA $0A2A,x                 ; $20:E465: 9D 2A 0A    ;
CODE_20E468:    STA $0A2B,x                 ; $20:E468: 9D 2B 0A    ;
CODE_20E46B:    PLX                         ; $20:E46B: FA          ;
CODE_20E46C:    LDA $081A,x                 ; $20:E46C: BD 1A 08    ;
CODE_20E46F:    PHA                         ; $20:E46F: 48          ;
CODE_20E470:    LDA $0822,x                 ; $20:E470: BD 22 08    ;
CODE_20E473:    STA $081A,x                 ; $20:E473: 9D 1A 08    ;
CODE_20E476:    PLA                         ; $20:E476: 68          ;
CODE_20E477:    STA $0822,x                 ; $20:E477: 9D 22 08    ;
CODE_20E47A:    LDA $081E,x                 ; $20:E47A: BD 1E 08    ;
CODE_20E47D:    PHA                         ; $20:E47D: 48          ;
CODE_20E47E:    LDA $0826,x                 ; $20:E47E: BD 26 08    ;
CODE_20E481:    STA $081E,x                 ; $20:E481: 9D 1E 08    ;
CODE_20E484:    PLA                         ; $20:E484: 68          ;
CODE_20E485:    STA $0826,x                 ; $20:E485: 9D 26 08    ;
CODE_20E488:    LDA $054F                   ; $20:E488: AD 4F 05    ;
CODE_20E48B:    BEQ CODE_20E4C3             ; $20:E48B: F0 36       ;
CODE_20E48D:    LDA $0800,x                 ; $20:E48D: BD 00 08    ;
CODE_20E490:    CLC                         ; $20:E490: 18          ;
CODE_20E491:    ADC #$08                    ; $20:E491: 69 08       ;
CODE_20E493:    STA $0800,x                 ; $20:E493: 9D 00 08    ;
CODE_20E496:    STA $0804,x                 ; $20:E496: 9D 04 08    ;
CODE_20E499:    STA $0818,x                 ; $20:E499: 9D 18 08    ;
CODE_20E49C:    STA $081C,x                 ; $20:E49C: 9D 1C 08    ;
CODE_20E49F:    LDA $0808,x                 ; $20:E49F: BD 08 08    ;
CODE_20E4A2:    CLC                         ; $20:E4A2: 18          ;
CODE_20E4A3:    ADC #$08                    ; $20:E4A3: 69 08       ;
CODE_20E4A5:    STA $0808,x                 ; $20:E4A5: 9D 08 08    ;
CODE_20E4A8:    STA $080C,x                 ; $20:E4A8: 9D 0C 08    ;
CODE_20E4AB:    STA $0820,x                 ; $20:E4AB: 9D 20 08    ;
CODE_20E4AE:    STA $0824,x                 ; $20:E4AE: 9D 24 08    ;
CODE_20E4B1:    LDA $0810,x                 ; $20:E4B1: BD 10 08    ;
CODE_20E4B4:    CLC                         ; $20:E4B4: 18          ;
CODE_20E4B5:    ADC #$08                    ; $20:E4B5: 69 08       ;
CODE_20E4B7:    STA $0810,x                 ; $20:E4B7: 9D 10 08    ;
CODE_20E4BA:    STA $0814,x                 ; $20:E4BA: 9D 14 08    ;
CODE_20E4BD:    STA $0828,x                 ; $20:E4BD: 9D 28 08    ;
CODE_20E4C0:    STA $082C,x                 ; $20:E4C0: 9D 2C 08    ;
CODE_20E4C3:    LDA $0577                   ; $20:E4C3: AD 77 05    ;
CODE_20E4C6:    BNE CODE_20E4CB             ; $20:E4C6: D0 03       ;
CODE_20E4C8:    BRL CODE_20E559             ; $20:E4C8: 82 8E 00    ;

CODE_20E4CB:    LDY #$0000                  ; $20:E4CB: A0 00 00    ;
CODE_20E4CE:    LDA $BB                     ; $20:E4CE: A5 BB       ;
CODE_20E4D0:    BNE CODE_20E4D5             ; $20:E4D0: D0 03       ;
CODE_20E4D2:    LDY #$0006                  ; $20:E4D2: A0 06 00    ;
CODE_20E4D5:    STY $00                     ; $20:E4D5: 84 00       ;
CODE_20E4D7:    LDA $A6                     ; $20:E4D7: A5 A6       ;
CODE_20E4D9:    BEQ CODE_20E4EE             ; $20:E4D9: F0 13       ;
CODE_20E4DB:    LDA $9D                     ; $20:E4DB: A5 9D       ;
CODE_20E4DD:    BPL CODE_20E4E1             ; $20:E4DD: 10 02       ;
CODE_20E4DF:    EOR #$FF                    ; $20:E4DF: 49 FF       ;
CODE_20E4E1:    LSR A                       ; $20:E4E1: 4A          ;
CODE_20E4E2:    LSR A                       ; $20:E4E2: 4A          ;
CODE_20E4E3:    LSR A                       ; $20:E4E3: 4A          ;
CODE_20E4E4:    LSR A                       ; $20:E4E4: 4A          ;
CODE_20E4E5:    SEC                         ; $20:E4E5: 38          ;
CODE_20E4E6:    SBC #$03                    ; $20:E4E6: E9 03       ;
CODE_20E4E8:    EOR #$FF                    ; $20:E4E8: 49 FF       ;
CODE_20E4EA:    BPL CODE_20E4EE             ; $20:E4EA: 10 02       ;
CODE_20E4EC:    LDA #$00                    ; $20:E4EC: A9 00       ;
CODE_20E4EE:    CLC                         ; $20:E4EE: 18          ;
CODE_20E4EF:    ADC $00                     ; $20:E4EF: 65 00       ;
CODE_20E4F1:    CLC                         ; $20:E4F1: 18          ;
CODE_20E4F2:    ADC $82                     ; $20:E4F2: 65 82       ;
CODE_20E4F4:    STA $0819,x                 ; $20:E4F4: 9D 19 08    ;
CODE_20E4F7:    STA $0821,x                 ; $20:E4F7: 9D 21 08    ;
CODE_20E4FA:    STA $0829,x                 ; $20:E4FA: 9D 29 08    ;
CODE_20E4FD:    CLC                         ; $20:E4FD: 18          ;
CODE_20E4FE:    ADC #$08                    ; $20:E4FE: 69 08       ;
CODE_20E500:    STA $081D,x                 ; $20:E500: 9D 1D 08    ;
CODE_20E503:    STA $0825,x                 ; $20:E503: 9D 25 08    ;
CODE_20E506:    STA $082D,x                 ; $20:E506: 9D 2D 08    ;
CODE_20E509:    LDA #$28                    ; $20:E509: A9 28       ;
CODE_20E50B:    STA $0802,x                 ; $20:E50B: 9D 02 08    ;
CODE_20E50E:    LDA #$29                    ; $20:E50E: A9 29       ;
CODE_20E510:    STA $0806,x                 ; $20:E510: 9D 06 08    ;
CODE_20E513:    LDY #$002A                  ; $20:E513: A0 2A 00    ;
CODE_20E516:    LDA $15                     ; $20:E516: A5 15       ;
CODE_20E518:    AND #$08                    ; $20:E518: 29 08       ;
CODE_20E51A:    BEQ CODE_20E51E             ; $20:E51A: F0 02       ;
CODE_20E51C:    INY                         ; $20:E51C: C8          ;
CODE_20E51D:    INY                         ; $20:E51D: C8          ;
CODE_20E51E:    TYA                         ; $20:E51E: 98          ;
CODE_20E51F:    STA $080A,x                 ; $20:E51F: 9D 0A 08    ;
CODE_20E522:    INC A                       ; $20:E522: 1A          ;
CODE_20E523:    STA $080E,x                 ; $20:E523: 9D 0E 08    ;
CODE_20E526:    LDA $0803,x                 ; $20:E526: BD 03 08    ;
CODE_20E529:    AND #$F0                    ; $20:E529: 29 F0       ;
CODE_20E52B:    ORA #$05                    ; $20:E52B: 09 05       ;
CODE_20E52D:    STA $0803,x                 ; $20:E52D: 9D 03 08    ;
CODE_20E530:    STA $0807,x                 ; $20:E530: 9D 07 08    ;
CODE_20E533:    STA $080B,x                 ; $20:E533: 9D 0B 08    ;
CODE_20E536:    STA $080F,x                 ; $20:E536: 9D 0F 08    ;
CODE_20E539:    AND #$40                    ; $20:E539: 29 40       ;
CODE_20E53B:    BEQ CODE_20E559             ; $20:E53B: F0 1C       ;
CODE_20E53D:    LDA $080A,x                 ; $20:E53D: BD 0A 08    ;
CODE_20E540:    PHA                         ; $20:E540: 48          ;
CODE_20E541:    LDA $0802,x                 ; $20:E541: BD 02 08    ;
CODE_20E544:    STA $080A,x                 ; $20:E544: 9D 0A 08    ;
CODE_20E547:    PLA                         ; $20:E547: 68          ;
CODE_20E548:    STA $0802,x                 ; $20:E548: 9D 02 08    ;
CODE_20E54B:    LDA $080E,x                 ; $20:E54B: BD 0E 08    ;
CODE_20E54E:    PHA                         ; $20:E54E: 48          ;
CODE_20E54F:    LDA $0806,x                 ; $20:E54F: BD 06 08    ;
CODE_20E552:    STA $080E,x                 ; $20:E552: 9D 0E 08    ;
CODE_20E555:    PLA                         ; $20:E555: 68          ;
CODE_20E556:    STA $0806,x                 ; $20:E556: 9D 06 08    ;
CODE_20E559:    LDA $BC                     ; $20:E559: A5 BC       ;
CODE_20E55B:    CMP #$5A                    ; $20:E55B: C9 5A       ;
CODE_20E55D:    BNE CODE_20E5B4             ; $20:E55D: D0 55       ;
CODE_20E55F:    LDA $054F                   ; $20:E55F: AD 4F 05    ;
CODE_20E562:    BNE CODE_20E5B4             ; $20:E562: D0 50       ;
CODE_20E564:    LDA $0801,x                 ; $20:E564: BD 01 08    ;
CODE_20E567:    STA $0829,x                 ; $20:E567: 9D 29 08    ;
CODE_20E56A:    LDA $0805,x                 ; $20:E56A: BD 05 08    ;
CODE_20E56D:    STA $082D,x                 ; $20:E56D: 9D 2D 08    ;
CODE_20E570:    REP #$20                    ; $20:E570: C2 20       ;
CODE_20E572:    LDA $BD                     ; $20:E572: A5 BD       ;
CODE_20E574:    AND #$00FF                  ; $20:E574: 29 FF 00    ;
CODE_20E577:    TAY                         ; $20:E577: A8          ;
CODE_20E578:    SEP #$20                    ; $20:E578: E2 20       ;
CODE_20E57A:    LDA #$F8                    ; $20:E57A: A9 F8       ;
CODE_20E57C:    CPY #$0000                  ; $20:E57C: C0 00 00    ;
CODE_20E57F:    BEQ CODE_20E583             ; $20:E57F: F0 02       ;
CODE_20E581:    LDA #$10                    ; $20:E581: A9 10       ;
CODE_20E583:    CLC                         ; $20:E583: 18          ;
CODE_20E584:    ADC $0818,x                 ; $20:E584: 7D 18 08    ;
CODE_20E587:    STA $0828,x                 ; $20:E587: 9D 28 08    ;
CODE_20E58A:    STA $082C,x                 ; $20:E58A: 9D 2C 08    ;
CODE_20E58D:    PHX                         ; $20:E58D: DA          ;
CODE_20E58E:    REP #$20                    ; $20:E58E: C2 20       ;
CODE_20E590:    LDA $BB                     ; $20:E590: A5 BB       ;
CODE_20E592:    AND #$00FF                  ; $20:E592: 29 FF 00    ;
CODE_20E595:    TAX                         ; $20:E595: AA          ;
CODE_20E596:    SEP #$20                    ; $20:E596: E2 20       ;
CODE_20E598:    LDA.l DATA_20E230,x                 ; $20:E598: BF 30 E2 20 ;
CODE_20E59C:    PLX                         ; $20:E59C: FA          ;
CODE_20E59D:    STA $082A,x                 ; $20:E59D: 9D 2A 08    ;
CODE_20E5A0:    INC A                       ; $20:E5A0: 1A          ;
CODE_20E5A1:    STA $082E,x                 ; $20:E5A1: 9D 2E 08    ;
CODE_20E5A4:    LDA $081B,x                 ; $20:E5A4: BD 1B 08    ;
CODE_20E5A7:    ORA #$01                    ; $20:E5A7: 09 01       ;
CODE_20E5A9:    STA $082B,x                 ; $20:E5A9: 9D 2B 08    ;
CODE_20E5AC:    LDA $081F,x                 ; $20:E5AC: BD 1F 08    ;
CODE_20E5AF:    ORA #$01                    ; $20:E5AF: 09 01       ;
CODE_20E5B1:    STA $082F,x                 ; $20:E5B1: 9D 2F 08    ;
CODE_20E5B4:    LDA $BD                     ; $20:E5B4: A5 BD       ;
CODE_20E5B6:    AND #$80                    ; $20:E5B6: 29 80       ;
CODE_20E5B8:    BEQ CODE_20E5EA             ; $20:E5B8: F0 30       ;
CODE_20E5BA:    LDA $0801,x                 ; $20:E5BA: BD 01 08    ;
CODE_20E5BD:    STA $081D,x                 ; $20:E5BD: 9D 1D 08    ;
CODE_20E5C0:    STA $0825,x                 ; $20:E5C0: 9D 25 08    ;
CODE_20E5C3:    STA $082D,x                 ; $20:E5C3: 9D 2D 08    ;
CODE_20E5C6:    CLC                         ; $20:E5C6: 18          ;
CODE_20E5C7:    ADC #$F8                    ; $20:E5C7: 69 F8       ;
CODE_20E5C9:    STA $0801,x                 ; $20:E5C9: 9D 01 08    ;
CODE_20E5CC:    STA $0809,x                 ; $20:E5CC: 9D 09 08    ;
CODE_20E5CF:    STA $0811,x                 ; $20:E5CF: 9D 11 08    ;
CODE_20E5D2:    LDA $0805,x                 ; $20:E5D2: BD 05 08    ;
CODE_20E5D5:    STA $0819,x                 ; $20:E5D5: 9D 19 08    ;
CODE_20E5D8:    STA $0821,x                 ; $20:E5D8: 9D 21 08    ;
CODE_20E5DB:    STA $0829,x                 ; $20:E5DB: 9D 29 08    ;
CODE_20E5DE:    CLC                         ; $20:E5DE: 18          ;
CODE_20E5DF:    ADC #$E8                    ; $20:E5DF: 69 E8       ;
CODE_20E5E1:    STA $0805,x                 ; $20:E5E1: 9D 05 08    ;
CODE_20E5E4:    STA $080D,x                 ; $20:E5E4: 9D 0D 08    ;
CODE_20E5E7:    STA $0815,x                 ; $20:E5E7: 9D 15 08    ;
CODE_20E5EA:    REP #$10                    ; $20:E5EA: C2 10       ;
CODE_20E5EC:    STZ $0583                   ; $20:E5EC: 9C 83 05    ;
CODE_20E5EF:    LDY #$00F0                  ; $20:E5EF: A0 F0 00    ;
CODE_20E5F2:    LDA $0544                   ; $20:E5F2: AD 44 05    ;
CODE_20E5F5:    BPL CODE_20E63A             ; $20:E5F5: 10 43       ;
CODE_20E5F7:    LDA $82                     ; $20:E5F7: A5 82       ;
CODE_20E5F9:    CLC                         ; $20:E5F9: 18          ;
CODE_20E5FA:    ADC #$10                    ; $20:E5FA: 69 10       ;
CODE_20E5FC:    LDA #$00                    ; $20:E5FC: A9 00       ;
CODE_20E5FE:    ADC $0544                   ; $20:E5FE: 6D 44 05    ;
CODE_20E601:    BEQ CODE_20E638             ; $20:E601: F0 35       ;
CODE_20E603:    INC $0583                   ; $20:E603: EE 83 05    ;
CODE_20E606:    TYA                         ; $20:E606: 98          ;
CODE_20E607:    STA $0819,x                 ; $20:E607: 9D 19 08    ;
CODE_20E60A:    STA $0821,x                 ; $20:E60A: 9D 21 08    ;
CODE_20E60D:    STA $0829,x                 ; $20:E60D: 9D 29 08    ;
CODE_20E610:    STA $081D,x                 ; $20:E610: 9D 1D 08    ;
CODE_20E613:    STA $0825,x                 ; $20:E613: 9D 25 08    ;
CODE_20E616:    STA $082D,x                 ; $20:E616: 9D 2D 08    ;
CODE_20E619:    LDA $82                     ; $20:E619: A5 82       ;
CODE_20E61B:    CLC                         ; $20:E61B: 18          ;
CODE_20E61C:    ADC #$20                    ; $20:E61C: 69 20       ;
CODE_20E61E:    LDA #$00                    ; $20:E61E: A9 00       ;
CODE_20E620:    ADC $0544                   ; $20:E620: 6D 44 05    ;
CODE_20E623:    BEQ CODE_20E638             ; $20:E623: F0 13       ;
CODE_20E625:    TYA                         ; $20:E625: 98          ;
CODE_20E626:    STA $0801,x                 ; $20:E626: 9D 01 08    ;
CODE_20E629:    STA $0809,x                 ; $20:E629: 9D 09 08    ;
CODE_20E62C:    STA $0811,x                 ; $20:E62C: 9D 11 08    ;
CODE_20E62F:    STA $0805,x                 ; $20:E62F: 9D 05 08    ;
CODE_20E632:    STA $080D,x                 ; $20:E632: 9D 0D 08    ;
CODE_20E635:    STA $0815,x                 ; $20:E635: 9D 15 08    ;
CODE_20E638:    BRA CODE_20E671             ; $20:E638: 80 37       ;

CODE_20E63A:    BNE CODE_20E648             ; $20:E63A: D0 0C       ;
CODE_20E63C:    LDA $82                     ; $20:E63C: A5 82       ;
CODE_20E63E:    CMP #$C0                    ; $20:E63E: C9 C0       ;
CODE_20E640:    BCS CODE_20E648                     ; $20:E640: B0 06       ;
CODE_20E642:    CMP #$B0                    ; $20:E642: C9 B0       ;
CODE_20E644:    BCS CODE_20E65E                     ; $20:E644: B0 18       ;
CODE_20E646:    BCC CODE_20E671             ; $20:E646: 90 29       ;
CODE_20E648:    INC $0583                   ; $20:E648: EE 83 05    ;
CODE_20E64B:    TYA                         ; $20:E64B: 98          ;
CODE_20E64C:    STA $0819,x                 ; $20:E64C: 9D 19 08    ;
CODE_20E64F:    STA $0821,x                 ; $20:E64F: 9D 21 08    ;
CODE_20E652:    STA $0829,x                 ; $20:E652: 9D 29 08    ;
CODE_20E655:    STA $081D,x                 ; $20:E655: 9D 1D 08    ;
CODE_20E658:    STA $0825,x                 ; $20:E658: 9D 25 08    ;
CODE_20E65B:    STA $082D,x                 ; $20:E65B: 9D 2D 08    ;
CODE_20E65E:    TYA                         ; $20:E65E: 98          ;
CODE_20E65F:    STA $0801,x                 ; $20:E65F: 9D 01 08    ;
CODE_20E662:    STA $0809,x                 ; $20:E662: 9D 09 08    ;
CODE_20E665:    STA $0811,x                 ; $20:E665: 9D 11 08    ;
CODE_20E668:    STA $0805,x                 ; $20:E668: 9D 05 08    ;
CODE_20E66B:    STA $080D,x                 ; $20:E66B: 9D 0D 08    ;
CODE_20E66E:    STA $0815,x                 ; $20:E66E: 9D 15 08    ;
CODE_20E671:    SEP #$10                    ; $20:E671: E2 10       ;
CODE_20E673:    LDA $52                     ; $20:E673: A5 52       ;
CODE_20E675:    CMP $53                     ; $20:E675: C5 53       ;
CODE_20E677:    BNE CODE_20E67C             ; $20:E677: D0 03       ;
CODE_20E679:    INC A                       ; $20:E679: 1A          ;
CODE_20E67A:    BEQ CODE_20E681             ; $20:E67A: F0 05       ;
CODE_20E67C:    LDA $0571                   ; $20:E67C: AD 71 05    ;
CODE_20E67F:    BNE CODE_20E684             ; $20:E67F: D0 03       ;
CODE_20E681:    BRL CODE_20E761             ; $20:E681: 82 DD 00    ;

CODE_20E684:    LDA $0350                   ; $20:E684: AD 50 03    ;
CODE_20E687:    CMP #$03                    ; $20:E687: C9 03       ;
CODE_20E689:    BEQ CODE_20E681             ; $20:E689: F0 F6       ;
CODE_20E68B:    LDA #$00                    ; $20:E68B: A9 00       ;
CODE_20E68D:    STA $7FC522                 ; $20:E68D: 8F 22 C5 7F ;
CODE_20E691:    STA $7FC523                 ; $20:E691: 8F 23 C5 7F ;
CODE_20E695:    LDA $52                     ; $20:E695: A5 52       ;
CODE_20E697:    SEC                         ; $20:E697: 38          ;
CODE_20E698:    SBC $0210                   ; $20:E698: ED 10 02    ;
CODE_20E69B:    STA $0800                   ; $20:E69B: 8D 00 08    ;
CODE_20E69E:    STA $0804                   ; $20:E69E: 8D 04 08    ;
CODE_20E6A1:    STA $0808                   ; $20:E6A1: 8D 08 08    ;
CODE_20E6A4:    STA $080C                   ; $20:E6A4: 8D 0C 08    ;
CODE_20E6A7:    CLC                         ; $20:E6A7: 18          ;
CODE_20E6A8:    ADC #$08                    ; $20:E6A8: 69 08       ;
CODE_20E6AA:    STA $0810                   ; $20:E6AA: 8D 10 08    ;
CODE_20E6AD:    STA $0814                   ; $20:E6AD: 8D 14 08    ;
CODE_20E6B0:    STA $0818                   ; $20:E6B0: 8D 18 08    ;
CODE_20E6B3:    STA $081C                   ; $20:E6B3: 8D 1C 08    ;
CODE_20E6B6:    LDA $53                     ; $20:E6B6: A5 53       ;
CODE_20E6B8:    SEC                         ; $20:E6B8: 38          ;
CODE_20E6B9:    SBC $0543                   ; $20:E6B9: ED 43 05    ;
CODE_20E6BC:    PHA                         ; $20:E6BC: 48          ;
CODE_20E6BD:    CMP #$F0                    ; $20:E6BD: C9 F0       ;
CODE_20E6BF:    BCC CODE_20E6C3             ; $20:E6BF: 90 02       ;
CODE_20E6C1:    LDA #$00                    ; $20:E6C1: A9 00       ;
CODE_20E6C3:    STA $0801                   ; $20:E6C3: 8D 01 08    ;
CODE_20E6C6:    STA $0811                   ; $20:E6C6: 8D 11 08    ;
CODE_20E6C9:    CLC                         ; $20:E6C9: 18          ;
CODE_20E6CA:    ADC #$08                    ; $20:E6CA: 69 08       ;
CODE_20E6CC:    STA $0805                   ; $20:E6CC: 8D 05 08    ;
CODE_20E6CF:    STA $0815                   ; $20:E6CF: 8D 15 08    ;
CODE_20E6D2:    PLA                         ; $20:E6D2: 68          ;
CODE_20E6D3:    CLC                         ; $20:E6D3: 18          ;
CODE_20E6D4:    ADC #$10                    ; $20:E6D4: 69 10       ;
CODE_20E6D6:    STA $0809                   ; $20:E6D6: 8D 09 08    ;
CODE_20E6D9:    STA $0819                   ; $20:E6D9: 8D 19 08    ;
CODE_20E6DC:    CLC                         ; $20:E6DC: 18          ;
CODE_20E6DD:    ADC #$07                    ; $20:E6DD: 69 07       ;
CODE_20E6DF:    STA $080D                   ; $20:E6DF: 8D 0D 08    ;
CODE_20E6E2:    STA $081D                   ; $20:E6E2: 8D 1D 08    ;
CODE_20E6E5:    LDA #$FE                    ; $20:E6E5: A9 FE       ;
CODE_20E6E7:    STA $0802                   ; $20:E6E7: 8D 02 08    ;
CODE_20E6EA:    STA $0806                   ; $20:E6EA: 8D 06 08    ;
CODE_20E6ED:    STA $080A                   ; $20:E6ED: 8D 0A 08    ;
CODE_20E6F0:    STA $080E                   ; $20:E6F0: 8D 0E 08    ;
CODE_20E6F3:    STA $0812                   ; $20:E6F3: 8D 12 08    ;
CODE_20E6F6:    STA $0816                   ; $20:E6F6: 8D 16 08    ;
CODE_20E6F9:    STA $081A                   ; $20:E6F9: 8D 1A 08    ;
CODE_20E6FC:    STA $081E                   ; $20:E6FC: 8D 1E 08    ;
CODE_20E6FF:    LDA #$11                    ; $20:E6FF: A9 11       ;
CODE_20E701:    STA $0803                   ; $20:E701: 8D 03 08    ;
CODE_20E704:    STA $0807                   ; $20:E704: 8D 07 08    ;
CODE_20E707:    STA $080B                   ; $20:E707: 8D 0B 08    ;
CODE_20E70A:    STA $080F                   ; $20:E70A: 8D 0F 08    ;
CODE_20E70D:    STA $0813                   ; $20:E70D: 8D 13 08    ;
CODE_20E710:    STA $0817                   ; $20:E710: 8D 17 08    ;
CODE_20E713:    STA $081B                   ; $20:E713: 8D 1B 08    ;
CODE_20E716:    STA $081F                   ; $20:E716: 8D 1F 08    ;
CODE_20E719:    LDA #$00                    ; $20:E719: A9 00       ;
CODE_20E71B:    STA $0A20                   ; $20:E71B: 8D 20 0A    ;
CODE_20E71E:    STA $0A21                   ; $20:E71E: 8D 21 0A    ;
CODE_20E721:    STA $0A22                   ; $20:E721: 8D 22 0A    ;
CODE_20E724:    STA $0A23                   ; $20:E724: 8D 23 0A    ;
CODE_20E727:    LDA $0571                   ; $20:E727: AD 71 05    ;
CODE_20E72A:    CMP #$10                    ; $20:E72A: C9 10       ;
CODE_20E72C:    BNE CODE_20E742             ; $20:E72C: D0 14       ;
CODE_20E72E:    LDA $0819                   ; $20:E72E: AD 19 08    ;
CODE_20E731:    DEC A                       ; $20:E731: 3A          ;
CODE_20E732:    DEC A                       ; $20:E732: 3A          ;
CODE_20E733:    STA $0819                   ; $20:E733: 8D 19 08    ;
CODE_20E736:    STA $081D                   ; $20:E736: 8D 1D 08    ;
CODE_20E739:    LDA #$EE                    ; $20:E739: A9 EE       ;
CODE_20E73B:    STA $081E                   ; $20:E73B: 8D 1E 08    ;
CODE_20E73E:    LDA #$02                    ; $20:E73E: A9 02       ;
CODE_20E740:    BRA CODE_20E752             ; $20:E740: 80 10       ;

CODE_20E742:    LDA $1EBB                   ; $20:E742: AD BB 1E    ;
CODE_20E745:    CMP #$A4                    ; $20:E745: C9 A4       ;
CODE_20E747:    BNE CODE_20E750             ; $20:E747: D0 07       ;
CODE_20E749:    LDA $1EBC                   ; $20:E749: AD BC 1E    ;
CODE_20E74C:    CMP #$B7                    ; $20:E74C: C9 B7       ;
CODE_20E74E:    BEQ CODE_20E72E             ; $20:E74E: F0 DE       ;
CODE_20E750:    LDA #$00                    ; $20:E750: A9 00       ;
CODE_20E752:    STA $0A24                   ; $20:E752: 8D 24 0A    ;
CODE_20E755:    STA $0A25                   ; $20:E755: 8D 25 0A    ;
CODE_20E758:    STA $0A26                   ; $20:E758: 8D 26 0A    ;
CODE_20E75B:    STA $0A27                   ; $20:E75B: 8D 27 0A    ;
CODE_20E75E:    BRL CODE_20E802             ; $20:E75E: 82 A1 00    ;

CODE_20E761:    LDX $C4                     ; $20:E761: A6 C4       ;
CODE_20E763:    LDA $0425                   ; $20:E763: AD 25 04    ;
CODE_20E766:    BEQ CODE_20E783             ; $20:E766: F0 1B       ;
CODE_20E768:    LDY #$00                    ; $20:E768: A0 00       ;
CODE_20E76A:    LDA $0800,x                 ; $20:E76A: BD 00 08    ;
CODE_20E76D:    CMP #$F8                    ; $20:E76D: C9 F8       ;
CODE_20E76F:    BCS CODE_20E785                     ; $20:E76F: B0 14       ;
CODE_20E771:    LDY #$08                    ; $20:E771: A0 08       ;
CODE_20E773:    LDA $0808,x                 ; $20:E773: BD 08 08    ;
CODE_20E776:    CMP #$F8                    ; $20:E776: C9 F8       ;
CODE_20E778:    BCS CODE_20E785                     ; $20:E778: B0 0B       ;
CODE_20E77A:    LDY #$10                    ; $20:E77A: A0 10       ;
CODE_20E77C:    LDA $0810,x                 ; $20:E77C: BD 10 08    ;
CODE_20E77F:    CMP #$F8                    ; $20:E77F: C9 F8       ;
CODE_20E781:    BCS CODE_20E785                     ; $20:E781: B0 02       ;
CODE_20E783:    BRA CODE_20E802             ; $20:E783: 80 7D       ;
CODE_20E785:    STY $D8                     ; $20:E785: 84 D8       ;
CODE_20E787:    TXA                         ; $20:E787: 8A          ;
CODE_20E788:    CLC                         ; $20:E788: 18          ;
CODE_20E789:    ADC $D8                     ; $20:E789: 65 D8       ;
CODE_20E78B:    TAY                         ; $20:E78B: A8          ;
CODE_20E78C:    LDA $0800,y                 ; $20:E78C: B9 00 08    ;
CODE_20E78F:    STA $0800                   ; $20:E78F: 8D 00 08    ;
CODE_20E792:    STA $0804                   ; $20:E792: 8D 04 08    ;
CODE_20E795:    STA $0808                   ; $20:E795: 8D 08 08    ;
CODE_20E798:    STA $080C                   ; $20:E798: 8D 0C 08    ;
CODE_20E79B:    LDA $0801,y                 ; $20:E79B: B9 01 08    ;
CODE_20E79E:    STA $0801                   ; $20:E79E: 8D 01 08    ;
CODE_20E7A1:    LDA $0805,y                 ; $20:E7A1: B9 05 08    ;
CODE_20E7A4:    STA $0805                   ; $20:E7A4: 8D 05 08    ;
CODE_20E7A7:    LDA $0819,y                 ; $20:E7A7: B9 19 08    ;
CODE_20E7AA:    STA $0809                   ; $20:E7AA: 8D 09 08    ;
CODE_20E7AD:    LDA $081D,y                 ; $20:E7AD: B9 1D 08    ;
CODE_20E7B0:    STA $080D                   ; $20:E7B0: 8D 0D 08    ;
CODE_20E7B3:    LDA $0802,y                 ; $20:E7B3: B9 02 08    ;
CODE_20E7B6:    STA $0802                   ; $20:E7B6: 8D 02 08    ;
CODE_20E7B9:    LDA $0806,y                 ; $20:E7B9: B9 06 08    ;
CODE_20E7BC:    STA $0806                   ; $20:E7BC: 8D 06 08    ;
CODE_20E7BF:    LDA $081A,y                 ; $20:E7BF: B9 1A 08    ;
CODE_20E7C2:    STA $080A                   ; $20:E7C2: 8D 0A 08    ;
CODE_20E7C5:    LDA $081E,y                 ; $20:E7C5: B9 1E 08    ;
CODE_20E7C8:    STA $080E                   ; $20:E7C8: 8D 0E 08    ;
CODE_20E7CB:    LDA $0803,y                 ; $20:E7CB: B9 03 08    ;
CODE_20E7CE:    STA $0803                   ; $20:E7CE: 8D 03 08    ;
CODE_20E7D1:    LDA $0807,y                 ; $20:E7D1: B9 07 08    ;
CODE_20E7D4:    STA $0807                   ; $20:E7D4: 8D 07 08    ;
CODE_20E7D7:    LDA $081B,y                 ; $20:E7D7: B9 1B 08    ;
CODE_20E7DA:    STA $080B                   ; $20:E7DA: 8D 0B 08    ;
CODE_20E7DD:    LDA $081F,y                 ; $20:E7DD: B9 1F 08    ;
CODE_20E7E0:    STA $080F                   ; $20:E7E0: 8D 0F 08    ;
CODE_20E7E3:    TYA                         ; $20:E7E3: 98          ;
CODE_20E7E4:    LSR A                       ; $20:E7E4: 4A          ;
CODE_20E7E5:    LSR A                       ; $20:E7E5: 4A          ;
CODE_20E7E6:    TAY                         ; $20:E7E6: A8          ;
CODE_20E7E7:    LDA #$01                    ; $20:E7E7: A9 01       ;
CODE_20E7E9:    STA $0A20,y                 ; $20:E7E9: 99 20 0A    ;
CODE_20E7EC:    STA $0A21,y                 ; $20:E7EC: 99 21 0A    ;
CODE_20E7EF:    STA $0A26,y                 ; $20:E7EF: 99 26 0A    ;
CODE_20E7F2:    STA $0A27,y                 ; $20:E7F2: 99 27 0A    ;
CODE_20E7F5:    DEC A                       ; $20:E7F5: 3A          ;
CODE_20E7F6:    STA $0A20                   ; $20:E7F6: 8D 20 0A    ;
CODE_20E7F9:    STA $0A21                   ; $20:E7F9: 8D 21 0A    ;
CODE_20E7FC:    STA $0A22                   ; $20:E7FC: 8D 22 0A    ;
CODE_20E7FF:    STA $0A23                   ; $20:E7FF: 8D 23 0A    ;
CODE_20E802:    RTL                         ; $20:E802: 6B          ;

CODE_20E803:    LDA #$84                    ; $20:E803: A9 84       ;
CODE_20E805:    SEC                         ; $20:E805: 38          ;
CODE_20E806:    SBC $0602                   ; $20:E806: ED 02 06    ;
CODE_20E809:    CMP #$04                    ; $20:E809: C9 04       ;
CODE_20E80B:    BCS CODE_20E853                     ; $20:E80B: B0 46       ;
CODE_20E80D:    LDY #$00                    ; $20:E80D: A0 00       ;
CODE_20E80F:    LDA $5E                     ; $20:E80F: A5 5E       ;
CODE_20E811:    CMP #$60                    ; $20:E811: C9 60       ;
CODE_20E813:    BCC CODE_20E81B             ; $20:E813: 90 06       ;
CODE_20E815:    INY                         ; $20:E815: C8          ;
CODE_20E816:    CMP #$90                    ; $20:E816: C9 90       ;
CODE_20E818:    BCC CODE_20E81B             ; $20:E818: 90 01       ;
CODE_20E81A:    INY                         ; $20:E81A: C8          ;
CODE_20E81B:    LDA #$80                    ; $20:E81B: A9 80       ;
CODE_20E81D:    STA $052B                   ; $20:E81D: 8D 2B 05    ;
CODE_20E820:    LDA #$01                    ; $20:E820: A9 01       ;
CODE_20E822:    STA $052A                   ; $20:E822: 8D 2A 05    ;
CODE_20E825:    LSR A                       ; $20:E825: 4A          ;
CODE_20E826:    STA $0528                   ; $20:E826: 8D 28 05    ;
CODE_20E829:    LDA.w DATA_218AA7,y                 ; $20:E829: B9 A7 8A    ;
CODE_20E82C:    STA $0529                   ; $20:E82C: 8D 29 05    ;
CODE_20E82F:    LDA #$14                    ; $20:E82F: A9 14       ;
CODE_20E831:    STA $037B                   ; $20:E831: 8D 7B 03    ;
CODE_20E834:    STA $0564                   ; $20:E834: 8D 64 05    ;
CODE_20E837:    LDX $0421                   ; $20:E837: AE 21 04    ;
CODE_20E83A:    DEX                         ; $20:E83A: CA          ;
CODE_20E83B:    CPX #$05                    ; $20:E83B: E0 05       ;
CODE_20E83D:    BMI CODE_20E84D             ; $20:E83D: 30 0E       ;
CODE_20E83F:    LDA $0783                   ; $20:E83F: AD 83 07    ;
CODE_20E842:    AND #$0F                    ; $20:E842: 29 0F       ;
CODE_20E844:    TAY                         ; $20:E844: A8          ;
CODE_20E845:    LDA.w DATA_218A97,y                 ; $20:E845: B9 97 8A    ;
CODE_20E848:    CLC                         ; $20:E848: 18          ;
CODE_20E849:    ADC.w DATA_218A8D,x                 ; $20:E849: 7D 8D 8A    ;
CODE_20E84C:    TAX                         ; $20:E84C: AA          ;
CODE_20E84D:    LDA.w DATA_218A7E,x                 ; $20:E84D: BD 7E 8A    ;
CODE_20E850:    TAX                         ; $20:E850: AA          ;
CODE_20E851:    INX                         ; $20:E851: E8          ;
CODE_20E852:    RTL                         ; $20:E852: 6B          ;

CODE_20E853:    LDX #$00                    ; $20:E853: A2 00       ;
CODE_20E855:    RTL                         ; $20:E855: 6B          ;

CODE_20E856:    LDA $0556                   ; $20:E856: AD 56 05    ;
CODE_20E859:    BEQ CODE_20E86C             ; $20:E859: F0 11       ;
CODE_20E85B:    DEC $0556                   ; $20:E85B: CE 56 05    ;
CODE_20E85E:    JSL CODE_20E237             ; $20:E85E: 22 37 E2 20 ;
CODE_20E862:    LDA $05FC                   ; $20:E862: AD FC 05    ;
CODE_20E865:    BEQ CODE_20E86B             ; $20:E865: F0 04       ;
CODE_20E867:    JSL CODE_23D10E             ; $20:E867: 22 0E D1 23 ;
CODE_20E86B:    RTL                         ; $20:E86B: 6B          ;

CODE_20E86C:    LDA $BF                     ; $20:E86C: A5 BF       ;
CODE_20E86E:    BEQ CODE_20E874             ; $20:E86E: F0 04       ;
CODE_20E870:    JSR CODE_20EE03             ; $20:E870: 20 03 EE    ;
CODE_20E873:    RTL                         ; $20:E873: 6B          ;

CODE_20E874:    LDA $0572                   ; $20:E874: AD 72 05    ;
CODE_20E877:    BPL CODE_20E8A4             ; $20:E877: 10 2B       ;
CODE_20E879:    LDA #$00                    ; $20:E879: A9 00       ;
CODE_20E87B:    STA $06A4                   ; $20:E87B: 8D A4 06    ;
CODE_20E87E:    STA $8B                     ; $20:E87E: 85 8B       ;
CODE_20E880:    INC $0572                   ; $20:E880: EE 72 05    ;
CODE_20E883:    LDA $0572                   ; $20:E883: AD 72 05    ;
CODE_20E886:    STA $9D                     ; $20:E886: 85 9D       ;
CODE_20E888:    BNE CODE_20E88D             ; $20:E888: D0 03       ;
CODE_20E88A:    INC $0572                   ; $20:E88A: EE 72 05    ;
CODE_20E88D:    LDA $55                     ; $20:E88D: A5 55       ;
CODE_20E88F:    BPL CODE_20E8A4             ; $20:E88F: 10 13       ;
CODE_20E891:    LDA #$01                    ; $20:E891: A9 01       ;
CODE_20E893:    STA $55                     ; $20:E893: 85 55       ;
CODE_20E895:    LDA #$B0                    ; $20:E895: A9 B0       ;
CODE_20E897:    STA $70                     ; $20:E897: 85 70       ;
CODE_20E899:    LDA #$D0                    ; $20:E899: A9 D0       ;
CODE_20E89B:    STA $0572                   ; $20:E89B: 8D 72 05    ;
CODE_20E89E:    LDA #$03                    ; $20:E89E: A9 03       ;
CODE_20E8A0:    STA $0414                   ; $20:E8A0: 8D 14 04    ;
CODE_20E8A3:    RTL                         ; $20:E8A3: 6B          ;

CODE_20E8A4:    LDA $0554                   ; $20:E8A4: AD 54 05    ;
CODE_20E8A7:    BEQ CODE_20E8AD             ; $20:E8A7: F0 04       ;
CODE_20E8A9:    JSR CODE_20EF39             ; $20:E8A9: 20 39 EF    ;
CODE_20E8AC:    RTL                         ; $20:E8AC: 6B          ;

CODE_20E8AD:    LDA $0555                   ; $20:E8AD: AD 55 05    ;
CODE_20E8B0:    BEQ CODE_20E8C4             ; $20:E8B0: F0 12       ;
CODE_20E8B2:    CMP #$1F                    ; $20:E8B2: C9 1F       ;
CODE_20E8B4:    BNE CODE_20E8BC             ; $20:E8B4: D0 06       ;
CODE_20E8B6:    DEC $0555                   ; $20:E8B6: CE 55 05    ;
CODE_20E8B9:    JMP CODE_20E8C4             ; $20:E8B9: 4C C4 E8    ;
CODE_20E8BC:    JSL CODE_20E237             ; $20:E8BC: 22 37 E2 20 ;
CODE_20E8C0:    DEC $0555                   ; $20:E8C0: CE 55 05    ;
CODE_20E8C3:    RTL                         ; $20:E8C3: 6B          ;

CODE_20E8C4:    LDA $0551                   ; $20:E8C4: AD 51 05    ;
CODE_20E8C7:    BEQ CODE_20E8F3             ; $20:E8C7: F0 2A       ;
CODE_20E8C9:    LSR A                       ; $20:E8C9: 4A          ;
CODE_20E8CA:    LSR A                       ; $20:E8CA: 4A          ;
CODE_20E8CB:    TAX                         ; $20:E8CB: AA          ;
CODE_20E8CC:    LDY $BB                     ; $20:E8CC: A4 BB       ;
CODE_20E8CE:    BNE CODE_20E8D8             ; $20:E8CE: D0 08       ;
CODE_20E8D0:    STX $00                     ; $20:E8D0: 86 00       ;
CODE_20E8D2:    LDA #$0B                    ; $20:E8D2: A9 0B       ;
CODE_20E8D4:    SEC                         ; $20:E8D4: 38          ;
CODE_20E8D5:    SBC $00                     ; $20:E8D5: E5 00       ;
CODE_20E8D7:    TAX                         ; $20:E8D7: AA          ;
CODE_20E8D8:    AND #$01                    ; $20:E8D8: 29 01       ;
CODE_20E8DA:    PHP                         ; $20:E8DA: 08          ;
CODE_20E8DB:    LDA.w DATA_21E974,x                 ; $20:E8DB: BD 74 E9    ;
CODE_20E8DE:    STA $BC                     ; $20:E8DE: 85 BC       ;
CODE_20E8E0:    PLP                         ; $20:E8E0: 28          ;
CODE_20E8E1:    LDA $BB                     ; $20:E8E1: A5 BB       ;
CODE_20E8E3:    PHA                         ; $20:E8E3: 48          ;
CODE_20E8E4:    LDA #$01                    ; $20:E8E4: A9 01       ;
CODE_20E8E6:    STA $BB                     ; $20:E8E6: 85 BB       ;
CODE_20E8E8:    JSL CODE_20E237             ; $20:E8E8: 22 37 E2 20 ;
CODE_20E8EC:    PLA                         ; $20:E8EC: 68          ;
CODE_20E8ED:    STA $BB                     ; $20:E8ED: 85 BB       ;
CODE_20E8EF:    DEC $0551                   ; $20:E8EF: CE 51 05    ;
CODE_20E8F2:    RTL                         ; $20:E8F2: 6B          ;

CODE_20E8F3:    LDA $0559                   ; $20:E8F3: AD 59 05    ;
CODE_20E8F6:    BEQ CODE_20E928             ; $20:E8F6: F0 30       ;
CODE_20E8F8:    LDA $0577                   ; $20:E8F8: AD 77 05    ;
CODE_20E8FB:    BEQ CODE_20E905             ; $20:E8FB: F0 08       ;
CODE_20E8FD:    STZ $0577                   ; $20:E8FD: 9C 77 05    ;
CODE_20E900:    LDA #$18                    ; $20:E900: A9 18       ;
CODE_20E902:    STA $0554                   ; $20:E902: 8D 54 05    ;
CODE_20E905:    LDA #$41                    ; $20:E905: A9 41       ;
CODE_20E907:    STA $BD                     ; $20:E907: 85 BD       ;
CODE_20E909:    JSL CODE_20E237             ; $20:E909: 22 37 E2 20 ;
CODE_20E90D:    LDA $A6                     ; $20:E90D: A5 A6       ;
CODE_20E90F:    BNE CODE_20E928             ; $20:E90F: D0 17       ;
CODE_20E911:    DEC $0559                   ; $20:E911: CE 59 05    ;
CODE_20E914:    LDA #$14                    ; $20:E914: A9 14       ;
CODE_20E916:    STA $8B                     ; $20:E916: 85 8B       ;
CODE_20E918:    JSR CODE_20EB60             ; $20:E918: 20 60 EB    ;
CODE_20E91B:    LDA $057A                   ; $20:E91B: AD 7A 05    ;
CODE_20E91E:    BEQ CODE_20E927             ; $20:E91E: F0 07       ;
CODE_20E920:    STZ $057A                   ; $20:E920: 9C 7A 05    ;
CODE_20E923:    JSL CODE_23C463             ; $20:E923: 22 63 C4 23 ;
CODE_20E927:    RTL                         ; $20:E927: 6B          ;

CODE_20E928:    LDA $055A                   ; $20:E928: AD 5A 05    ;
CODE_20E92B:    BNE CODE_20E930             ; $20:E92B: D0 03       ;
CODE_20E92D:    BRL CODE_20EA0C             ; $20:E92D: 82 DC 00    ;
CODE_20E930:    PHA                         ; $20:E930: 48          ;
CODE_20E931:    LDA #$00                    ; $20:E931: A9 00       ;
CODE_20E933:    STA $25                     ; $20:E933: 85 25       ;
CODE_20E935:    INC $0210                   ; $20:E935: EE 10 02    ;
CODE_20E938:    BNE CODE_20E93F             ; $20:E938: D0 05       ;
CODE_20E93A:    INC $12                     ; $20:E93A: E6 12       ;
CODE_20E93C:    INC $0211                   ; $20:E93C: EE 11 02    ;
CODE_20E93F:    REP #$20                    ; $20:E93F: C2 20       ;
CODE_20E941:    LDA $0210                   ; $20:E941: AD 10 02    ;
CODE_20E944:    LSR A                       ; $20:E944: 4A          ;
CODE_20E945:    LSR A                       ; $20:E945: 4A          ;
CODE_20E946:    STA $0212                   ; $20:E946: 8D 12 02    ;
CODE_20E949:    SEP #$20                    ; $20:E949: E2 20       ;
CODE_20E94B:    LDA $12                     ; $20:E94B: A5 12       ;
CODE_20E94D:    BNE CODE_20E956             ; $20:E94D: D0 07       ;
CODE_20E94F:    LDA $0210                   ; $20:E94F: AD 10 02    ;
CODE_20E952:    CMP #$60                    ; $20:E952: C9 60       ;
CODE_20E954:    BCC CODE_20E970             ; $20:E954: 90 1A       ;
CODE_20E956:    INC $0550                   ; $20:E956: EE 50 05    ;
CODE_20E959:    LDA $0550                   ; $20:E959: AD 50 05    ;
CODE_20E95C:    CLC                         ; $20:E95C: 18          ;
CODE_20E95D:    ADC $055C                   ; $20:E95D: 6D 5C 05    ;
CODE_20E960:    BCC CODE_20E970             ; $20:E960: 90 0E       ;
CODE_20E962:    INC $0216                   ; $20:E962: EE 16 02    ;
CODE_20E965:    LDA $75                     ; $20:E965: A5 75       ;
CODE_20E967:    SEC                         ; $20:E967: 38          ;
CODE_20E968:    SBC #$01                    ; $20:E968: E9 01       ;
CODE_20E96A:    STA $75                     ; $20:E96A: 85 75       ;
CODE_20E96C:    BCS CODE_20E970                     ; $20:E96C: B0 02       ;
CODE_20E96E:    DEC $5A                     ; $20:E96E: C6 5A       ;
CODE_20E970:    PLA                         ; $20:E970: 68          ;
CODE_20E971:    JSR CODE_20E975             ; $20:E971: 20 75 E9    ;
CODE_20E974:    RTL                         ; $20:E974: 6B          ;

CODE_20E975:    JSL CODE_20FB1F         ; $20:E975: 22 1F FB 20 ; ExecutePtrShort

PNTR_20E979:          dw CODE_20E983
               dw CODE_20E984
               dw CODE_20E9A2
               dw CODE_20E9CD
               dw CODE_20E9E8

CODE_20E983:    RTS                     ; $20:E983: 60          ;

CODE_20E984:    LDA #$EF                    ; $20:E984: A9 EF       ;
CODE_20E986:    STA $0543                   ; $20:E986: 8D 43 05    ;
CODE_20E989:    LDA $0210                   ; $20:E989: AD 10 02    ;
CODE_20E98C:    CMP #$80                    ; $20:E98C: C9 80       ;
CODE_20E98E:    BCC CODE_20E997             ; $20:E98E: 90 07       ;
CODE_20E990:    LDA #$A0                    ; $20:E990: A9 A0       ;
CODE_20E992:    STA $9D                     ; $20:E992: 85 9D       ;
CODE_20E994:    INC $055A                   ; $20:E994: EE 5A 05    ;
CODE_20E997:    LDA #$01                    ; $20:E997: A9 01       ;
CODE_20E999:    STA $BD                     ; $20:E999: 85 BD       ;
CODE_20E99B:    LDA #$20                    ; $20:E99B: A9 20       ;
CODE_20E99D:    STA $8B                     ; $20:E99D: 85 8B       ;
CODE_20E99F:    JMP CODE_20EB60             ; $20:E99F: 4C 60 EB    ;

CODE_20E9A2:    LDA $5E                     ; $20:E9A2: A5 5E       ;
CODE_20E9A4:    CMP #$36                    ; $20:E9A4: C9 36       ;
CODE_20E9A6:    BCC CODE_20E9CA             ; $20:E9A6: 90 22       ;
CODE_20E9A8:    JSL CODE_23DEA3             ; $20:E9A8: 22 A3 DE 23 ;
CODE_20E9AC:    JSL CODE_23DE53             ; $20:E9AC: 22 53 DE 23 ;
CODE_20E9B0:    LDA $9D                     ; $20:E9B0: A5 9D       ;
CODE_20E9B2:    CLC                         ; $20:E9B2: 18          ;
CODE_20E9B3:    ADC #$04                    ; $20:E9B3: 69 04       ;
CODE_20E9B5:    STA $9D                     ; $20:E9B5: 85 9D       ;
CODE_20E9B7:    CMP #$0F                    ; $20:E9B7: C9 0F       ;
CODE_20E9B9:    BMI CODE_20E9BE             ; $20:E9B9: 30 03       ;
CODE_20E9BB:    INC $055A                   ; $20:E9BB: EE 5A 05    ;
CODE_20E9BE:    LDY $BB                     ; $20:E9BE: A4 BB       ;
CODE_20E9C0:    LDA.w DATA_21E9E5,y                 ; $20:E9C0: B9 E5 E9    ;
CODE_20E9C3:    STA $BC                     ; $20:E9C3: 85 BC       ;
CODE_20E9C5:    JSL CODE_20E237             ; $20:E9C5: 22 37 E2 20 ;
CODE_20E9C9:    RTS                         ; $20:E9C9: 60          ;

CODE_20E9CA:    JMP CODE_20EB60             ; $20:E9CA: 4C 60 EB    ;

CODE_20E9CD:    LDA #$02                    ; $20:E9CD: A9 02       ;
CODE_20E9CF:    STA $BD                     ; $20:E9CF: 85 BD       ;
CODE_20E9D1:    LDA #$EC                    ; $20:E9D1: A9 EC       ;
CODE_20E9D3:    STA $9D                     ; $20:E9D3: 85 9D       ;
CODE_20E9D5:    JSR CODE_20EB60             ; $20:E9D5: 20 60 EB    ;
CODE_20E9D8:    LDA $0216                   ; $20:E9D8: AD 16 02    ;
CODE_20E9DB:    CMP #$70                    ; $20:E9DB: C9 70       ;
CODE_20E9DD:    BCC CODE_20E9E7             ; $20:E9DD: 90 08       ;
CODE_20E9DF:    LDA #$03                    ; $20:E9DF: A9 03       ;
CODE_20E9E1:    STA $0414                   ; $20:E9E1: 8D 14 04    ;
CODE_20E9E4:    INC $055A                   ; $20:E9E4: EE 5A 05    ;
CODE_20E9E7:    RTS                         ; $20:E9E7: 60          ;

CODE_20E9E8:    LDA $05FC                   ; $20:E9E8: AD FC 05    ;
CODE_20E9EB:    BEQ CODE_20EA0B             ; $20:E9EB: F0 1E       ;
CODE_20E9ED:    JSL CODE_23DEA3             ; $20:E9ED: 22 A3 DE 23 ;
CODE_20E9F1:    LDA $9D                     ; $20:E9F1: A5 9D       ;
CODE_20E9F3:    BMI CODE_20E9FD             ; $20:E9F3: 30 08       ;
CODE_20E9F5:    LDA #$00                    ; $20:E9F5: A9 00       ;
CODE_20E9F7:    STA $055A                   ; $20:E9F7: 8D 5A 05    ;
CODE_20E9FA:    STA $05F3                   ; $20:E9FA: 8D F3 05    ;
CODE_20E9FD:    LDA $9D                     ; $20:E9FD: A5 9D       ;
CODE_20E9FF:    CLC                         ; $20:E9FF: 18          ;
CODE_20EA00:    ADC #$04                    ; $20:EA00: 69 04       ;
CODE_20EA02:    STA $9D                     ; $20:EA02: 85 9D       ;
CODE_20EA04:    JSL CODE_23CFCA             ; $20:EA04: 22 CA CF 23 ;
CODE_20EA08:    JSR CODE_20E9BE             ; $20:EA08: 20 BE E9    ;
CODE_20EA0B:    RTS                         ; $20:EA0B: 60          ;

CODE_20EA0C:    LDA $07BE                   ; $20:EA0C: AD BE 07    ;
CODE_20EA0F:    CMP #$03                    ; $20:EA0F: C9 03       ;
CODE_20EA11:    BMI CODE_20EA31             ; $20:EA11: 30 1E       ;
CODE_20EA13:    CMP #$07                    ; $20:EA13: C9 07       ;
CODE_20EA15:    BMI CODE_20EA22             ; $20:EA15: 30 0B       ;
CODE_20EA17:    LDA $70                     ; $20:EA17: A5 70       ;
CODE_20EA19:    CLC                         ; $20:EA19: 18          ;
CODE_20EA1A:    ADC #$02                    ; $20:EA1A: 69 02       ;
CODE_20EA1C:    STA $70                     ; $20:EA1C: 85 70       ;
CODE_20EA1E:    BCC CODE_20EA22             ; $20:EA1E: 90 02       ;
CODE_20EA20:    INC $55                     ; $20:EA20: E6 55       ;
CODE_20EA22:    LDY $BB                     ; $20:EA22: A4 BB       ;
CODE_20EA24:    LDA.w DATA_21E9E5,y                 ; $20:EA24: B9 E5 E9    ;
CODE_20EA27:    STA $BC                     ; $20:EA27: 85 BC       ;
CODE_20EA29:    JSL CODE_20E237             ; $20:EA29: 22 37 E2 20 ;
CODE_20EA2D:    JSR CODE_20EADC             ; $20:EA2D: 20 DC EA    ;
CODE_20EA30:    RTL                         ; $20:EA30: 6B          ;

CODE_20EA31:    LDA $0571                   ; $20:EA31: AD 71 05    ;
CODE_20EA34:    BPL CODE_20EA3A             ; $20:EA34: 10 04       ;
CODE_20EA36:    JSR CODE_20EBBA             ; $20:EA36: 20 BA EB    ;
CODE_20EA39:    RTL                         ; $20:EA39: 6B          ;

CODE_20EA3A:    BNE CODE_20EA3F             ; $20:EA3A: D0 03       ;
CODE_20EA3C:    JMP CODE_20EADB             ; $20:EA3C: 4C DB EA    ;

CODE_20EA3F:    LDA $0510                   ; $20:EA3F: AD 10 05    ;
CODE_20EA42:    BNE CODE_20EA70             ; $20:EA42: D0 2C       ;
CODE_20EA44:    LDA $0571                   ; $20:EA44: AD 71 05    ;
CODE_20EA47:    AND #$1C                    ; $20:EA47: 29 1C       ;
CODE_20EA49:    CMP #$14                    ; $20:EA49: C9 14       ;
CODE_20EA4B:    BNE CODE_20EA54             ; $20:EA4B: D0 07       ;
CODE_20EA4D:    LDA #$05                    ; $20:EA4D: A9 05       ;
CODE_20EA4F:    STA $0377                   ; $20:EA4F: 8D 77 03    ;
CODE_20EA52:    BRA CODE_20EA65             ; $20:EA52: 80 11       ;

CODE_20EA54:    LSR A                       ; $20:EA54: 4A          ;
CODE_20EA55:    LSR A                       ; $20:EA55: 4A          ;
CODE_20EA56:    STA $0414                   ; $20:EA56: 8D 14 04    ;
CODE_20EA59:    CMP #$01                    ; $20:EA59: C9 01       ;
CODE_20EA5B:    BNE CODE_20EA65             ; $20:EA5B: D0 08       ;
CODE_20EA5D:    INC $14                     ; $20:EA5D: E6 14       ;
CODE_20EA5F:    LDA #$00                    ; $20:EA5F: A9 00       ;
CODE_20EA61:    STA $0713                   ; $20:EA61: 8D 13 07    ;
CODE_20EA64:    RTL                         ; $20:EA64: 6B          ;

CODE_20EA65:    LDA $0571                   ; $20:EA65: AD 71 05    ;
CODE_20EA68:    AND #$03                    ; $20:EA68: 29 03       ;
CODE_20EA6A:    ORA #$80                    ; $20:EA6A: 09 80       ;
CODE_20EA6C:    STA $0571                   ; $20:EA6C: 8D 71 05    ;
CODE_20EA6F:    RTL                         ; $20:EA6F: 6B          ;

CODE_20EA70:    LDA $0571                   ; $20:EA70: AD 71 05    ;
CODE_20EA73:    AND #$03                    ; $20:EA73: 29 03       ;
CODE_20EA75:    CMP #$02                    ; $20:EA75: C9 02       ;
CODE_20EA77:    BPL CODE_20EAB2             ; $20:EA77: 10 39       ;
CODE_20EA79:    LDA $0510                   ; $20:EA79: AD 10 05    ;
CODE_20EA7C:    CMP #$10                    ; $20:EA7C: C9 10       ;
CODE_20EA7E:    BMI CODE_20EAB1             ; $20:EA7E: 30 31       ;
CODE_20EA80:    PHA                         ; $20:EA80: 48          ;
CODE_20EA81:    JSR CODE_20EEF2             ; $20:EA81: 20 F2 EE    ;
CODE_20EA84:    PLA                         ; $20:EA84: 68          ;
CODE_20EA85:    CMP #$24                    ; $20:EA85: C9 24       ;
CODE_20EA87:    BPL CODE_20EAB1             ; $20:EA87: 10 28       ;
CODE_20EA89:    LDX $C4                     ; $20:EA89: A6 C4       ;
CODE_20EA8B:    LDA #$F0                    ; $20:EA8B: A9 F0       ;
CODE_20EA8D:    STA $0801,x                 ; $20:EA8D: 9D 01 08    ;
CODE_20EA90:    STA $0805,x                 ; $20:EA90: 9D 05 08    ;
CODE_20EA93:    STA $0809,x                 ; $20:EA93: 9D 09 08    ;
CODE_20EA96:    STA $080D,x                 ; $20:EA96: 9D 0D 08    ;
CODE_20EA99:    STA $0811,x                 ; $20:EA99: 9D 11 08    ;
CODE_20EA9C:    STA $0815,x                 ; $20:EA9C: 9D 15 08    ;
CODE_20EA9F:    STA $0819,x                 ; $20:EA9F: 9D 19 08    ;
CODE_20EAA2:    STA $081D,x                 ; $20:EAA2: 9D 1D 08    ;
CODE_20EAA5:    STA $0821,x                 ; $20:EAA5: 9D 21 08    ;
CODE_20EAA8:    STA $0825,x                 ; $20:EAA8: 9D 25 08    ;
CODE_20EAAB:    STA $0829,x                 ; $20:EAAB: 9D 29 08    ;
CODE_20EAAE:    STA $082D,x                 ; $20:EAAE: 9D 2D 08    ;
CODE_20EAB1:    RTL                         ; $20:EAB1: 6B          ;

CODE_20EAB2:    JSR CODE_20EF15             ; $20:EAB2: 20 15 EF    ;
CODE_20EAB5:    LDA $0510                   ; $20:EAB5: AD 10 05    ;
CODE_20EAB8:    CMP #$10                    ; $20:EAB8: C9 10       ;
CODE_20EABA:    BCS CODE_20EADA                     ; $20:EABA: B0 1E       ;
CODE_20EABC:    LDA $C4                     ; $20:EABC: A5 C4       ;
CODE_20EABE:    LDX $9D                     ; $20:EABE: A6 9D       ;
CODE_20EAC0:    BPL CODE_20EAC5             ; $20:EAC0: 10 03       ;
CODE_20EAC2:    CLC                         ; $20:EAC2: 18          ;
CODE_20EAC3:    ADC #$18                    ; $20:EAC3: 69 18       ;
CODE_20EAC5:    TAX                         ; $20:EAC5: AA          ;
CODE_20EAC6:    LDA #$F0                    ; $20:EAC6: A9 F0       ;
CODE_20EAC8:    STA $0801,x                 ; $20:EAC8: 9D 01 08    ;
CODE_20EACB:    STA $0805,x                 ; $20:EACB: 9D 05 08    ;
CODE_20EACE:    STA $0809,x                 ; $20:EACE: 9D 09 08    ;
CODE_20EAD1:    STA $080D,x                 ; $20:EAD1: 9D 0D 08    ;
CODE_20EAD4:    STA $0811,x                 ; $20:EAD4: 9D 11 08    ;
CODE_20EAD7:    STA $0815,x                 ; $20:EAD7: 9D 15 08    ;
CODE_20EADA:    RTL                         ; $20:EADA: 6B          ;

CODE_20EADB:    RTL                         ; $20:EADB: 6B          ;

CODE_20EADC:    LDY #$40                    ; $20:EADC: A0 40       ;
CODE_20EADE:    LDX $BB                     ; $20:EADE: A6 BB       ;
CODE_20EAE0:    LDA $BD                     ; $20:EAE0: A5 BD       ;
CODE_20EAE2:    PHP                         ; $20:EAE2: 08          ;
CODE_20EAE3:    LDA.w DATA_218AB1,x                 ; $20:EAE3: BD B1 8A    ;
CODE_20EAE6:    PLP                         ; $20:EAE6: 28          ;
CODE_20EAE7:    BNE CODE_20EAEC             ; $20:EAE7: D0 03       ;
CODE_20EAE9:    LDA.w DATA_218AAA,x                 ; $20:EAE9: BD AA 8A    ;
CODE_20EAEC:    CLC                         ; $20:EAEC: 18          ;
CODE_20EAED:    ADC $79                     ; $20:EAED: 65 79       ;
CODE_20EAEF:    STA $0800,y                 ; $20:EAEF: 99 00 08    ;
CODE_20EAF2:    STA $0804,y                 ; $20:EAF2: 99 04 08    ;
CODE_20EAF5:    CLC                         ; $20:EAF5: 18          ;
CODE_20EAF6:    ADC #$08                    ; $20:EAF6: 69 08       ;
CODE_20EAF8:    STA $0808,y                 ; $20:EAF8: 99 08 08    ;
CODE_20EAFB:    STA $080C,y                 ; $20:EAFB: 99 0C 08    ;
CODE_20EAFE:    LDA $55                     ; $20:EAFE: A5 55       ;
CODE_20EB00:    STA $00                     ; $20:EB00: 85 00       ;
CODE_20EB02:    LDA.w DATA_218AB8,x                 ; $20:EB02: BD B8 8A    ;
CODE_20EB05:    BPL CODE_20EB09             ; $20:EB05: 10 02       ;
CODE_20EB07:    DEC $00                     ; $20:EB07: C6 00       ;
CODE_20EB09:    CLC                         ; $20:EB09: 18          ;
CODE_20EB0A:    ADC $82                     ; $20:EB0A: 65 82       ;
CODE_20EB0C:    BCC CODE_20EB10             ; $20:EB0C: 90 02       ;
CODE_20EB0E:    INC $00                     ; $20:EB0E: E6 00       ;
CODE_20EB10:    LDX $00                     ; $20:EB10: A6 00       ;
CODE_20EB12:    CPX #$01                    ; $20:EB12: E0 01       ;
CODE_20EB14:    BPL CODE_20EB5F             ; $20:EB14: 10 49       ;
CODE_20EB16:    CMP #$F0                    ; $20:EB16: C9 F0       ;
CODE_20EB18:    BCS CODE_20EB5F                     ; $20:EB18: B0 45       ;
CODE_20EB1A:    STA $0801,y                 ; $20:EB1A: 99 01 08    ;
CODE_20EB1D:    STA $0809,y                 ; $20:EB1D: 99 09 08    ;
CODE_20EB20:    CLC                         ; $20:EB20: 18          ;
CODE_20EB21:    ADC #$08                    ; $20:EB21: 69 08       ;
CODE_20EB23:    STA $0805,y                 ; $20:EB23: 99 05 08    ;
CODE_20EB26:    STA $080D,y                 ; $20:EB26: 99 0D 08    ;
CODE_20EB29:    LDA #$B0                    ; $20:EB29: A9 B0       ;
CODE_20EB2B:    STA $0802,y                 ; $20:EB2B: 99 02 08    ;
CODE_20EB2E:    STA $080A,y                 ; $20:EB2E: 99 0A 08    ;
CODE_20EB31:    INC A                       ; $20:EB31: 1A          ;
CODE_20EB32:    STA $0806,y                 ; $20:EB32: 99 06 08    ;
CODE_20EB35:    STA $080E,y                 ; $20:EB35: 99 0E 08    ;
CODE_20EB38:    JSL CODE_27AA8D             ; $20:EB38: 22 8D AA 27 ;
CODE_20EB3C:    ASL A                       ; $20:EB3C: 0A          ;
CODE_20EB3D:    ORA #$20                    ; $20:EB3D: 09 20       ;
CODE_20EB3F:    STA $0803,y                 ; $20:EB3F: 99 03 08    ;
CODE_20EB42:    STA $0807,y                 ; $20:EB42: 99 07 08    ;
CODE_20EB45:    ORA #$40                    ; $20:EB45: 09 40       ;
CODE_20EB47:    STA $080B,y                 ; $20:EB47: 99 0B 08    ;
CODE_20EB4A:    STA $080F,y                 ; $20:EB4A: 99 0F 08    ;
CODE_20EB4D:    TYA                         ; $20:EB4D: 98          ;
CODE_20EB4E:    LSR A                       ; $20:EB4E: 4A          ;
CODE_20EB4F:    LSR A                       ; $20:EB4F: 4A          ;
CODE_20EB50:    TAY                         ; $20:EB50: A8          ;
CODE_20EB51:    LDA #$00                    ; $20:EB51: A9 00       ;
CODE_20EB53:    STA $0A20,y                 ; $20:EB53: 99 20 0A    ;
CODE_20EB56:    STA $0A21,y                 ; $20:EB56: 99 21 0A    ;
CODE_20EB59:    STA $0A22,y                 ; $20:EB59: 99 22 0A    ;
CODE_20EB5C:    STA $0A23,y                 ; $20:EB5C: 99 23 0A    ;
CODE_20EB5F:    RTS                         ; $20:EB5F: 60          ;

CODE_20EB60:    LDA $BD                     ; $20:EB60: A5 BD       ;
CODE_20EB62:    AND #$02                    ; $20:EB62: 29 02       ;
CODE_20EB64:    BEQ CODE_20EB72             ; $20:EB64: F0 0C       ;
CODE_20EB66:    JSL CODE_23DEA3             ; $20:EB66: 22 A3 DE 23 ;
CODE_20EB6A:    LDY $BB                     ; $20:EB6A: A4 BB       ;
CODE_20EB6C:    LDA.w DATA_2199C7,y                 ; $20:EB6C: B9 C7 99    ;
CODE_20EB6F:    JMP CODE_20EBA7             ; $20:EB6F: 4C A7 EB    ;
CODE_20EB72:    LDA $BD                     ; $20:EB72: A5 BD       ;
CODE_20EB74:    AND #$01                    ; $20:EB74: 29 01       ;
CODE_20EB76:    TAY                         ; $20:EB76: A8          ;
CODE_20EB77:    LDA.w DATA_218ABF,y                 ; $20:EB77: B9 BF 8A    ;
CODE_20EB7A:    ORA $BD                     ; $20:EB7A: 05 BD       ;
CODE_20EB7C:    STA $BD                     ; $20:EB7C: 85 BD       ;
CODE_20EB7E:    JSL CODE_23DE53             ; $20:EB7E: 22 53 DE 23 ;
CODE_20EB82:    LDA $15                     ; $20:EB82: A5 15       ;
CODE_20EB84:    AND #$06                    ; $20:EB84: 29 06       ;
CODE_20EB86:    LSR A                       ; $20:EB86: 4A          ;
CODE_20EB87:    STA $00                     ; $20:EB87: 85 00       ;
CODE_20EB89:    LDY $0577                   ; $20:EB89: AC 77 05    ;
CODE_20EB8C:    BEQ CODE_20EB9D             ; $20:EB8C: F0 0F       ;
CODE_20EB8E:    ASL A                       ; $20:EB8E: 0A          ;
CODE_20EB8F:    AND #$02                    ; $20:EB8F: 29 02       ;
CODE_20EB91:    LDY $BB                     ; $20:EB91: A4 BB       ;
CODE_20EB93:    BEQ CODE_20EB97             ; $20:EB93: F0 02       ;
CODE_20EB95:    LDY #$01                    ; $20:EB95: A0 01       ;
CODE_20EB97:    CLC                         ; $20:EB97: 18          ;
CODE_20EB98:    ADC.w DATA_21E9A4,y                 ; $20:EB98: 79 A4 E9    ;
CODE_20EB9B:    BNE CODE_20EBA7             ; $20:EB9B: D0 0A       ;
CODE_20EB9D:    LDA $BB                     ; $20:EB9D: A5 BB       ;
CODE_20EB9F:    ASL A                       ; $20:EB9F: 0A          ;
CODE_20EBA0:    ASL A                       ; $20:EBA0: 0A          ;
CODE_20EBA1:    ORA $00                     ; $20:EBA1: 05 00       ;
CODE_20EBA3:    TAY                         ; $20:EBA3: A8          ;
CODE_20EBA4:    LDA.w DATA_21E958,y                 ; $20:EBA4: B9 58 E9    ;
CODE_20EBA7:    STA $BC                     ; $20:EBA7: 85 BC       ;
CODE_20EBA9:    JSL CODE_20E237             ; $20:EBA9: 22 37 E2 20 ;
CODE_20EBAD:    RTS                         ; $20:EBAD: 60          ;

PNTR_20EBAE:          dw CODE_20EBD5
               dw CODE_20EBD6
               dw CODE_20EBF1
               dw CODE_20EC17
               dw CODE_20EC6C
               dw CODE_20EC7A

CODE_20EBBA:    LDA #$08                ; $20:EBBA: A9 08       ;
CODE_20EBBC:    STA $1A45                   ; $20:EBBC: 8D 45 1A    ;
CODE_20EBBF:    LDA $0377                   ; $20:EBBF: AD 77 03    ;
CODE_20EBC2:    ASL A                       ; $20:EBC2: 0A          ;
CODE_20EBC3:    TAY                         ; $20:EBC3: A8          ;
CODE_20EBC4:    PHB                         ; $20:EBC4: 8B          ;
CODE_20EBC5:    PHK                         ; $20:EBC5: 4B          ;
CODE_20EBC6:    PLB                         ; $20:EBC6: AB          ;
CODE_20EBC7:    LDA PNTR_20EBAE,y                   ; $20:EBC7: B9 AE EB    ;
CODE_20EBCA:    STA $00                     ; $20:EBCA: 85 00       ;
CODE_20EBCC:    LDA PNTR_20EBAE+1,y                 ; $20:EBCC: B9 AF EB    ;
CODE_20EBCF:    STA $01                     ; $20:EBCF: 85 01       ;
CODE_20EBD1:    PLB                         ; $20:EBD1: AB          ;
CODE_20EBD2:    JMP ($0000)                 ; $20:EBD2: 6C 00 00    ;

CODE_20EBD5:    RTS                         ; $20:EBD5: 60          ;

CODE_20EBD6:    LDA #$83                    ; $20:EBD6: A9 83       ;
CODE_20EBD8:    STA $0571                   ; $20:EBD8: 8D 71 05    ;
CODE_20EBDB:    JSR CODE_20EF15             ; $20:EBDB: 20 15 EF    ;
CODE_20EBDE:    LDA $0510                   ; $20:EBDE: AD 10 05    ;
CODE_20EBE1:    BNE CODE_20EBE6             ; $20:EBE1: D0 03       ;
CODE_20EBE3:    JMP CODE_20EF2D             ; $20:EBE3: 4C 2D EF    ;
CODE_20EBE6:    CMP #$20                    ; $20:EBE6: C9 20       ;
CODE_20EBE8:    LDA $C4                     ; $20:EBE8: A5 C4       ;
CODE_20EBEA:    BCC CODE_20EBF0             ; $20:EBEA: 90 04       ;
CODE_20EBEC:    JSL CODE_20EAC5             ; $20:EBEC: 22 C5 EA 20 ;
CODE_20EBF0:    RTS                         ; $20:EBF0: 60          ;

CODE_20EBF1:    LDA #$82                    ; $20:EBF1: A9 82       ;
CODE_20EBF3:    STA $0571                   ; $20:EBF3: 8D 71 05    ;
CODE_20EBF6:    STA $A6                     ; $20:EBF6: 85 A6       ;
CODE_20EBF8:    LDA #$30                    ; $20:EBF8: A9 30       ;
CODE_20EBFA:    STA $9D                     ; $20:EBFA: 85 9D       ;
CODE_20EBFC:    JSL CODE_23DEA3             ; $20:EBFC: 22 A3 DE 23 ;
CODE_20EC00:    JSR CODE_20EF15             ; $20:EC00: 20 15 EF    ;
CODE_20EC03:    LDA $0510                   ; $20:EC03: AD 10 05    ;
CODE_20EC06:    BNE CODE_20EC16             ; $20:EC06: D0 0E       ;
CODE_20EC08:    LDA #$00                    ; $20:EC08: A9 00       ;
CODE_20EC0A:    STA $056F                   ; $20:EC0A: 8D 6F 05    ;
CODE_20EC0D:    STA $0571                   ; $20:EC0D: 8D 71 05    ;
CODE_20EC10:    STA $8B                     ; $20:EC10: 85 8B       ;
CODE_20EC12:    LDA #$38                    ; $20:EC12: A9 38       ;
CODE_20EC14:    STA $9D                     ; $20:EC14: 85 9D       ;
CODE_20EC16:    RTS                         ; $20:EC16: 60          ;

CODE_20EC17:    LDA #$80                    ; $20:EC17: A9 80       ;
CODE_20EC19:    STA $0571                   ; $20:EC19: 8D 71 05    ;
CODE_20EC1C:    LDA #$40                    ; $20:EC1C: A9 40       ;
CODE_20EC1E:    STA $BD                     ; $20:EC1E: 85 BD       ;
CODE_20EC20:    LDY #$00                    ; $20:EC20: A0 00       ;
CODE_20EC22:    LDA $15                     ; $20:EC22: A5 15       ;
CODE_20EC24:    LSR A                       ; $20:EC24: 4A          ;
CODE_20EC25:    BCC CODE_20EC56             ; $20:EC25: 90 2F       ;
CODE_20EC27:    LDA.w DATA_218AC5,y                 ; $20:EC27: B9 C5 8A    ;
CODE_20EC2A:    STA $25                     ; $20:EC2A: 85 25       ;
CODE_20EC2C:    LDA $0210                   ; $20:EC2C: AD 10 02    ;
CODE_20EC2F:    LDX $12                     ; $20:EC2F: A6 12       ;
CODE_20EC31:    BNE CODE_20EC37             ; $20:EC31: D0 04       ;
CODE_20EC33:    CMP #$80                    ; $20:EC33: C9 80       ;
CODE_20EC35:    BCC CODE_20EC56             ; $20:EC35: 90 1F       ;
CODE_20EC37:    CLC                         ; $20:EC37: 18          ;
CODE_20EC38:    ADC.w DATA_218AC7,y                 ; $20:EC38: 79 C7 8A    ;
CODE_20EC3B:    STA $0210                   ; $20:EC3B: 8D 10 02    ;
CODE_20EC3E:    STA $0212                   ; $20:EC3E: 8D 12 02    ;
CODE_20EC41:    LDA.w DATA_218AC9,y                 ; $20:EC41: B9 C9 8A    ;
CODE_20EC44:    ADC $12                     ; $20:EC44: 65 12       ;
CODE_20EC46:    STA $12                     ; $20:EC46: 85 12       ;
CODE_20EC48:    STA $0211                   ; $20:EC48: 8D 11 02    ;
CODE_20EC4B:    LSR A                       ; $20:EC4B: 4A          ;
CODE_20EC4C:    STA $0213                   ; $20:EC4C: 8D 13 02    ;
CODE_20EC4F:    LDA $0212                   ; $20:EC4F: AD 12 02    ;
CODE_20EC52:    ROR A                       ; $20:EC52: 6A          ;
CODE_20EC53:    STA $0212                   ; $20:EC53: 8D 12 02    ;
CODE_20EC56:    JSR CODE_20EEF2             ; $20:EC56: 20 F2 EE    ;
CODE_20EC59:    LDX $C4                     ; $20:EC59: A6 C4       ;
CODE_20EC5B:    LDA #$F0                    ; $20:EC5B: A9 F0       ;
CODE_20EC5D:    STA $0811,x                 ; $20:EC5D: 9D 11 08    ;
CODE_20EC60:    STA $0815,x                 ; $20:EC60: 9D 15 08    ;
CODE_20EC63:    LDA $0510                   ; $20:EC63: AD 10 05    ;
CODE_20EC66:    BNE CODE_20EC6B             ; $20:EC66: D0 03       ;
CODE_20EC68:    JSR CODE_20EF2D             ; $20:EC68: 20 2D EF    ;
CODE_20EC6B:    RTS                         ; $20:EC6B: 60          ;

CODE_20EC6C:    LDA #$81                    ; $20:EC6C: A9 81       ;
CODE_20EC6E:    STA $0571                   ; $20:EC6E: 8D 71 05    ;
CODE_20EC71:    LDA #$00                    ; $20:EC71: A9 00       ;
CODE_20EC73:    STA $BD                     ; $20:EC73: 85 BD       ;
CODE_20EC75:    LDY #$01                    ; $20:EC75: A0 01       ;
CODE_20EC77:    JMP CODE_20EC22             ; $20:EC77: 4C 22 EC    ;

CODE_20EC7A:    LDA $0425                   ; $20:EC7A: AD 25 04    ;
CODE_20EC7D:    BEQ CODE_20EC82             ; $20:EC7D: F0 03       ;
CODE_20EC7F:    JMP CODE_20ED06             ; $20:EC7F: 4C 06 ED    ;

CODE_20EC82:    LDA #$FE                    ; $20:EC82: A9 FE       ;
CODE_20EC84:    LDX #$01                    ; $20:EC84: A2 01       ;
CODE_20EC86:    LDY $9D                     ; $20:EC86: A4 9D       ;
CODE_20EC88:    BMI CODE_20EC8D             ; $20:EC88: 30 03       ;
CODE_20EC8A:    LDA #$02                    ; $20:EC8A: A9 02       ;
CODE_20EC8C:    DEX                         ; $20:EC8C: CA          ;
CODE_20EC8D:    STA $0780                   ; $20:EC8D: 8D 80 07    ;
CODE_20EC90:    CLC                         ; $20:EC90: 18          ;
CODE_20EC91:    ADC $0216                   ; $20:EC91: 6D 16 02    ;
CODE_20EC94:    STA $0216                   ; $20:EC94: 8D 16 02    ;
CODE_20EC97:    STA $0543                   ; $20:EC97: 8D 43 05    ;
CODE_20EC9A:    LDY $9D                     ; $20:EC9A: A4 9D       ;
CODE_20EC9C:    BPL CODE_20ECA4             ; $20:EC9C: 10 06       ;
CODE_20EC9E:    BCS CODE_20ECBF                     ; $20:EC9E: B0 1F       ;
CODE_20ECA0:    LDA #$00                    ; $20:ECA0: A9 00       ;
CODE_20ECA2:    BEQ CODE_20ECAA             ; $20:ECA2: F0 06       ;
CODE_20ECA4:    CMP #$EF                    ; $20:ECA4: C9 EF       ;
CODE_20ECA6:    BCC CODE_20ECBF             ; $20:ECA6: 90 17       ;
CODE_20ECA8:    LDA #$EF                    ; $20:ECA8: A9 EF       ;
CODE_20ECAA:    STA $0216                   ; $20:ECAA: 8D 16 02    ;
CODE_20ECAD:    LDA #$01                    ; $20:ECAD: A9 01       ;
CODE_20ECAF:    STA $0377                   ; $20:ECAF: 8D 77 03    ;
CODE_20ECB2:    LDY $9D                     ; $20:ECB2: A4 9D       ;
CODE_20ECB4:    BMI CODE_20ECB9             ; $20:ECB4: 30 03       ;
CODE_20ECB6:    INC $0377                   ; $20:ECB6: EE 77 03    ;
CODE_20ECB9:    JSL CODE_23C227             ; $20:ECB9: 22 27 C2 23 ;
CODE_20ECBD:    BRA CODE_20ECE8             ; $20:ECBD: 80 29       ;

CODE_20ECBF:    LDA.w DATA_218ACB,x                 ; $20:ECBF: BD CB 8A    ;
CODE_20ECC2:    STA $09                     ; $20:ECC2: 85 09       ;
CODE_20ECC4:    LDA #$08                    ; $20:ECC4: A9 08       ;
CODE_20ECC6:    STA $0A                     ; $20:ECC6: 85 0A       ;
CODE_20ECC8:    JSL CODE_23D2B6             ; $20:ECC8: 22 B6 D2 23 ;
CODE_20ECCC:    SEC                         ; $20:ECCC: 38          ;
CODE_20ECCD:    SBC #$B3                    ; $20:ECCD: E9 B3       ;
CODE_20ECCF:    CMP #$02                    ; $20:ECCF: C9 02       ;
CODE_20ECD1:    BCC CODE_20ECE8             ; $20:ECD1: 90 15       ;
CODE_20ECD3:    LDA #$10                    ; $20:ECD3: A9 10       ;
CODE_20ECD5:    CPX #$00                    ; $20:ECD5: E0 00       ;
CODE_20ECD7:    BEQ CODE_20ECDD             ; $20:ECD7: F0 04       ;
CODE_20ECD9:    DEC $55                     ; $20:ECD9: C6 55       ;
CODE_20ECDB:    LDA #$F0                    ; $20:ECDB: A9 F0       ;
CODE_20ECDD:    CLC                         ; $20:ECDD: 18          ;
CODE_20ECDE:    ADC $70                     ; $20:ECDE: 65 70       ;
CODE_20ECE0:    AND #$F0                    ; $20:ECE0: 29 F0       ;
CODE_20ECE2:    STA $70                     ; $20:ECE2: 85 70       ;
CODE_20ECE4:    BCC CODE_20ECE8             ; $20:ECE4: 90 02       ;
CODE_20ECE6:    INC $55                     ; $20:ECE6: E6 55       ;
CODE_20ECE8:    LDA $0216                   ; $20:ECE8: AD 16 02    ;
CODE_20ECEB:    LSR A                       ; $20:ECEB: 4A          ;
CODE_20ECEC:    LSR A                       ; $20:ECEC: 4A          ;
CODE_20ECED:    STA $0218                   ; $20:ECED: 8D 18 02    ;
CODE_20ECF0:    LDA $0216                   ; $20:ECF0: AD 16 02    ;
CODE_20ECF3:    SEC                         ; $20:ECF3: 38          ;
CODE_20ECF4:    SBC $0218                   ; $20:ECF4: ED 18 02    ;
CODE_20ECF7:    STA $0218                   ; $20:ECF7: 8D 18 02    ;
CODE_20ECFA:    LDA $034F                   ; $20:ECFA: AD 4F 03    ;
CODE_20ECFD:    BEQ CODE_20ED05             ; $20:ECFD: F0 06       ;
CODE_20ECFF:    LDA $0216                   ; $20:ECFF: AD 16 02    ;
CODE_20ED02:    STA $0218                   ; $20:ED02: 8D 18 02    ;
CODE_20ED05:    RTS                         ; $20:ED05: 60          ;

CODE_20ED06:    LDA $0571                   ; $20:ED06: AD 71 05    ;
CODE_20ED09:    AND #$03                    ; $20:ED09: 29 03       ;
CODE_20ED0B:    PHA                         ; $20:ED0B: 48          ;
CODE_20ED0C:    TAY                         ; $20:ED0C: A8          ;
CODE_20ED0D:    LDX #$00                    ; $20:ED0D: A2 00       ;
CODE_20ED0F:    CPY #$02                    ; $20:ED0F: C0 02       ;
CODE_20ED11:    BMI CODE_20ED2F             ; $20:ED11: 30 1C       ;
CODE_20ED13:    LDX #$12                    ; $20:ED13: A2 12       ;
CODE_20ED15:    LDA.w DATA_218ADD,y                 ; $20:ED15: B9 DD 8A    ;
CODE_20ED18:    BPL CODE_20ED27             ; $20:ED18: 10 0D       ;
CODE_20ED1A:    LDA $82                     ; $20:ED1A: A5 82       ;
CODE_20ED1C:    CMP #$68                    ; $20:ED1C: C9 68       ;
CODE_20ED1E:    LDA #$00                    ; $20:ED1E: A9 00       ;
CODE_20ED20:    BCC CODE_20ED32             ; $20:ED20: 90 10       ;
CODE_20ED22:    DEC $43,x                   ; $20:ED22: D6 43       ;
CODE_20ED24:    JMP CODE_20ED2F             ; $20:ED24: 4C 2F ED    ;

CODE_20ED27:    LDA $82                     ; $20:ED27: A5 82       ;
CODE_20ED29:    CMP #$38                    ; $20:ED29: C9 38       ;
CODE_20ED2B:    LDA #$00                    ; $20:ED2B: A9 00       ;
CODE_20ED2D:    BCS CODE_20ED32                     ; $20:ED2D: B0 03       ;
CODE_20ED2F:    LDA.w DATA_218ADD,y                 ; $20:ED2F: B9 DD 8A    ;
CODE_20ED32:    CLC                         ; $20:ED32: 18          ;
CODE_20ED33:    ADC $5E,x                   ; $20:ED33: 75 5E       ;
CODE_20ED35:    AND #$FE                    ; $20:ED35: 29 FE       ;
CODE_20ED37:    STA $5E,x                   ; $20:ED37: 95 5E       ;
CODE_20ED39:    BCC CODE_20ED3D             ; $20:ED39: 90 02       ;
CODE_20ED3B:    INC $43,x                   ; $20:ED3B: F6 43       ;
CODE_20ED3D:    AND #$0F                    ; $20:ED3D: 29 0F       ;
CODE_20ED3F:    TAX                         ; $20:ED3F: AA          ;
CODE_20ED40:    CPY #$02                    ; $20:ED40: C0 02       ;
CODE_20ED42:    BMI CODE_20ED95             ; $20:ED42: 30 51       ;
CODE_20ED44:    LDA $5E                     ; $20:ED44: A5 5E       ;
CODE_20ED46:    AND #$F0                    ; $20:ED46: 29 F0       ;
CODE_20ED48:    ORA #$08                    ; $20:ED48: 09 08       ;
CODE_20ED4A:    STA $5E                     ; $20:ED4A: 85 5E       ;
CODE_20ED4C:    LDA #$01                    ; $20:ED4C: A9 01       ;
CODE_20ED4E:    STA $25                     ; $20:ED4E: 85 25       ;
CODE_20ED50:    LDA.w DATA_218ADD,y                 ; $20:ED50: B9 DD 8A    ;
CODE_20ED53:    BPL CODE_20ED5A             ; $20:ED53: 10 05       ;
CODE_20ED55:    DEC $25                     ; $20:ED55: C6 25       ;
CODE_20ED57:    DEC $0542                   ; $20:ED57: CE 42 05    ;
CODE_20ED5A:    STA $0780                   ; $20:ED5A: 8D 80 07    ;
CODE_20ED5D:    CLC                         ; $20:ED5D: 18          ;
CODE_20ED5E:    ADC $0543                   ; $20:ED5E: 6D 43 05    ;
CODE_20ED61:    STA $0543                   ; $20:ED61: 8D 43 05    ;
CODE_20ED64:    BCC CODE_20ED69             ; $20:ED64: 90 03       ;
CODE_20ED66:    INC $0542                   ; $20:ED66: EE 42 05    ;
CODE_20ED69:    STA $0216                   ; $20:ED69: 8D 16 02    ;
CODE_20ED6C:    LDY $0542                   ; $20:ED6C: AC 42 05    ;
CODE_20ED6F:    STY $0217                   ; $20:ED6F: 8C 17 02    ;
CODE_20ED72:    STY $13                     ; $20:ED72: 84 13       ;
CODE_20ED74:    STY $0219                   ; $20:ED74: 8C 19 02    ;
CODE_20ED77:    REP #$20                    ; $20:ED77: C2 20       ;
CODE_20ED79:    LDA $0216                   ; $20:ED79: AD 16 02    ;
CODE_20ED7C:    LSR A                       ; $20:ED7C: 4A          ;
CODE_20ED7D:    LSR A                       ; $20:ED7D: 4A          ;
CODE_20ED7E:    STA $0218                   ; $20:ED7E: 8D 18 02    ;
CODE_20ED81:    LDA $0216                   ; $20:ED81: AD 16 02    ;
CODE_20ED84:    SEC                         ; $20:ED84: 38          ;
CODE_20ED85:    SBC $0218                   ; $20:ED85: ED 18 02    ;
CODE_20ED88:    STA $0218                   ; $20:ED88: 8D 18 02    ;
CODE_20ED8B:    SEP #$20                    ; $20:ED8B: E2 20       ;
CODE_20ED8D:    LDA $70                     ; $20:ED8D: A5 70       ;
CODE_20ED8F:    SEC                         ; $20:ED8F: 38          ;
CODE_20ED90:    SBC $0543                   ; $20:ED90: ED 43 05    ;
CODE_20ED93:    STA $82                     ; $20:ED93: 85 82       ;
CODE_20ED95:    PLA                         ; $20:ED95: 68          ;
CODE_20ED96:    CPX #$00                    ; $20:ED96: E0 00       ;
CODE_20ED98:    BNE CODE_20EDE0             ; $20:ED98: D0 46       ;
CODE_20ED9A:    ASL A                       ; $20:ED9A: 0A          ;
CODE_20ED9B:    ASL A                       ; $20:ED9B: 0A          ;
CODE_20ED9C:    LDX #$01                    ; $20:ED9C: A2 01       ;
CODE_20ED9E:    TAY                         ; $20:ED9E: A8          ;
CODE_20ED9F:    LDA.w DATA_218ACD,y                 ; $20:ED9F: B9 CD 8A    ;
CODE_20EDA2:    STA $09                     ; $20:EDA2: 85 09       ;
CODE_20EDA4:    LDA.w DATA_218ACD+1,y                   ; $20:EDA4: B9 CE 8A    ;
CODE_20EDA7:    STA $0A                     ; $20:EDA7: 85 0A       ;
CODE_20EDA9:    JSL CODE_23D2B6             ; $20:EDA9: 22 B6 D2 23 ;
CODE_20EDAD:    STA $00                     ; $20:EDAD: 85 00       ;
CODE_20EDAF:    SEC                         ; $20:EDAF: 38          ;
CODE_20EDB0:    SBC #$92                    ; $20:EDB0: E9 92       ;
CODE_20EDB2:    CMP #$02                    ; $20:EDB2: C9 02       ;
CODE_20EDB4:    BCS CODE_20EDB9                     ; $20:EDB4: B0 03       ;
CODE_20EDB6:    JMP CODE_20EDE1             ; $20:EDB6: 4C E1 ED    ;

CODE_20EDB9:    LDA $00                     ; $20:EDB9: A5 00       ;
CODE_20EDBB:    CMP #$9E                    ; $20:EDBB: C9 9E       ;
CODE_20EDBD:    BNE CODE_20EDC2             ; $20:EDBD: D0 03       ;
CODE_20EDBF:    JMP CODE_20EDE1             ; $20:EDBF: 4C E1 ED    ;

CODE_20EDC2:    LDA $00                     ; $20:EDC2: A5 00       ;
CODE_20EDC4:    SEC                         ; $20:EDC4: 38          ;
CODE_20EDC5:    SBC #$50                    ; $20:EDC5: E9 50       ;
CODE_20EDC7:    CMP #$04                    ; $20:EDC7: C9 04       ;
CODE_20EDC9:    BCS CODE_20EDDB                     ; $20:EDC9: B0 10       ;
CODE_20EDCB:    STX $00                     ; $20:EDCB: 86 00       ;
CODE_20EDCD:    LDA $0571                   ; $20:EDCD: AD 71 05    ;
CODE_20EDD0:    AND #$82                    ; $20:EDD0: 29 82       ;
CODE_20EDD2:    EOR #$02                    ; $20:EDD2: 49 02       ;
CODE_20EDD4:    ORA $00                     ; $20:EDD4: 05 00       ;
CODE_20EDD6:    STA $0571                   ; $20:EDD6: 8D 71 05    ;
CODE_20EDD9:    LDX #$00                    ; $20:EDD9: A2 00       ;
CODE_20EDDB:    INY                         ; $20:EDDB: C8          ;
CODE_20EDDC:    INY                         ; $20:EDDC: C8          ;
CODE_20EDDD:    DEX                         ; $20:EDDD: CA          ;
CODE_20EDDE:    BPL CODE_20ED9F             ; $20:EDDE: 10 BF       ;
CODE_20EDE0:    RTS                         ; $20:EDE0: 60          ;

CODE_20EDE1:    LDA $0571                   ; $20:EDE1: AD 71 05    ;
CODE_20EDE4:    AND #$03                    ; $20:EDE4: 29 03       ;
CODE_20EDE6:    TAY                         ; $20:EDE6: A8          ;
CODE_20EDE7:    BNE CODE_20EDF0             ; $20:EDE7: D0 07       ;
CODE_20EDE9:    LDA $5E                     ; $20:EDE9: A5 5E       ;
CODE_20EDEB:    CLC                         ; $20:EDEB: 18          ;
CODE_20EDEC:    ADC #$10                    ; $20:EDEC: 69 10       ;
CODE_20EDEE:    STA $5E                     ; $20:EDEE: 85 5E       ;
CODE_20EDF0:    LDA.w DATA_218AE1,y                 ; $20:EDF0: B9 E1 8A    ;
CODE_20EDF3:    STA $0377                   ; $20:EDF3: 8D 77 03    ;
CODE_20EDF6:    JSL CODE_23C227             ; $20:EDF6: 22 27 C2 23 ;
CODE_20EDFA:    RTS                         ; $20:EDFA: 60          ;

PNTR_20EDFB:        dw CODE_20EBD5
                    dw CODE_20EE16
                    dw CODE_20EE3F
                    dw CODE_20EE5A

CODE_20EE03:    LDA $BF                     ; $20:EE03: A5 BF       ;
CODE_20EE05:    ASL A                       ; $20:EE05: 0A          ;
CODE_20EE06:    TAX                         ; $20:EE06: AA          ;
CODE_20EE07:    LDA.l PNTR_20EDFB,x                 ; $20:EE07: BF FB ED 20 ;
CODE_20EE0B:    STA $00                     ; $20:EE0B: 85 00       ;
CODE_20EE0D:    LDA.l PNTR_20EDFB+1,x               ; $20:EE0D: BF FC ED 20 ;
CODE_20EE11:    STA $01                     ; $20:EE11: 85 01       ;
CODE_20EE13:    JMP ($0000)                 ; $20:EE13: 6C 00 00    ;

CODE_20EE16:    LDA $0544                   ; $20:EE16: AD 44 05    ;
CODE_20EE19:    BNE CODE_20EE23             ; $20:EE19: D0 08       ;
CODE_20EE1B:    LDA $82                     ; $20:EE1B: A5 82       ;
CODE_20EE1D:    AND #$F0                    ; $20:EE1D: 29 F0       ;
CODE_20EE1F:    CMP #$B0                    ; $20:EE1F: C9 B0       ;
CODE_20EE21:    BEQ CODE_20EE2E             ; $20:EE21: F0 0B       ;
CODE_20EE23:    LDA $0510                   ; $20:EE23: AD 10 05    ;
CODE_20EE26:    BNE CODE_20EE2B             ; $20:EE26: D0 03       ;
CODE_20EE28:    JMP CODE_20EEDF             ; $20:EE28: 4C DF EE    ;

CODE_20EE2B:    JMP CODE_20EEE9             ; $20:EE2B: 4C E9 EE    ;

CODE_20EE2E:    LDA $0510                   ; $20:EE2E: AD 10 05    ;
CODE_20EE31:    BNE CODE_20EE38             ; $20:EE31: D0 05       ;
CODE_20EE33:    LDA #$40                    ; $20:EE33: A9 40       ;
CODE_20EE35:    STA $0510                   ; $20:EE35: 8D 10 05    ;
CODE_20EE38:    CMP #$01                    ; $20:EE38: C9 01       ;
CODE_20EE3A:    BNE CODE_20EE3E             ; $20:EE3A: D0 02       ;
CODE_20EE3C:    BEQ CODE_20EE44             ; $20:EE3C: F0 06       ;
CODE_20EE3E:    RTS                         ; $20:EE3E: 60          ;

CODE_20EE3F:    LDA $0510                   ; $20:EE3F: AD 10 05    ;
CODE_20EE42:    BNE CODE_20EE4B             ; $20:EE42: D0 07       ;
CODE_20EE44:    INC $14                     ; $20:EE44: E6 14       ;
CODE_20EE46:    LDA #$01                    ; $20:EE46: A9 01       ;
CODE_20EE48:    STA $0713                   ; $20:EE48: 8D 13 07    ;
CODE_20EE4B:    RTS                         ; $20:EE4B: 60          ;

DATA_20EE4C:        db $00,$02,$04,$06,$FF,$2C,$2E

DATA_20EE53:        db $60,$68,$70,$78,$80,$88,$90

CODE_20EE5A:    LDA $0544               ; $20:EE5A: AD 44 05    ;
CODE_20EE5D:    BNE CODE_20EE67         ; $20:EE5D: D0 08       ;
CODE_20EE5F:    LDA $82                     ; $20:EE5F: A5 82       ;
CODE_20EE61:    AND #$F0                    ; $20:EE61: 29 F0       ;
CODE_20EE63:    CMP #$B0                    ; $20:EE63: C9 B0       ;
CODE_20EE65:    BEQ CODE_20EE72             ; $20:EE65: F0 0B       ;
CODE_20EE67:    LDA $0510                   ; $20:EE67: AD 10 05    ;
CODE_20EE6A:    BNE CODE_20EE6F             ; $20:EE6A: D0 03       ;
CODE_20EE6C:    JMP CODE_20EEDF             ; $20:EE6C: 4C DF EE    ;

CODE_20EE6F:    JMP CODE_20EEE9             ; $20:EE6F: 4C E9 EE    ;

CODE_20EE72:    DEC $53                     ; $20:EE72: C6 53       ;
CODE_20EE74:    LDA $52                     ; $20:EE74: A5 52       ;
CODE_20EE76:    CMP #$60                    ; $20:EE76: C9 60       ;
CODE_20EE78:    BCC CODE_20EE84             ; $20:EE78: 90 0A       ;
CODE_20EE7A:    CLC                         ; $20:EE7A: 18          ;
CODE_20EE7B:    ADC $53                     ; $20:EE7B: 65 53       ;
CODE_20EE7D:    STA $52                     ; $20:EE7D: 85 52       ;
CODE_20EE7F:    LDA #$70                    ; $20:EE7F: A9 70       ;
CODE_20EE81:    STA $0510                   ; $20:EE81: 8D 10 05    ;
CODE_20EE84:    LDA $0510                   ; $20:EE84: AD 10 05    ;
CODE_20EE87:    BEQ CODE_20EE44             ; $20:EE87: F0 BB       ;
CODE_20EE89:    LDA #$A2                    ; $20:EE89: A9 A2       ;
CODE_20EE8B:    STA $BC                     ; $20:EE8B: 85 BC       ;
CODE_20EE8D:    JSL CODE_22E000             ; $20:EE8D: 22 00 E0 22 ;
CODE_20EE91:    LDX #$06                    ; $20:EE91: A2 06       ;
CODE_20EE93:    LDY $C4                     ; $20:EE93: A4 C4       ;
CODE_20EE95:    LDA.l DATA_20EE4C,x                 ; $20:EE95: BF 4C EE 20 ;
CODE_20EE99:    CMP #$FF                    ; $20:EE99: C9 FF       ;
CODE_20EE9B:    BEQ CODE_20EEB3             ; $20:EE9B: F0 16       ;
CODE_20EE9D:    STA $0802,y                 ; $20:EE9D: 99 02 08    ;
CODE_20EEA0:    INC A                       ; $20:EEA0: 1A          ;
CODE_20EEA1:    STA $0806,y                 ; $20:EEA1: 99 06 08    ;
CODE_20EEA4:    LDA $52                     ; $20:EEA4: A5 52       ;
CODE_20EEA6:    CMP #$E0                    ; $20:EEA6: C9 E0       ;
CODE_20EEA8:    BCS CODE_20EEB3                     ; $20:EEA8: B0 09       ;
CODE_20EEAA:    STA $0801,y                 ; $20:EEAA: 99 01 08    ;
CODE_20EEAD:    CLC                         ; $20:EEAD: 18          ;
CODE_20EEAE:    ADC #$08                    ; $20:EEAE: 69 08       ;
CODE_20EEB0:    STA $0805,y                 ; $20:EEB0: 99 05 08    ;
CODE_20EEB3:    LDA.l DATA_20EE53,x                 ; $20:EEB3: BF 53 EE 20 ;
CODE_20EEB7:    STA $0800,y                 ; $20:EEB7: 99 00 08    ;
CODE_20EEBA:    STA $0804,y                 ; $20:EEBA: 99 04 08    ;
CODE_20EEBD:    LDA #$32                    ; $20:EEBD: A9 32       ;
CODE_20EEBF:    STA $0803,y                 ; $20:EEBF: 99 03 08    ;
CODE_20EEC2:    STA $0807,y                 ; $20:EEC2: 99 07 08    ;
CODE_20EEC5:    PHY                         ; $20:EEC5: 5A          ;
CODE_20EEC6:    TYA                         ; $20:EEC6: 98          ;
CODE_20EEC7:    LSR A                       ; $20:EEC7: 4A          ;
CODE_20EEC8:    LSR A                       ; $20:EEC8: 4A          ;
CODE_20EEC9:    TAY                         ; $20:EEC9: A8          ;
CODE_20EECA:    LDA #$00                    ; $20:EECA: A9 00       ;
CODE_20EECC:    STA $0A20,y                 ; $20:EECC: 99 20 0A    ;
CODE_20EECF:    STA $0A21,y                 ; $20:EECF: 99 21 0A    ;
CODE_20EED2:    PLY                         ; $20:EED2: 7A          ;
CODE_20EED3:    INY                         ; $20:EED3: C8          ;
CODE_20EED4:    INY                         ; $20:EED4: C8          ;
CODE_20EED5:    INY                         ; $20:EED5: C8          ;
CODE_20EED6:    INY                         ; $20:EED6: C8          ;
CODE_20EED7:    INY                         ; $20:EED7: C8          ;
CODE_20EED8:    INY                         ; $20:EED8: C8          ;
CODE_20EED9:    INY                         ; $20:EED9: C8          ;
CODE_20EEDA:    INY                         ; $20:EEDA: C8          ;
CODE_20EEDB:    DEX                         ; $20:EEDB: CA          ;
CODE_20EEDC:    BPL CODE_20EE95             ; $20:EEDC: 10 B7       ;
CODE_20EEDE:    RTS                         ; $20:EEDE: 60          ;

CODE_20EEDF:    INC $9D                     ; $20:EEDF: E6 9D       ;
CODE_20EEE1:    INC $9D                     ; $20:EEE1: E6 9D       ;
CODE_20EEE3:    LDX #$00                    ; $20:EEE3: A2 00       ;
CODE_20EEE5:    JSL CODE_23DEA3             ; $20:EEE5: 22 A3 DE 23 ;
CODE_20EEE9:    LDA #$96                    ; $20:EEE9: A9 96       ;
CODE_20EEEB:    STA $BC                     ; $20:EEEB: 85 BC       ;
CODE_20EEED:    JSL CODE_20E237             ; $20:EEED: 22 37 E2 20 ;
CODE_20EEF1:    RTS                         ; $20:EEF1: 60          ;

CODE_20EEF2:    LDA $0571                   ; $20:EEF2: AD 71 05    ;
CODE_20EEF5:    AND #$01                    ; $20:EEF5: 29 01       ;
CODE_20EEF7:    TAY                         ; $20:EEF7: A8          ;
CODE_20EEF8:    LDA.w DATA_218AC1,y                 ; $20:EEF8: B9 C1 8A    ;
CODE_20EEFB:    STA $8B                     ; $20:EEFB: 85 8B       ;
CODE_20EEFD:    JSL CODE_23DE53             ; $20:EEFD: 22 53 DE 23 ;
CODE_20EF01:    DEC $70                     ; $20:EF01: C6 70       ;
CODE_20EF03:    DEC $70                     ; $20:EF03: C6 70       ;
CODE_20EF05:    LDA $15                     ; $20:EF05: A5 15       ;
CODE_20EF07:    AND #$0C                    ; $20:EF07: 29 0C       ;
CODE_20EF09:    LSR A                       ; $20:EF09: 4A          ;
CODE_20EF0A:    LSR A                       ; $20:EF0A: 4A          ;
CODE_20EF0B:    STA $00                     ; $20:EF0B: 85 00       ;
CODE_20EF0D:    JSR CODE_20EB89             ; $20:EF0D: 20 89 EB    ;
CODE_20EF10:    INC $70                     ; $20:EF10: E6 70       ;
CODE_20EF12:    INC $70                     ; $20:EF12: E6 70       ;
CODE_20EF14:    RTS                         ; $20:EF14: 60          ;

CODE_20EF15:    LDA $0571                   ; $20:EF15: AD 71 05    ;
CODE_20EF18:    AND #$01                    ; $20:EF18: 29 01       ;
CODE_20EF1A:    TAY                         ; $20:EF1A: A8          ;
CODE_20EF1B:    LDA.w DATA_218AC3,y                 ; $20:EF1B: B9 C3 8A    ;
CODE_20EF1E:    STA $9D                     ; $20:EF1E: 85 9D       ;
CODE_20EF20:    JSL CODE_23DEA3             ; $20:EF20: 22 A3 DE 23 ;
CODE_20EF24:    JSL CODE_23DDBB             ; $20:EF24: 22 BB DD 23 ;
CODE_20EF28:    JSL CODE_20E237             ; $20:EF28: 22 37 E2 20 ;
CODE_20EF2C:    RTS                         ; $20:EF2C: 60          ;

CODE_20EF2D:    LDA #$00                    ; $20:EF2D: A9 00       ;
CODE_20EF2F:    STA $0571                   ; $20:EF2F: 8D 71 05    ;
CODE_20EF32:    STA $8B                     ; $20:EF32: 85 8B       ;
CODE_20EF34:    STA $9D                     ; $20:EF34: 85 9D       ;
CODE_20EF36:    STA $A6                     ; $20:EF36: 85 A6       ;
CODE_20EF38:    RTS                         ; $20:EF38: 60          ;

CODE_20EF39:    DEC $0554                   ; $20:EF39: CE 54 05    ;
CODE_20EF3C:    AND #$0C                    ; $20:EF3C: 29 0C       ;
CODE_20EF3E:    LSR A                       ; $20:EF3E: 4A          ;
CODE_20EF3F:    LSR A                       ; $20:EF3F: 4A          ;
CODE_20EF40:    TAY                         ; $20:EF40: A8          ;
CODE_20EF41:    LDA.w DATA_218AE5,y                 ; $20:EF41: B9 E5 8A    ;
CODE_20EF44:    STA $01                     ; $20:EF44: 85 01       ;
CODE_20EF46:    REP #$10                    ; $20:EF46: C2 10       ;
CODE_20EF48:    LDY $C4                     ; $20:EF48: A4 C4       ;
CODE_20EF4A:    LDA #$C2                    ; $20:EF4A: A9 C2       ;
CODE_20EF4C:    STA $00                     ; $20:EF4C: 85 00       ;
CODE_20EF4E:    LDA $82                     ; $20:EF4E: A5 82       ;
CODE_20EF50:    CLC                         ; $20:EF50: 18          ;
CODE_20EF51:    ADC #$08                    ; $20:EF51: 69 08       ;
CODE_20EF53:    STA $0801,y                 ; $20:EF53: 99 01 08    ;
CODE_20EF56:    CLC                         ; $20:EF56: 18          ;
CODE_20EF57:    ADC #$08                    ; $20:EF57: 69 08       ;
CODE_20EF59:    STA $0805,y                 ; $20:EF59: 99 05 08    ;
CODE_20EF5C:    LDA $0070                   ; $20:EF5C: AD 70 00    ;
CODE_20EF5F:    SEC                         ; $20:EF5F: 38          ;
CODE_20EF60:    SBC $0216                   ; $20:EF60: ED 16 02    ;
CODE_20EF63:    LDA $0055                   ; $20:EF63: AD 55 00    ;
CODE_20EF66:    SBC $0217                   ; $20:EF66: ED 17 02    ;
CODE_20EF69:    BPL CODE_20EF73             ; $20:EF69: 10 08       ;
CODE_20EF6B:    LDA #$F0                    ; $20:EF6B: A9 F0       ;
CODE_20EF6D:    STA $0801,y                 ; $20:EF6D: 99 01 08    ;
CODE_20EF70:    STA $0805,y                 ; $20:EF70: 99 05 08    ;
CODE_20EF73:    LDA $01                     ; $20:EF73: A5 01       ;
CODE_20EF75:    STA $0802,y                 ; $20:EF75: 99 02 08    ;
CODE_20EF78:    INC A                       ; $20:EF78: 1A          ;
CODE_20EF79:    STA $0806,y                 ; $20:EF79: 99 06 08    ;
CODE_20EF7C:    PHX                         ; $20:EF7C: DA          ;
CODE_20EF7D:    LDA #$20                    ; $20:EF7D: A9 20       ;
CODE_20EF7F:    LDX $0588                   ; $20:EF7F: AE 88 05    ;
CODE_20EF82:    BEQ CODE_20EF86             ; $20:EF82: F0 02       ;
CODE_20EF84:    LDA #$10                    ; $20:EF84: A9 10       ;
CODE_20EF86:    ORA $00                     ; $20:EF86: 05 00       ;
CODE_20EF88:    STA $0803,y                 ; $20:EF88: 99 03 08    ;
CODE_20EF8B:    STA $0807,y                 ; $20:EF8B: 99 07 08    ;
CODE_20EF8E:    AND #$80                    ; $20:EF8E: 29 80       ;
CODE_20EF90:    BEQ CODE_20EFA0             ; $20:EF90: F0 0E       ;
CODE_20EF92:    LDA $0802,y                 ; $20:EF92: B9 02 08    ;
CODE_20EF95:    PHA                         ; $20:EF95: 48          ;
CODE_20EF96:    LDA $0806,y                 ; $20:EF96: B9 06 08    ;
CODE_20EF99:    STA $0802,y                 ; $20:EF99: 99 02 08    ;
CODE_20EF9C:    PLA                         ; $20:EF9C: 68          ;
CODE_20EF9D:    STA $0806,y                 ; $20:EF9D: 99 06 08    ;
CODE_20EFA0:    PLX                         ; $20:EFA0: FA          ;
CODE_20EFA1:    LDA $5E                     ; $20:EFA1: A5 5E       ;
CODE_20EFA3:    SEC                         ; $20:EFA3: 38          ;
CODE_20EFA4:    SBC $0210                   ; $20:EFA4: ED 10 02    ;
CODE_20EFA7:    STA $0800,y                 ; $20:EFA7: 99 00 08    ;
CODE_20EFAA:    STA $0804,y                 ; $20:EFAA: 99 04 08    ;
CODE_20EFAD:    LDA $00                     ; $20:EFAD: A5 00       ;
CODE_20EFAF:    AND #$F0                    ; $20:EFAF: 29 F0       ;
CODE_20EFB1:    BEQ CODE_20EFBF             ; $20:EFB1: F0 0C       ;
CODE_20EFB3:    LDA $0800,y                 ; $20:EFB3: B9 00 08    ;
CODE_20EFB6:    CLC                         ; $20:EFB6: 18          ;
CODE_20EFB7:    ADC #$08                    ; $20:EFB7: 69 08       ;
CODE_20EFB9:    STA $0800,y                 ; $20:EFB9: 99 00 08    ;
CODE_20EFBC:    STA $0804,y                 ; $20:EFBC: 99 04 08    ;
CODE_20EFBF:    PHY                         ; $20:EFBF: 5A          ;
CODE_20EFC0:    REP #$20                    ; $20:EFC0: C2 20       ;
CODE_20EFC2:    TYA                         ; $20:EFC2: 98          ;
CODE_20EFC3:    LSR A                       ; $20:EFC3: 4A          ;
CODE_20EFC4:    LSR A                       ; $20:EFC4: 4A          ;
CODE_20EFC5:    TAY                         ; $20:EFC5: A8          ;
CODE_20EFC6:    SEP #$20                    ; $20:EFC6: E2 20       ;
CODE_20EFC8:    LDA #$00                    ; $20:EFC8: A9 00       ;
CODE_20EFCA:    STA $0A20,y                 ; $20:EFCA: 99 20 0A    ;
CODE_20EFCD:    STA $0A21,y                 ; $20:EFCD: 99 21 0A    ;
CODE_20EFD0:    PLY                         ; $20:EFD0: 7A          ;
CODE_20EFD1:    INY                         ; $20:EFD1: C8          ;
CODE_20EFD2:    INY                         ; $20:EFD2: C8          ;
CODE_20EFD3:    INY                         ; $20:EFD3: C8          ;
CODE_20EFD4:    INY                         ; $20:EFD4: C8          ;
CODE_20EFD5:    INY                         ; $20:EFD5: C8          ;
CODE_20EFD6:    INY                         ; $20:EFD6: C8          ;
CODE_20EFD7:    INY                         ; $20:EFD7: C8          ;
CODE_20EFD8:    INY                         ; $20:EFD8: C8          ;
CODE_20EFD9:    LDA $00                     ; $20:EFD9: A5 00       ;
CODE_20EFDB:    SEC                         ; $20:EFDB: 38          ;
CODE_20EFDC:    SBC #$C0                    ; $20:EFDC: E9 C0       ;
CODE_20EFDE:    STA $00                     ; $20:EFDE: 85 00       ;
CODE_20EFE0:    BCC CODE_20EFE5             ; $20:EFE0: 90 03       ;
CODE_20EFE2:    JMP CODE_20EF4E             ; $20:EFE2: 4C 4E EF    ;

CODE_20EFE5:    SEP #$10                    ; $20:EFE5: E2 10       ;
CODE_20EFE7:    RTS                         ; $20:EFE7: 60          ;

DATA_20EFE8:        db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
                    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_20F000:    LDA $4210                   ; $20:F000: AD 10 42    ;
CODE_20F003:    LDA $02                     ; $20:F003: A5 02       ;
CODE_20F005:    PHA                         ; $20:F005: 48          ;
CODE_20F006:    LDA #$80                    ; $20:F006: A9 80       ;
CODE_20F008:    STA $2100                   ; $20:F008: 8D 00 21    ;
CODE_20F00B:    STZ $420C                   ; $20:F00B: 9C 0C 42    ;
CODE_20F00E:    LDA $021E                   ; $20:F00E: AD 1E 02    ;
CODE_20F011:    STA $2101                   ; $20:F011: 8D 01 21    ;
CODE_20F014:    LDA $0427                   ; $20:F014: AD 27 04    ;
CODE_20F017:    BEQ CODE_20F02A             ; $20:F017: F0 11       ;
CODE_20F019:    AND #$7F                    ; $20:F019: 29 7F       ;
CODE_20F01B:    TAX                         ; $20:F01B: AA          ;
CODE_20F01C:    LDA.l DATA_21CEC3,x                 ; $20:F01C: BF C3 CE 21 ;
CODE_20F020:    STA $0100                   ; $20:F020: 8D 00 01    ;
CODE_20F023:    LDA.l DATA_21CECB,x                 ; $20:F023: BF CB CE 21 ;
CODE_20F027:    STA $0101                   ; $20:F027: 8D 01 01    ;
CODE_20F02A:    LDA $7E3955                 ; $20:F02A: AF 55 39 7E ;
CODE_20F02E:    BEQ CODE_20F033             ; $20:F02E: F0 03       ;
CODE_20F030:    JMP CODE_20F0BA             ; $20:F030: 4C BA F0    ;

CODE_20F033:    LDA $0100                   ; $20:F033: AD 00 01    ;
CODE_20F036:    BNE CODE_20F03B             ; $20:F036: D0 03       ;
CODE_20F038:    JMP CODE_20F11A             ; $20:F038: 4C 1A F1    ;

CODE_20F03B:    CMP #$80                    ; $20:F03B: C9 80       ;
CODE_20F03D:    BNE CODE_20F042             ; $20:F03D: D0 03       ;
CODE_20F03F:    JMP CODE_20F0CF             ; $20:F03F: 4C CF F0    ;

CODE_20F042:    CMP #$40                    ; $20:F042: C9 40       ;
CODE_20F044:    BNE CODE_20F049             ; $20:F044: D0 03       ;
CODE_20F046:    JMP CODE_20F25A             ; $20:F046: 4C 5A F2    ;

CODE_20F049:    CMP #$A0                    ; $20:F049: C9 A0       ;
CODE_20F04B:    BNE CODE_20F050             ; $20:F04B: D0 03       ;
CODE_20F04D:    JMP CODE_20F141             ; $20:F04D: 4C 41 F1    ;

CODE_20F050:    CMP #$20                    ; $20:F050: C9 20       ;
CODE_20F052:    BNE CODE_20F057             ; $20:F052: D0 03       ;
CODE_20F054:    JMP CODE_20F18C             ; $20:F054: 4C 8C F1    ;

CODE_20F057:    CMP #$95                    ; $20:F057: C9 95       ;
CODE_20F059:    BNE CODE_20F05E             ; $20:F059: D0 03       ;
CODE_20F05B:    JMP CODE_20F1C0             ; $20:F05B: 4C C0 F1    ;

CODE_20F05E:    JSR CODE_20F650             ; $20:F05E: 20 50 F6    ;
CODE_20F061:    LDA $0154                   ; $20:F061: AD 54 01    ;
CODE_20F064:    BNE CODE_20F08F             ; $20:F064: D0 29       ;
CODE_20F066:    JSL CODE_29E953             ; $20:F066: 22 53 E9 29 ;
CODE_20F06A:    LDA $02BB                   ; $20:F06A: AD BB 02    ;
CODE_20F06D:    BEQ CODE_20F074             ; $20:F06D: F0 05       ;
CODE_20F06F:    JSR CODE_20FF06             ; $20:F06F: 20 06 FF    ;
CODE_20F072:    STZ $28                     ; $20:F072: 64 28       ;
CODE_20F074:    JSL CODE_29E8AB             ; $20:F074: 22 AB E8 29 ;
CODE_20F078:    JSL CODE_29EA69             ; $20:F078: 22 69 EA 29 ;
CODE_20F07C:    LDA $28                     ; $20:F07C: A5 28       ;
CODE_20F07E:    BNE CODE_20F08D             ; $20:F07E: D0 0D       ;
CODE_20F080:    STZ $1600                   ; $20:F080: 9C 00 16    ;
CODE_20F083:    STZ $1601                   ; $20:F083: 9C 01 16    ;
CODE_20F086:    DEC A                       ; $20:F086: 3A          ;
CODE_20F087:    STA $1602                   ; $20:F087: 8D 02 16    ;
CODE_20F08A:    STA $1603                   ; $20:F08A: 8D 03 16    ;
CODE_20F08D:    STZ $28                     ; $20:F08D: 64 28       ;
CODE_20F08F:    JSR CODE_20F20B             ; $20:F08F: 20 0B F2    ;
CODE_20F092:    JSR CODE_20FCBF             ; $20:F092: 20 BF FC    ;
CODE_20F095:    LDA $4211                   ; $20:F095: AD 11 42    ;
CODE_20F098:    LDA #$C0                    ; $20:F098: A9 C0       ;
CODE_20F09A:    STA $4209                   ; $20:F09A: 8D 09 42    ;
CODE_20F09D:    STZ $420A                   ; $20:F09D: 9C 0A 42    ;
CODE_20F0A0:    STZ $4207                   ; $20:F0A0: 9C 07 42    ;
CODE_20F0A3:    STZ $4208                   ; $20:F0A3: 9C 08 42    ;
CODE_20F0A6:    LDA #$A1                    ; $20:F0A6: A9 A1       ;
CODE_20F0A8:    STA $4200                   ; $20:F0A8: 8D 00 42    ;
CODE_20F0AB:    CLI                         ; $20:F0AB: 58          ;
CODE_20F0AC:    LDA $1C                     ; $20:F0AC: A5 1C       ;
CODE_20F0AE:    BEQ CODE_20F0BA             ; $20:F0AE: F0 0A       ;
CODE_20F0B0:    JSR CODE_20FB5E             ; $20:F0B0: 20 5E FB    ;
CODE_20F0B3:    JSL CODE_22E103             ; $20:F0B3: 22 03 E1 22 ;
CODE_20F0B7:    DEC $0154                   ; $20:F0B7: CE 54 01    ;
CODE_20F0BA:    INC $15                     ; $20:F0BA: E6 15       ;
CODE_20F0BC:    LDA $16                     ; $20:F0BC: A5 16       ;
CODE_20F0BE:    STA $2100                   ; $20:F0BE: 8D 00 21    ;
CODE_20F0C1:    LDA $0293                   ; $20:F0C1: AD 93 02    ;
CODE_20F0C4:    STA $420C                   ; $20:F0C4: 8D 0C 42    ;
CODE_20F0C7:    JSL CODE_22E677             ; $20:F0C7: 22 77 E6 22 ;
CODE_20F0CB:    PLA                         ; $20:F0CB: 68          ;
CODE_20F0CC:    STA $02                     ; $20:F0CC: 85 02       ;
CODE_20F0CE:    RTL                         ; $20:F0CE: 6B          ;

CODE_20F0CF:    JSR CODE_20F650             ; $20:F0CF: 20 50 F6    ;
CODE_20F0D2:    LDA $0154                   ; $20:F0D2: AD 54 01    ;
CODE_20F0D5:    BNE CODE_20F0FA             ; $20:F0D5: D0 23       ;
CODE_20F0D7:    JSL CODE_29EA32             ; $20:F0D7: 22 32 EA 29 ;
CODE_20F0DB:    JSL CODE_29E9F8             ; $20:F0DB: 22 F8 E9 29 ;
CODE_20F0DF:    JSL CODE_29E8AB             ; $20:F0DF: 22 AB E8 29 ;
CODE_20F0E3:    JSL CODE_29EA69             ; $20:F0E3: 22 69 EA 29 ;
CODE_20F0E7:    LDA $28                     ; $20:F0E7: A5 28       ;
CODE_20F0E9:    BNE CODE_20F0F8             ; $20:F0E9: D0 0D       ;
CODE_20F0EB:    STZ $1600                   ; $20:F0EB: 9C 00 16    ;
CODE_20F0EE:    STZ $1601                   ; $20:F0EE: 9C 01 16    ;
CODE_20F0F1:    DEC A                       ; $20:F0F1: 3A          ;
CODE_20F0F2:    STA $1602                   ; $20:F0F2: 8D 02 16    ;
CODE_20F0F5:    STA $1603                   ; $20:F0F5: 8D 03 16    ;
CODE_20F0F8:    STZ $28                     ; $20:F0F8: 64 28       ;
CODE_20F0FA:    JSR CODE_20F20B             ; $20:F0FA: 20 0B F2    ;
CODE_20F0FD:    JSR CODE_20FBC5             ; $20:F0FD: 20 C5 FB    ;
CODE_20F100:    LDA $4211                   ; $20:F100: AD 11 42    ;
CODE_20F103:    LDA #$C0                    ; $20:F103: A9 C0       ;
CODE_20F105:    STA $4209                   ; $20:F105: 8D 09 42    ;
CODE_20F108:    STZ $420A                   ; $20:F108: 9C 0A 42    ;
CODE_20F10B:    STZ $4207                   ; $20:F10B: 9C 07 42    ;
CODE_20F10E:    STZ $4208                   ; $20:F10E: 9C 08 42    ;
CODE_20F111:    LDA #$A1                    ; $20:F111: A9 A1       ;
CODE_20F113:    STA $4200                   ; $20:F113: 8D 00 42    ;
CODE_20F116:    CLI                         ; $20:F116: 58          ;
CODE_20F117:    JMP CODE_20F0AC             ; $20:F117: 4C AC F0    ;
CODE_20F11A:    JSR CODE_20F650             ; $20:F11A: 20 50 F6    ;
CODE_20F11D:    LDA $20                     ; $20:F11D: A5 20       ;
CODE_20F11F:    BEQ CODE_20F121             ; $20:F11F: F0 00       ;
CODE_20F121:    JSR CODE_20F20B             ; $20:F121: 20 0B F2    ;
CODE_20F124:    JSR CODE_20FCBF             ; $20:F124: 20 BF FC    ;
CODE_20F127:    LDA $4211                   ; $20:F127: AD 11 42    ;
CODE_20F12A:    LDA #$C0                    ; $20:F12A: A9 C0       ;
CODE_20F12C:    STA $4209                   ; $20:F12C: 8D 09 42    ;
CODE_20F12F:    STZ $420A                   ; $20:F12F: 9C 0A 42    ;
CODE_20F132:    STZ $4207                   ; $20:F132: 9C 07 42    ;
CODE_20F135:    STZ $4208                   ; $20:F135: 9C 08 42    ;
CODE_20F138:    LDA #$A1                    ; $20:F138: A9 A1       ;
CODE_20F13A:    STA $4200                   ; $20:F13A: 8D 00 42    ;
CODE_20F13D:    CLI                         ; $20:F13D: 58          ;
CODE_20F13E:    JMP CODE_20F0B7             ; $20:F13E: 4C B7 F0    ;

CODE_20F141:    JSR CODE_20F650             ; $20:F141: 20 50 F6    ;
CODE_20F144:    LDA $0154                   ; $20:F144: AD 54 01    ;
CODE_20F147:    BNE CODE_20F16C             ; $20:F147: D0 23       ;
CODE_20F149:    JSL CODE_29E953             ; $20:F149: 22 53 E9 29 ;
CODE_20F14D:    JSL CODE_29E9A3             ; $20:F14D: 22 A3 E9 29 ;
CODE_20F151:    JSL CODE_29E8AB             ; $20:F151: 22 AB E8 29 ;
CODE_20F155:    JSL CODE_29EA69             ; $20:F155: 22 69 EA 29 ;
CODE_20F159:    LDA $28                     ; $20:F159: A5 28       ;
CODE_20F15B:    BNE CODE_20F16A             ; $20:F15B: D0 0D       ;
CODE_20F15D:    STZ $1600                   ; $20:F15D: 9C 00 16    ;
CODE_20F160:    STZ $1601                   ; $20:F160: 9C 01 16    ;
CODE_20F163:    DEC A                       ; $20:F163: 3A          ;
CODE_20F164:    STA $1602                   ; $20:F164: 8D 02 16    ;
CODE_20F167:    STA $1603                   ; $20:F167: 8D 03 16    ;
CODE_20F16A:    STZ $28                     ; $20:F16A: 64 28       ;
CODE_20F16C:    JSR CODE_20F20B             ; $20:F16C: 20 0B F2    ;
CODE_20F16F:    JSR CODE_20FBC5             ; $20:F16F: 20 C5 FB    ;
CODE_20F172:    LDA $4211                   ; $20:F172: AD 11 42    ;
CODE_20F175:    LDA #$A0                    ; $20:F175: A9 A0       ;
CODE_20F177:    STA $4209                   ; $20:F177: 8D 09 42    ;
CODE_20F17A:    STZ $420A                   ; $20:F17A: 9C 0A 42    ;
CODE_20F17D:    STZ $4207                   ; $20:F17D: 9C 07 42    ;
CODE_20F180:    STZ $4208                   ; $20:F180: 9C 08 42    ;
CODE_20F183:    LDA #$A1                    ; $20:F183: A9 A1       ;
CODE_20F185:    STA $4200                   ; $20:F185: 8D 00 42    ;
CODE_20F188:    CLI                         ; $20:F188: 58          ;
CODE_20F189:    JMP CODE_20F0AC             ; $20:F189: 4C AC F0    ;

CODE_20F18C:    JSR CODE_20F650             ; $20:F18C: 20 50 F6    ;
CODE_20F18F:    LDA $0154                   ; $20:F18F: AD 54 01    ;
CODE_20F192:    BNE CODE_20F1B4             ; $20:F192: D0 20       ;
CODE_20F194:    LDA $C2                     ; $20:F194: A5 C2       ;
CODE_20F196:    BEQ CODE_20F19D             ; $20:F196: F0 05       ;
CODE_20F198:    JSR CODE_20CF69             ; $20:F198: 20 69 CF    ;
CODE_20F19B:    BRA CODE_20F1B4             ; $20:F19B: 80 17       ;

CODE_20F19D:    JSL CODE_29E8AB             ; $20:F19D: 22 AB E8 29 ;
CODE_20F1A1:    LDA $28                     ; $20:F1A1: A5 28       ;
CODE_20F1A3:    BNE CODE_20F1B2             ; $20:F1A3: D0 0D       ;
CODE_20F1A5:    STZ $1600                   ; $20:F1A5: 9C 00 16    ;
CODE_20F1A8:    STZ $1601                   ; $20:F1A8: 9C 01 16    ;
CODE_20F1AB:    DEC A                       ; $20:F1AB: 3A          ;
CODE_20F1AC:    STA $1602                   ; $20:F1AC: 8D 02 16    ;
CODE_20F1AF:    STA $1603                   ; $20:F1AF: 8D 03 16    ;
CODE_20F1B2:    STZ $28                     ; $20:F1B2: 64 28       ;
CODE_20F1B4:    JSR CODE_20CFDC             ; $20:F1B4: 20 DC CF    ;
CODE_20F1B7:    JSR CODE_20F20B             ; $20:F1B7: 20 0B F2    ;
CODE_20F1BA:    JSR CODE_20FBC5             ; $20:F1BA: 20 C5 FB    ;
CODE_20F1BD:    JMP CODE_20F0AC             ; $20:F1BD: 4C AC F0    ;

CODE_20F1C0:    JSR CODE_20F650             ; $20:F1C0: 20 50 F6    ;
CODE_20F1C3:    LDA $0154                   ; $20:F1C3: AD 54 01    ;
CODE_20F1C6:    BNE CODE_20F1EB             ; $20:F1C6: D0 23       ;
CODE_20F1C8:    JSL CODE_29E953             ; $20:F1C8: 22 53 E9 29 ;
CODE_20F1CC:    JSL CODE_29E9A3             ; $20:F1CC: 22 A3 E9 29 ;
CODE_20F1D0:    JSL CODE_29E8AB             ; $20:F1D0: 22 AB E8 29 ;
CODE_20F1D4:    JSL CODE_29EA69             ; $20:F1D4: 22 69 EA 29 ;
CODE_20F1D8:    LDA $28                     ; $20:F1D8: A5 28       ;
CODE_20F1DA:    BNE CODE_20F1E9             ; $20:F1DA: D0 0D       ;
CODE_20F1DC:    STZ $1600                   ; $20:F1DC: 9C 00 16    ;
CODE_20F1DF:    STZ $1601                   ; $20:F1DF: 9C 01 16    ;
CODE_20F1E2:    DEC A                       ; $20:F1E2: 3A          ;
CODE_20F1E3:    STA $1602                   ; $20:F1E3: 8D 02 16    ;
CODE_20F1E6:    STA $1603                   ; $20:F1E6: 8D 03 16    ;
CODE_20F1E9:    STZ $28                     ; $20:F1E9: 64 28       ;
CODE_20F1EB:    JSR CODE_20F20B             ; $20:F1EB: 20 0B F2    ;
CODE_20F1EE:    JSR CODE_20FCBF             ; $20:F1EE: 20 BF FC    ;
CODE_20F1F1:    LDA $4211                   ; $20:F1F1: AD 11 42    ;
CODE_20F1F4:    LDA #$91                    ; $20:F1F4: A9 91       ;
CODE_20F1F6:    STA $4209                   ; $20:F1F6: 8D 09 42    ;
CODE_20F1F9:    STZ $420A                   ; $20:F1F9: 9C 0A 42    ;
CODE_20F1FC:    STZ $4207                   ; $20:F1FC: 9C 07 42    ;
CODE_20F1FF:    STZ $4208                   ; $20:F1FF: 9C 08 42    ;
CODE_20F202:    LDA #$A1                    ; $20:F202: A9 A1       ;
CODE_20F204:    STA $4200                   ; $20:F204: 8D 00 42    ;
CODE_20F207:    CLI                         ; $20:F207: 58          ;
CODE_20F208:    JMP CODE_20F0AC             ; $20:F208: 4C AC F0    ;

CODE_20F20B:    PHD                     ; $20:F20B: 0B          ;Hardware register mirrors related to screen settings
CODE_20F20C:    LDA #$21                ; $20:F20C: A9 21       ;\
CODE_20F20E:    XBA                     ; $20:F20E: EB          ; |Set direct page to $2100
CODE_20F20F:    LDA #$00                ; $20:F20F: A9 00       ; |
CODE_20F211:    TCD                     ; $20:F211: 5B          ;/
CODE_20F212:    LDA $0200               ; $20:F212: AD 00 02    ;\ Window Mask Settings for BG1 and BG2
CODE_20F215:    STA $23                 ; $20:F215: 85 23       ;/
CODE_20F217:    LDA $0201               ; $20:F217: AD 01 02    ;\ Window Mask Settings for BG3 and BG4
CODE_20F21A:    STA $24                 ; $20:F21A: 85 24       ;/
CODE_20F21C:    LDA $0202               ; $20:F21C: AD 02 02    ;\ Window Mask Settings for OBJ and Color Window
CODE_20F21F:    STA $25                 ; $20:F21F: 85 25       ;/
CODE_20F221:    LDA $0203               ; $20:F221: AD 03 02    ;\ Color Addition Select
CODE_20F224:    STA $30                 ; $20:F224: 85 30       ;/
CODE_20F226:    LDA $0204               ; $20:F226: AD 04 02    ;\ Color math designation
CODE_20F229:    STA $31                 ; $20:F229: 85 31       ;/
CODE_20F22B:    LDA $0205               ; $20:F22B: AD 05 02    ;\ Fixed Color Data
CODE_20F22E:    STA $32                 ; $20:F22E: 85 32       ;/
CODE_20F230:    LDA $0206               ; $20:F230: AD 06 02    ;\ Fixed Color Data
CODE_20F233:    STA $32                 ; $20:F233: 85 32       ;/
CODE_20F235:    LDA $0207               ; $20:F235: AD 07 02    ;\ Fixed Color Data
CODE_20F238:    STA $32                 ; $20:F238: 85 32       ;/
CODE_20F23A:    LDA $0208               ; $20:F23A: AD 08 02    ;\ Main Screen Designation
CODE_20F23D:    STA $2C                 ; $20:F23D: 85 2C       ;/
CODE_20F23F:    LDA $0209               ; $20:F23F: AD 09 02    ;\ Subscreen Designation
CODE_20F242:    STA $2D                 ; $20:F242: 85 2D       ;/
CODE_20F244:    LDA $020A               ; $20:F244: AD 0A 02    ;\ Window Mask Designation for the Main Screen
CODE_20F247:    STA $2E                 ; $20:F247: 85 2E       ;/
CODE_20F249:    LDA $020B               ; $20:F249: AD 0B 02    ;\ Window Mask Designation for the Subscreen
CODE_20F24C:    STA $2F                 ; $20:F24C: 85 2F       ;/
CODE_20F24E:    LDA $020D               ; $20:F24E: AD 0D 02    ;\ Screen Pixelation
CODE_20F251:    STA $06                 ; $20:F251: 85 06       ;/
CODE_20F253:    LDA $020C               ; $20:F253: AD 0C 02    ;\ BG Mode and Character Size
CODE_20F256:    STA $05                 ; $20:F256: 85 05       ;/
CODE_20F258:    PLD                     ; $20:F258: 2B          ;\Recover original direct page, then return
CODE_20F259:    RTS                     ; $20:F259: 60          ;/

CODE_20F25A:    JSR CODE_20F64C             ; $20:F25A: 20 4C F6    ;
CODE_20F25D:    LDA.l PNTR_2282BB                   ; $20:F25D: AF BB 82 22 ;
CODE_20F261:    STA $36                     ; $20:F261: 85 36       ;
CODE_20F263:    LDA.l PNTR_2282BB+1     ; $20:F263: AF BC 82 22 ;
CODE_20F267:    STA $37                     ; $20:F267: 85 37       ;
CODE_20F269:    LDA.l PNTR_2282BB+2                 ; $20:F269: AF BD 82 22 ;
CODE_20F26D:    STA $38                     ; $20:F26D: 85 38       ;
CODE_20F26F:    JSL CODE_29E8AB             ; $20:F26F: 22 AB E8 29 ;
CODE_20F273:    STZ $28                     ; $20:F273: 64 28       ;
CODE_20F275:    REP #$20                    ; $20:F275: C2 20       ;
CODE_20F277:    STZ $1600                   ; $20:F277: 9C 00 16    ;
CODE_20F27A:    LDA #$FFFF                  ; $20:F27A: A9 FF FF    ;
CODE_20F27D:    STA $1602                   ; $20:F27D: 8D 02 16    ;
CODE_20F280:    SEP #$20                    ; $20:F280: E2 20       ;
CODE_20F282:    JSR CODE_20F20B             ; $20:F282: 20 0B F2    ;
CODE_20F285:    LDA $0210                   ; $20:F285: AD 10 02    ;
CODE_20F288:    STA $210D                   ; $20:F288: 8D 0D 21    ;
CODE_20F28B:    LDA $0211                   ; $20:F28B: AD 11 02    ;
CODE_20F28E:    STA $210D                   ; $20:F28E: 8D 0D 21    ;
CODE_20F291:    LDA $0216                   ; $20:F291: AD 16 02    ;
CODE_20F294:    STA $210E                   ; $20:F294: 8D 0E 21    ;
CODE_20F297:    LDA $0217                   ; $20:F297: AD 17 02    ;
CODE_20F29A:    STA $210E                   ; $20:F29A: 8D 0E 21    ;
CODE_20F29D:    LDA $0212                   ; $20:F29D: AD 12 02    ;
CODE_20F2A0:    STA $210F                   ; $20:F2A0: 8D 0F 21    ;
CODE_20F2A3:    LDA $0213                   ; $20:F2A3: AD 13 02    ;
CODE_20F2A6:    STA $210F                   ; $20:F2A6: 8D 0F 21    ;
CODE_20F2A9:    LDA $0218                   ; $20:F2A9: AD 18 02    ;
CODE_20F2AC:    STA $2110                   ; $20:F2AC: 8D 10 21    ;
CODE_20F2AF:    LDA $0219                   ; $20:F2AF: AD 19 02    ;
CODE_20F2B2:    STA $2110                   ; $20:F2B2: 8D 10 21    ;
CODE_20F2B5:    LDA $4211                   ; $20:F2B5: AD 11 42    ;
CODE_20F2B8:    LDA #$28                    ; $20:F2B8: A9 28       ;
CODE_20F2BA:    STA $4209                   ; $20:F2BA: 8D 09 42    ;
CODE_20F2BD:    STZ $420A                   ; $20:F2BD: 9C 0A 42    ;
CODE_20F2C0:    STZ $4207                   ; $20:F2C0: 9C 07 42    ;
CODE_20F2C3:    STZ $4208                   ; $20:F2C3: 9C 08 42    ;
CODE_20F2C6:    LDA #$A1                    ; $20:F2C6: A9 A1       ;
CODE_20F2C8:    STA $4200                   ; $20:F2C8: 8D 00 42    ;
CODE_20F2CB:    CLI                         ; $20:F2CB: 58          ;
CODE_20F2CC:    LDX #$00                    ; $20:F2CC: A2 00       ;
CODE_20F2CE:    LDY #$02                    ; $20:F2CE: A0 02       ;
CODE_20F2D0:    LDA $0782                   ; $20:F2D0: AD 82 07    ;
CODE_20F2D3:    AND #$02                    ; $20:F2D3: 29 02       ;
CODE_20F2D5:    STA $00                     ; $20:F2D5: 85 00       ;
CODE_20F2D7:    LDA $0783                   ; $20:F2D7: AD 83 07    ;
CODE_20F2DA:    AND #$02                    ; $20:F2DA: 29 02       ;
CODE_20F2DC:    EOR $00                     ; $20:F2DC: 45 00       ;
CODE_20F2DE:    CLC                         ; $20:F2DE: 18          ;
CODE_20F2DF:    BEQ CODE_20F2E2             ; $20:F2DF: F0 01       ;
CODE_20F2E1:    SEC                         ; $20:F2E1: 38          ;
CODE_20F2E2:    ROR $0782,x                 ; $20:F2E2: 7E 82 07    ;
CODE_20F2E5:    INX                         ; $20:F2E5: E8          ;
CODE_20F2E6:    DEY                         ; $20:F2E6: 88          ;
CODE_20F2E7:    BNE CODE_20F2E2             ; $20:F2E7: D0 F9       ;
CODE_20F2E9:    JSR CODE_20FB5E             ; $20:F2E9: 20 5E FB    ;
CODE_20F2EC:    JSL CODE_239953             ; $20:F2EC: 22 53 99 23 ;
CODE_20F2F0:    INC $15                     ; $20:F2F0: E6 15       ;
CODE_20F2F2:    LDA $16                     ; $20:F2F2: A5 16       ;
CODE_20F2F4:    STA $2100                   ; $20:F2F4: 8D 00 21    ;
CODE_20F2F7:    LDA $0293                   ; $20:F2F7: AD 93 02    ;
CODE_20F2FA:    STA $420C                   ; $20:F2FA: 8D 0C 42    ;
CODE_20F2FD:    JSL CODE_29EAA5             ; $20:F2FD: 22 A5 EA 29 ;
CODE_20F301:    JMP CODE_20F0C7             ; $20:F301: 4C C7 F0    ;

CODE_20F304:    LDA $4211                   ; $20:F304: AD 11 42    ;
CODE_20F307:    BMI CODE_20F30C             ; $20:F307: 30 03       ;
CODE_20F309:    JMP CODE_20F38E             ; $20:F309: 4C 8E F3    ;

CODE_20F30C:    LDA #$21                    ; $20:F30C: A9 21       ;
CODE_20F30E:    XBA                         ; $20:F30E: EB          ;
CODE_20F30F:    LDA #$00                    ; $20:F30F: A9 00       ;
CODE_20F311:    TCD                         ; $20:F311: 5B          ;
CODE_20F312:    LDA $0101                   ; $20:F312: AD 01 01    ;
CODE_20F315:    CMP #$80                    ; $20:F315: C9 80       ;
CODE_20F317:    BNE CODE_20F31C             ; $20:F317: D0 03       ;
CODE_20F319:    JMP CODE_20F38E             ; $20:F319: 4C 8E F3    ;

CODE_20F31C:    CMP #$40                    ; $20:F31C: C9 40       ;
CODE_20F31E:    BNE CODE_20F323             ; $20:F31E: D0 03       ;
CODE_20F320:    JMP CODE_20F392             ; $20:F320: 4C 92 F3    ;

CODE_20F323:    CMP #$20                    ; $20:F323: C9 20       ;
CODE_20F325:    BNE CODE_20F32A             ; $20:F325: D0 03       ;
CODE_20F327:    JMP CODE_20F4C3             ; $20:F327: 4C C3 F4    ;

CODE_20F32A:    CMP #$60                    ; $20:F32A: C9 60       ;
CODE_20F32C:    BNE CODE_20F331             ; $20:F32C: D0 03       ;
CODE_20F32E:    JMP CODE_20F408             ; $20:F32E: 4C 08 F4    ;

CODE_20F331:    CMP #$A0                    ; $20:F331: C9 A0       ;
CODE_20F333:    BNE CODE_20F338             ; $20:F333: D0 03       ;
CODE_20F335:    JMP CODE_20F462             ; $20:F335: 4C 62 F4    ;

CODE_20F338:    CMP #$55                    ; $20:F338: C9 55       ;
CODE_20F33A:    BNE CODE_20F33F             ; $20:F33A: D0 03       ;
CODE_20F33C:    JMP CODE_20F4C6             ; $20:F33C: 4C C6 F4    ;

CODE_20F33F:    CMP #$75                    ; $20:F33F: C9 75       ;
CODE_20F341:    BNE CODE_20F346             ; $20:F341: D0 03       ;
CODE_20F343:    JMP CODE_20F4F4             ; $20:F343: 4C F4 F4    ;

CODE_20F346:    CMP #$95                    ; $20:F346: C9 95       ;
CODE_20F348:    BNE CODE_20F34D             ; $20:F348: D0 03       ;
CODE_20F34A:    JMP CODE_20F528             ; $20:F34A: 4C 28 F5    ;

CODE_20F34D:    LDA $0425                   ; $20:F34D: AD 25 04    ;
CODE_20F350:    BEQ CODE_20F352             ; $20:F350: F0 00       ;
CODE_20F352:    BIT $4212                   ; $20:F352: 2C 12 42    ;
CODE_20F355:    BVC CODE_20F352                     ; $20:F355: 50 FB       ;
CODE_20F357:    LDA #$80                    ; $20:F357: A9 80       ;
CODE_20F359:    STA $00                     ; $20:F359: 85 00       ;
CODE_20F35B:    STZ $420C                   ; $20:F35B: 9C 0C 42    ;
CODE_20F35E:    STZ $23                     ; $20:F35E: 64 23       ;
CODE_20F360:    STZ $24                     ; $20:F360: 64 24       ;
CODE_20F362:    STZ $2F                     ; $20:F362: 64 2F       ;
CODE_20F364:    BIT $4212                   ; $20:F364: 2C 12 42    ;
CODE_20F367:    BVC CODE_20F364                     ; $20:F367: 50 FB       ;
CODE_20F369:    LDA $020E                   ; $20:F369: AD 0E 02    ;
CODE_20F36C:    STA $05                     ; $20:F36C: 85 05       ;
CODE_20F36E:    LDA $020F                   ; $20:F36E: AD 0F 02    ;
CODE_20F371:    STA $2C                     ; $20:F371: 85 2C       ;
CODE_20F373:    LDA #$20                    ; $20:F373: A9 20       ;
CODE_20F375:    STA $31                     ; $20:F375: 85 31       ;
CODE_20F377:    STZ $0D                     ; $20:F377: 64 0D       ;
CODE_20F379:    LDA #$01                    ; $20:F379: A9 01       ;
CODE_20F37B:    STA $0D                     ; $20:F37B: 85 0D       ;
CODE_20F37D:    STZ $0E                     ; $20:F37D: 64 0E       ;
CODE_20F37F:    STA $0E                     ; $20:F37F: 85 0E       ;
CODE_20F381:    BIT $4212                   ; $20:F381: 2C 12 42    ;
CODE_20F384:    BVC CODE_20F381                     ; $20:F384: 50 FB       ;
CODE_20F386:    LDA $0016                   ; $20:F386: AD 16 00    ;
CODE_20F389:    STA $00                     ; $20:F389: 85 00       ;
CODE_20F38B:    INC $021C                   ; $20:F38B: EE 1C 02    ;
CODE_20F38E:    RTL                         ; $20:F38E: 6B          ;

CODE_20F38F:    JMP CODE_20F38E             ; $20:F38F: 4C 8E F3    ;

CODE_20F392:    LDX $037C                   ; $20:F392: AE 7C 03    ;
CODE_20F395:    BNE CODE_20F3E6             ; $20:F395: D0 4F       ;
CODE_20F397:    BIT $4212                   ; $20:F397: 2C 12 42    ;
CODE_20F39A:    BVC CODE_20F397                     ; $20:F39A: 50 FB       ;
CODE_20F39C:    LDA #$EF                    ; $20:F39C: A9 EF       ;
CODE_20F39E:    STA $0E                     ; $20:F39E: 85 0E       ;
CODE_20F3A0:    LDA #$00                    ; $20:F3A0: A9 00       ;
CODE_20F3A2:    STA $0E                     ; $20:F3A2: 85 0E       ;
CODE_20F3A4:    LDA $0210                   ; $20:F3A4: AD 10 02    ;
CODE_20F3A7:    STA $0D                     ; $20:F3A7: 85 0D       ;
CODE_20F3A9:    LDA $0211                   ; $20:F3A9: AD 11 02    ;
CODE_20F3AC:    STA $0D                     ; $20:F3AC: 85 0D       ;
CODE_20F3AE:    LDA $4211                   ; $20:F3AE: AD 11 42    ;
CODE_20F3B1:    LDA #$C0                    ; $20:F3B1: A9 C0       ;
CODE_20F3B3:    STA $4209                   ; $20:F3B3: 8D 09 42    ;
CODE_20F3B6:    STZ $420A                   ; $20:F3B6: 9C 0A 42    ;
CODE_20F3B9:    STZ $4207                   ; $20:F3B9: 9C 07 42    ;
CODE_20F3BC:    STZ $4208                   ; $20:F3BC: 9C 08 42    ;
CODE_20F3BF:    LDA $0727                   ; $20:F3BF: AD 27 07    ;
CODE_20F3C2:    CMP #$07                    ; $20:F3C2: C9 07       ;
CODE_20F3C4:    BNE CODE_20F3DF             ; $20:F3C4: D0 19       ;
CODE_20F3C6:    LDA $7E3977                 ; $20:F3C6: AF 77 39 7E ;
CODE_20F3CA:    BNE CODE_20F3DF             ; $20:F3CA: D0 13       ;
CODE_20F3CC:    BIT $4212                   ; $20:F3CC: 2C 12 42    ;
CODE_20F3CF:    BVC CODE_20F3CC                     ; $20:F3CF: 50 FB       ;
CODE_20F3D1:    LDA $0208                   ; $20:F3D1: AD 08 02    ;
CODE_20F3D4:    AND #$0F                    ; $20:F3D4: 29 0F       ;
CODE_20F3D6:    STA $2C                     ; $20:F3D6: 85 2C       ;
CODE_20F3D8:    LDA $0209                   ; $20:F3D8: AD 09 02    ;
CODE_20F3DB:    ORA #$10                    ; $20:F3DB: 09 10       ;
CODE_20F3DD:    STA $2D                     ; $20:F3DD: 85 2D       ;
CODE_20F3DF:    INX                         ; $20:F3DF: E8          ;
CODE_20F3E0:    STX $037C                   ; $20:F3E0: 8E 7C 03    ;
CODE_20F3E3:    JMP CODE_20F38E             ; $20:F3E3: 4C 8E F3    ;

CODE_20F3E6:    BIT $4212                   ; $20:F3E6: 2C 12 42    ;
CODE_20F3E9:    BVC CODE_20F3E6                     ; $20:F3E9: 50 FB       ;
CODE_20F3EB:    LDA $020E                   ; $20:F3EB: AD 0E 02    ;
CODE_20F3EE:    STA $05                     ; $20:F3EE: 85 05       ;
CODE_20F3F0:    LDA $020F                   ; $20:F3F0: AD 0F 02    ;
CODE_20F3F3:    STA $2C                     ; $20:F3F3: 85 2C       ;
CODE_20F3F5:    STZ $0D                     ; $20:F3F5: 64 0D       ;
CODE_20F3F7:    LDA #$01                    ; $20:F3F7: A9 01       ;
CODE_20F3F9:    STA $0D                     ; $20:F3F9: 85 0D       ;
CODE_20F3FB:    STZ $0E                     ; $20:F3FB: 64 0E       ;
CODE_20F3FD:    STA $0E                     ; $20:F3FD: 85 0E       ;
CODE_20F3FF:    STZ $037C                   ; $20:F3FF: 9C 7C 03    ;
CODE_20F402:    INC $021C                   ; $20:F402: EE 1C 02    ;
CODE_20F405:    JMP CODE_20F38E             ; $20:F405: 4C 8E F3    ;

CODE_20F408:    LDX $037C                   ; $20:F408: AE 7C 03    ;
CODE_20F40B:    CPX #$03                    ; $20:F40B: E0 03       ;
CODE_20F40D:    BEQ CODE_20F440             ; $20:F40D: F0 31       ;
CODE_20F40F:    BIT $4212                   ; $20:F40F: 2C 12 42    ;
CODE_20F412:    BVC CODE_20F40F                     ; $20:F412: 50 FB       ;
CODE_20F414:    LDA #$00                    ; $20:F414: A9 00       ;
CODE_20F416:    STA $0E                     ; $20:F416: 85 0E       ;
CODE_20F418:    STA $0E                     ; $20:F418: 85 0E       ;
CODE_20F41A:    LDA $1000,x                 ; $20:F41A: BD 00 10    ;
CODE_20F41D:    STA $0D                     ; $20:F41D: 85 0D       ;
CODE_20F41F:    LDA $1003,x                 ; $20:F41F: BD 03 10    ;
CODE_20F422:    AND #$01                    ; $20:F422: 29 01       ;
CODE_20F424:    STA $0D                     ; $20:F424: 85 0D       ;
CODE_20F426:    LDA $4211                   ; $20:F426: AD 11 42    ;
CODE_20F429:    LDA.l DATA_21CEE4,x                 ; $20:F429: BF E4 CE 21 ;
CODE_20F42D:    STA $4209                   ; $20:F42D: 8D 09 42    ;
CODE_20F430:    STZ $420A                   ; $20:F430: 9C 0A 42    ;
CODE_20F433:    STZ $4207                   ; $20:F433: 9C 07 42    ;
CODE_20F436:    STZ $4208                   ; $20:F436: 9C 08 42    ;
CODE_20F439:    INX                         ; $20:F439: E8          ;
CODE_20F43A:    STX $037C                   ; $20:F43A: 8E 7C 03    ;
CODE_20F43D:    JMP CODE_20F38E             ; $20:F43D: 4C 8E F3    ;

CODE_20F440:    BIT $4212                   ; $20:F440: 2C 12 42    ;
CODE_20F443:    BVC CODE_20F440                     ; $20:F443: 50 FB       ;
CODE_20F445:    LDA $020E                   ; $20:F445: AD 0E 02    ;
CODE_20F448:    STA $05                     ; $20:F448: 85 05       ;
CODE_20F44A:    LDA $020F                   ; $20:F44A: AD 0F 02    ;
CODE_20F44D:    STA $2C                     ; $20:F44D: 85 2C       ;
CODE_20F44F:    STZ $0D                     ; $20:F44F: 64 0D       ;
CODE_20F451:    LDA #$01                    ; $20:F451: A9 01       ;
CODE_20F453:    STA $0D                     ; $20:F453: 85 0D       ;
CODE_20F455:    STZ $0E                     ; $20:F455: 64 0E       ;
CODE_20F457:    STA $0E                     ; $20:F457: 85 0E       ;
CODE_20F459:    STZ $037C                   ; $20:F459: 9C 7C 03    ;
CODE_20F45C:    INC $021C                   ; $20:F45C: EE 1C 02    ;
CODE_20F45F:    JMP CODE_20F38E             ; $20:F45F: 4C 8E F3    ;

CODE_20F462:    LDA $037C                   ; $20:F462: AD 7C 03    ;
CODE_20F465:    BNE CODE_20F495             ; $20:F465: D0 2E       ;
CODE_20F467:    BIT $4212                   ; $20:F467: 2C 12 42    ;
CODE_20F46A:    BVC CODE_20F467                     ; $20:F46A: 50 FB       ;
CODE_20F46C:    LDA #$EF                    ; $20:F46C: A9 EF       ;
CODE_20F46E:    STA $0E                     ; $20:F46E: 85 0E       ;
CODE_20F470:    LDA #$00                    ; $20:F470: A9 00       ;
CODE_20F472:    STA $0E                     ; $20:F472: 85 0E       ;
CODE_20F474:    LDA $0210                   ; $20:F474: AD 10 02    ;
CODE_20F477:    STA $0D                     ; $20:F477: 85 0D       ;
CODE_20F479:    LDA $0211                   ; $20:F479: AD 11 02    ;
CODE_20F47C:    STA $0D                     ; $20:F47C: 85 0D       ;
CODE_20F47E:    LDA $4211                   ; $20:F47E: AD 11 42    ;
CODE_20F481:    LDA #$C0                    ; $20:F481: A9 C0       ;
CODE_20F483:    STA $4209                   ; $20:F483: 8D 09 42    ;
CODE_20F486:    STZ $420A                   ; $20:F486: 9C 0A 42    ;
CODE_20F489:    STZ $4207                   ; $20:F489: 9C 07 42    ;
CODE_20F48C:    STZ $4208                   ; $20:F48C: 9C 08 42    ;
CODE_20F48F:    INC $037C                   ; $20:F48F: EE 7C 03    ;
CODE_20F492:    JMP CODE_20F38E             ; $20:F492: 4C 8E F3    ;

CODE_20F495:    BIT $4212                   ; $20:F495: 2C 12 42    ;
CODE_20F498:    BVC CODE_20F495                     ; $20:F498: 50 FB       ;
CODE_20F49A:    LDA $020E                   ; $20:F49A: AD 0E 02    ;
CODE_20F49D:    STA $05                     ; $20:F49D: 85 05       ;
CODE_20F49F:    LDA $020F                   ; $20:F49F: AD 0F 02    ;
CODE_20F4A2:    STA $2C                     ; $20:F4A2: 85 2C       ;
CODE_20F4A4:    LDA #$20                    ; $20:F4A4: A9 20       ;
CODE_20F4A6:    STA $31                     ; $20:F4A6: 85 31       ;
CODE_20F4A8:    STZ $23                     ; $20:F4A8: 64 23       ;
CODE_20F4AA:    STZ $2F                     ; $20:F4AA: 64 2F       ;
CODE_20F4AC:    STZ $037C                   ; $20:F4AC: 9C 7C 03    ;
CODE_20F4AF:    STZ $210D                   ; $20:F4AF: 9C 0D 21    ;
CODE_20F4B2:    LDA #$01                    ; $20:F4B2: A9 01       ;
CODE_20F4B4:    STA $210D                   ; $20:F4B4: 8D 0D 21    ;
CODE_20F4B7:    STZ $210E                   ; $20:F4B7: 9C 0E 21    ;
CODE_20F4BA:    STA $210E                   ; $20:F4BA: 8D 0E 21    ;
CODE_20F4BD:    INC $021C                   ; $20:F4BD: EE 1C 02    ;
CODE_20F4C0:    JMP CODE_20F38E             ; $20:F4C0: 4C 8E F3    ;

CODE_20F4C3:    JMP CODE_20F38E             ; $20:F4C3: 4C 8E F3    ;

CODE_20F4C6:    LDA $037C                   ; $20:F4C6: AD 7C 03    ;
CODE_20F4C9:    BNE CODE_20F495             ; $20:F4C9: D0 CA       ;
CODE_20F4CB:    REP #$20                    ; $20:F4CB: C2 20       ;
CODE_20F4CD:    LDA $0210                   ; $20:F4CD: AD 10 02    ;
CODE_20F4D0:    LSR A                       ; $20:F4D0: 4A          ;
CODE_20F4D1:    SEP #$20                    ; $20:F4D1: E2 20       ;
CODE_20F4D3:    BIT $4212                   ; $20:F4D3: 2C 12 42    ;
CODE_20F4D6:    BVC CODE_20F4D3                     ; $20:F4D6: 50 FB       ;
CODE_20F4D8:    STA $0D                     ; $20:F4D8: 85 0D       ;
CODE_20F4DA:    XBA                         ; $20:F4DA: EB          ;
CODE_20F4DB:    STA $0D                     ; $20:F4DB: 85 0D       ;
CODE_20F4DD:    LDA $4211                   ; $20:F4DD: AD 11 42    ;
CODE_20F4E0:    LDA #$C0                    ; $20:F4E0: A9 C0       ;
CODE_20F4E2:    STA $4209                   ; $20:F4E2: 8D 09 42    ;
CODE_20F4E5:    STZ $420A                   ; $20:F4E5: 9C 0A 42    ;
CODE_20F4E8:    STZ $4207                   ; $20:F4E8: 9C 07 42    ;
CODE_20F4EB:    STZ $4208                   ; $20:F4EB: 9C 08 42    ;
CODE_20F4EE:    INC $037C                   ; $20:F4EE: EE 7C 03    ;
CODE_20F4F1:    JMP CODE_20F38E             ; $20:F4F1: 4C 8E F3    ;

CODE_20F4F4:    LDA $037C                   ; $20:F4F4: AD 7C 03    ;
CODE_20F4F7:    BNE CODE_20F55F             ; $20:F4F7: D0 66       ;
CODE_20F4F9:    REP #$20                    ; $20:F4F9: C2 20       ;
CODE_20F4FB:    LDA $0210                   ; $20:F4FB: AD 10 02    ;
CODE_20F4FE:    LSR A                       ; $20:F4FE: 4A          ;
CODE_20F4FF:    SEP #$20                    ; $20:F4FF: E2 20       ;
CODE_20F501:    BIT $4212                   ; $20:F501: 2C 12 42    ;
CODE_20F504:    BVC CODE_20F501                     ; $20:F504: 50 FB       ;
CODE_20F506:    STA $0D                     ; $20:F506: 85 0D       ;
CODE_20F508:    XBA                         ; $20:F508: EB          ;
CODE_20F509:    STA $0D                     ; $20:F509: 85 0D       ;
CODE_20F50B:    LDA #$EF                    ; $20:F50B: A9 EF       ;
CODE_20F50D:    STA $0E                     ; $20:F50D: 85 0E       ;
CODE_20F50F:    STZ $0E                     ; $20:F50F: 64 0E       ;
CODE_20F511:    LDA $4211                   ; $20:F511: AD 11 42    ;
CODE_20F514:    LDA #$C0                    ; $20:F514: A9 C0       ;
CODE_20F516:    STA $4209                   ; $20:F516: 8D 09 42    ;
CODE_20F519:    STZ $420A                   ; $20:F519: 9C 0A 42    ;
CODE_20F51C:    STZ $4207                   ; $20:F51C: 9C 07 42    ;
CODE_20F51F:    STZ $4208                   ; $20:F51F: 9C 08 42    ;
CODE_20F522:    INC $037C                   ; $20:F522: EE 7C 03    ;
CODE_20F525:    JMP CODE_20F38E             ; $20:F525: 4C 8E F3    ;

CODE_20F528:    LDX $037C                   ; $20:F528: AE 7C 03    ;
CODE_20F52B:    CPX #$08                    ; $20:F52B: E0 08       ;
CODE_20F52D:    BCS CODE_20F55F                     ; $20:F52D: B0 30       ;
CODE_20F52F:    INC $037C                   ; $20:F52F: EE 7C 03    ;
CODE_20F532:    INC $037C                   ; $20:F532: EE 7C 03    ;
CODE_20F535:    BIT $4212                   ; $20:F535: 2C 12 42    ;
CODE_20F538:    BVC CODE_20F535                     ; $20:F538: 50 FB       ;
CODE_20F53A:    LDA $0357,x                 ; $20:F53A: BD 57 03    ;
CODE_20F53D:    STA $11                     ; $20:F53D: 85 11       ;
CODE_20F53F:    LDA $0358,x                 ; $20:F53F: BD 58 03    ;
CODE_20F542:    AND #$01                    ; $20:F542: 29 01       ;
CODE_20F544:    STA $11                     ; $20:F544: 85 11       ;
CODE_20F546:    TXA                         ; $20:F546: 8A          ;
CODE_20F547:    LSR A                       ; $20:F547: 4A          ;
CODE_20F548:    TAX                         ; $20:F548: AA          ;
CODE_20F549:    LDA $4211                   ; $20:F549: AD 11 42    ;
CODE_20F54C:    LDA.l DATA_21CEE8,x                 ; $20:F54C: BF E8 CE 21 ;
CODE_20F550:    STA $4209                   ; $20:F550: 8D 09 42    ;
CODE_20F553:    STZ $420A                   ; $20:F553: 9C 0A 42    ;
CODE_20F556:    STZ $4207                   ; $20:F556: 9C 07 42    ;
CODE_20F559:    STZ $4208                   ; $20:F559: 9C 08 42    ;
CODE_20F55C:    JMP CODE_20F38E             ; $20:F55C: 4C 8E F3    ;

CODE_20F55F:    BIT $4212                   ; $20:F55F: 2C 12 42    ;
CODE_20F562:    BVC CODE_20F55F                     ; $20:F562: 50 FB       ;
CODE_20F564:    STZ $0D                     ; $20:F564: 64 0D       ;
CODE_20F566:    LDA #$01                    ; $20:F566: A9 01       ;
CODE_20F568:    STA $0D                     ; $20:F568: 85 0D       ;
CODE_20F56A:    STZ $0E                     ; $20:F56A: 64 0E       ;
CODE_20F56C:    STA $0E                     ; $20:F56C: 85 0E       ;
CODE_20F56E:    LDA $020E                   ; $20:F56E: AD 0E 02    ;
CODE_20F571:    STA $05                     ; $20:F571: 85 05       ;
CODE_20F573:    LDA $020F                   ; $20:F573: AD 0F 02    ;
CODE_20F576:    STA $2C                     ; $20:F576: 85 2C       ;
CODE_20F578:    LDA #$20                    ; $20:F578: A9 20       ;
CODE_20F57A:    STA $31                     ; $20:F57A: 85 31       ;
CODE_20F57C:    STZ $24                     ; $20:F57C: 64 24       ;
CODE_20F57E:    STZ $2F                     ; $20:F57E: 64 2F       ;
CODE_20F580:    STZ $037C                   ; $20:F580: 9C 7C 03    ;
CODE_20F583:    INC $021C                   ; $20:F583: EE 1C 02    ;
CODE_20F586:    JMP CODE_20F38E             ; $20:F586: 4C 8E F3    ;

CODE_20F589:    JSR CODE_20F60C             ; $20:F589: 20 0C F6    ;
CODE_20F58C:    LDA $0726                   ; $20:F58C: AD 26 07    ;
CODE_20F58F:    BEQ CODE_20F593             ; $20:F58F: F0 02       ;
CODE_20F591:    LDA #$23                    ; $20:F591: A9 23       ;
CODE_20F593:    STA $00                     ; $20:F593: 85 00       ;
CODE_20F595:    LDA #$02                    ; $20:F595: A9 02       ;
CODE_20F597:    STA $01                     ; $20:F597: 85 01       ;
CODE_20F599:    LDY $00                     ; $20:F599: A4 00       ;
CODE_20F59B:    JSL CODE_20F5A6             ; $20:F59B: 22 A6 F5 20 ;
CODE_20F59F:    INC $00                     ; $20:F59F: E6 00       ;
CODE_20F5A1:    DEC $01                     ; $20:F5A1: C6 01       ;
CODE_20F5A3:    BPL CODE_20F599             ; $20:F5A3: 10 F4       ;
CODE_20F5A5:    RTL                         ; $20:F5A5: 6B          ;

CODE_20F5A6:    STY $02                     ; $20:F5A6: 84 02       ;
CODE_20F5A8:    LDA $1D9C,y                 ; $20:F5A8: B9 9C 1D    ;
CODE_20F5AB:    ASL A                       ; $20:F5AB: 0A          ;
CODE_20F5AC:    TAX                         ; $20:F5AC: AA          ;
CODE_20F5AD:    LDY $1600                   ; $20:F5AD: AC 00 16    ;
CODE_20F5B0:    REP #$20                    ; $20:F5B0: C2 20       ;
CODE_20F5B2:    LDA.w DATA_21CF0D,x                 ; $20:F5B2: BD 0D CF    ;
CODE_20F5B5:    STA $1606,y                 ; $20:F5B5: 99 06 16    ;
CODE_20F5B8:    LDA.w DATA_21CF15,x                 ; $20:F5B8: BD 15 CF    ;
CODE_20F5BB:    STA $1608,y                 ; $20:F5BB: 99 08 16    ;
CODE_20F5BE:    LDA.w DATA_21CF1D,x                 ; $20:F5BE: BD 1D CF    ;
CODE_20F5C1:    STA $160E,y                 ; $20:F5C1: 99 0E 16    ;
CODE_20F5C4:    LDA.w DATA_21CF25,x                 ; $20:F5C4: BD 25 CF    ;
CODE_20F5C7:    STA $1610,y                 ; $20:F5C7: 99 10 16    ;
CODE_20F5CA:    SEP #$20                    ; $20:F5CA: E2 20       ;
CODE_20F5CC:    LDX $0726                   ; $20:F5CC: AE 26 07    ;
CODE_20F5CF:    BEQ CODE_20F5D3             ; $20:F5CF: F0 02       ;
CODE_20F5D1:    LDX #$23                    ; $20:F5D1: A2 23       ;
CODE_20F5D3:    LDA $02                     ; $20:F5D3: A5 02       ;
CODE_20F5D5:    STX $02                     ; $20:F5D5: 86 02       ;
CODE_20F5D7:    SEC                         ; $20:F5D7: 38          ;
CODE_20F5D8:    SBC $02                     ; $20:F5D8: E5 02       ;
CODE_20F5DA:    TAX                         ; $20:F5DA: AA          ;
CODE_20F5DB:    LDA.w DATA_21CF2D,x                 ; $20:F5DB: BD 2D CF    ;
CODE_20F5DE:    STA $1603,y                 ; $20:F5DE: 99 03 16    ;
CODE_20F5E1:    LDA.w DATA_21CF30,x                 ; $20:F5E1: BD 30 CF    ;
CODE_20F5E4:    STA $160B,y                 ; $20:F5E4: 99 0B 16    ;
CODE_20F5E7:    LDA #$0F                    ; $20:F5E7: A9 0F       ;
CODE_20F5E9:    STA $1602,y                 ; $20:F5E9: 99 02 16    ;
CODE_20F5EC:    STA $160A,y                 ; $20:F5EC: 99 0A 16    ;
CODE_20F5EF:    LDA #$00                    ; $20:F5EF: A9 00       ;
CODE_20F5F1:    STA $1604,y                 ; $20:F5F1: 99 04 16    ;
CODE_20F5F4:    STA $160C,y                 ; $20:F5F4: 99 0C 16    ;
CODE_20F5F7:    LDA #$03                    ; $20:F5F7: A9 03       ;
CODE_20F5F9:    STA $1605,y                 ; $20:F5F9: 99 05 16    ;
CODE_20F5FC:    STA $160D,y                 ; $20:F5FC: 99 0D 16    ;
CODE_20F5FF:    LDA #$FF                    ; $20:F5FF: A9 FF       ;
CODE_20F601:    STA $1612,y                 ; $20:F601: 99 12 16    ;
CODE_20F604:    TYA                         ; $20:F604: 98          ;
CODE_20F605:    CLC                         ; $20:F605: 18          ;
CODE_20F606:    ADC #$10                    ; $20:F606: 69 10       ;
CODE_20F608:    STA $1600                   ; $20:F608: 8D 00 16    ;
CODE_20F60B:    RTL                         ; $20:F60B: 6B          ;

CODE_20F60C:    PHA                         ; $20:F60C: 48          ;
CODE_20F60D:    LDY $0726                   ; $20:F60D: AC 26 07    ;
CODE_20F610:    BEQ CODE_20F614             ; $20:F610: F0 02       ;
CODE_20F612:    LDY #$23                    ; $20:F612: A0 23       ;
CODE_20F614:    LDA $1D9C,y                 ; $20:F614: B9 9C 1D    ;
CODE_20F617:    BEQ CODE_20F62F             ; $20:F617: F0 16       ;
CODE_20F619:    INY                         ; $20:F619: C8          ;
CODE_20F61A:    CPY #$03                    ; $20:F61A: C0 03       ;
CODE_20F61C:    BEQ CODE_20F622             ; $20:F61C: F0 04       ;
CODE_20F61E:    CPY #$26                    ; $20:F61E: C0 26       ;
CODE_20F620:    BNE CODE_20F614             ; $20:F620: D0 F2       ;
CODE_20F622:    LDA $1D9A,y                 ; $20:F622: B9 9A 1D    ;
CODE_20F625:    STA $1D99,y                 ; $20:F625: 99 99 1D    ;
CODE_20F628:    LDA $1D9B,y                 ; $20:F628: B9 9B 1D    ;
CODE_20F62B:    STA $1D9A,y                 ; $20:F62B: 99 9A 1D    ;
CODE_20F62E:    DEY                         ; $20:F62E: 88          ;
CODE_20F62F:    PLA                         ; $20:F62F: 68          ;
CODE_20F630:    STA $1D9C,y                 ; $20:F630: 99 9C 1D    ;
CODE_20F633:    RTL                         ; $20:F633: 6B          ;

CODE_20F634:    PHA                         ; $20:F634: 48          ;
CODE_20F635:    LDY $0726                   ; $20:F635: AC 26 07    ;
CODE_20F638:    BEQ CODE_20F63C             ; $20:F638: F0 02       ;
CODE_20F63A:    LDY #$23                    ; $20:F63A: A0 23       ;
CODE_20F63C:    LDX #$1B                    ; $20:F63C: A2 1B       ;
CODE_20F63E:    LDA $1D80,y                 ; $20:F63E: B9 80 1D    ;
CODE_20F641:    BEQ CODE_20F647             ; $20:F641: F0 04       ;
CODE_20F643:    INY                         ; $20:F643: C8          ;
CODE_20F644:    DEX                         ; $20:F644: CA          ;
CODE_20F645:    BNE CODE_20F63E             ; $20:F645: D0 F7       ;
CODE_20F647:    PLA                         ; $20:F647: 68          ;
CODE_20F648:    STA $1D80,y                 ; $20:F648: 99 80 1D    ;
CODE_20F64B:    RTL                         ; $20:F64B: 6B          ;

CODE_20F64C:    PHD                         ; $20:F64C: 0B          ;
CODE_20F64D:    BRL CODE_20F94B             ; $20:F64D: 82 FB 02    ;

CODE_20F650:    PHB                         ; $20:F650: 8B          ;
CODE_20F651:    LDA #$21                    ; $20:F651: A9 21       ;
CODE_20F653:    PHA                         ; $20:F653: 48          ;
CODE_20F654:    PLB                         ; $20:F654: AB          ;
CODE_20F655:    PHD                         ; $20:F655: 0B          ;
CODE_20F656:    LDA #$43                    ; $20:F656: A9 43       ;
CODE_20F658:    XBA                         ; $20:F658: EB          ;
CODE_20F659:    LDA #$00                    ; $20:F659: A9 00       ;
CODE_20F65B:    TCD                         ; $20:F65B: 5B          ;
CODE_20F65C:    LDA #$80                    ; $20:F65C: A9 80       ;
CODE_20F65E:    STA $2115                   ; $20:F65E: 8D 15 21    ;
CODE_20F661:    REP #$10                    ; $20:F661: C2 10       ;
CODE_20F663:    LDX #$1801                  ; $20:F663: A2 01 18    ;
CODE_20F666:    STX $00                     ; $20:F666: 86 00       ;
CODE_20F668:    LDA $0238                   ; $20:F668: AD 38 02    ;
CODE_20F66B:    BNE CODE_20F670             ; $20:F66B: D0 03       ;
CODE_20F66D:    JMP CODE_20F703             ; $20:F66D: 4C 03 F7    ;

CODE_20F670:    STA $04                     ; $20:F670: 85 04       ;
CODE_20F672:    LDX #$6000                  ; $20:F672: A2 00 60    ;
CODE_20F675:    STX $2116                   ; $20:F675: 8E 16 21    ;
CODE_20F678:    LDX $0220                   ; $20:F678: AE 20 02    ;
CODE_20F67B:    STX $02                     ; $20:F67B: 86 02       ;
CODE_20F67D:    LDY #$0040                  ; $20:F67D: A0 40 00    ;
CODE_20F680:    STY $05                     ; $20:F680: 84 05       ;
CODE_20F682:    LDA #$01                    ; $20:F682: A9 01       ;
CODE_20F684:    STA $420B                   ; $20:F684: 8D 0B 42    ;
CODE_20F687:    LDX $0222                   ; $20:F687: AE 22 02    ;
CODE_20F68A:    STX $02                     ; $20:F68A: 86 02       ;
CODE_20F68C:    STY $05                     ; $20:F68C: 84 05       ;
CODE_20F68E:    STA $420B                   ; $20:F68E: 8D 0B 42    ;
CODE_20F691:    LDX $0224                   ; $20:F691: AE 24 02    ;
CODE_20F694:    STX $02                     ; $20:F694: 86 02       ;
CODE_20F696:    STY $05                     ; $20:F696: 84 05       ;
CODE_20F698:    STA $420B                   ; $20:F698: 8D 0B 42    ;
CODE_20F69B:    LDX $0226                   ; $20:F69B: AE 26 02    ;
CODE_20F69E:    STX $02                     ; $20:F69E: 86 02       ;
CODE_20F6A0:    STY $05                     ; $20:F6A0: 84 05       ;
CODE_20F6A2:    STA $420B                   ; $20:F6A2: 8D 0B 42    ;
CODE_20F6A5:    LDX $0228                   ; $20:F6A5: AE 28 02    ;
CODE_20F6A8:    STX $02                     ; $20:F6A8: 86 02       ;
CODE_20F6AA:    STY $05                     ; $20:F6AA: 84 05       ;
CODE_20F6AC:    STA $420B                   ; $20:F6AC: 8D 0B 42    ;
CODE_20F6AF:    LDX $022A                   ; $20:F6AF: AE 2A 02    ;
CODE_20F6B2:    STX $02                     ; $20:F6B2: 86 02       ;
CODE_20F6B4:    STY $05                     ; $20:F6B4: 84 05       ;
CODE_20F6B6:    STA $420B                   ; $20:F6B6: 8D 0B 42    ;
CODE_20F6B9:    LDX #$6100                  ; $20:F6B9: A2 00 61    ;
CODE_20F6BC:    STX $2116                   ; $20:F6BC: 8E 16 21    ;
CODE_20F6BF:    LDX $0239                   ; $20:F6BF: AE 39 02    ;
CODE_20F6C2:    STX $04                     ; $20:F6C2: 86 04       ;
CODE_20F6C4:    LDX $022C                   ; $20:F6C4: AE 2C 02    ;
CODE_20F6C7:    STX $02                     ; $20:F6C7: 86 02       ;
CODE_20F6C9:    STY $05                     ; $20:F6C9: 84 05       ;
CODE_20F6CB:    STA $420B                   ; $20:F6CB: 8D 0B 42    ;
CODE_20F6CE:    LDX $022E                   ; $20:F6CE: AE 2E 02    ;
CODE_20F6D1:    STX $02                     ; $20:F6D1: 86 02       ;
CODE_20F6D3:    STY $05                     ; $20:F6D3: 84 05       ;
CODE_20F6D5:    STA $420B                   ; $20:F6D5: 8D 0B 42    ;
CODE_20F6D8:    LDX $0230                   ; $20:F6D8: AE 30 02    ;
CODE_20F6DB:    STX $02                     ; $20:F6DB: 86 02       ;
CODE_20F6DD:    STY $05                     ; $20:F6DD: 84 05       ;
CODE_20F6DF:    STA $420B                   ; $20:F6DF: 8D 0B 42    ;
CODE_20F6E2:    LDX $0232                   ; $20:F6E2: AE 32 02    ;
CODE_20F6E5:    STX $02                     ; $20:F6E5: 86 02       ;
CODE_20F6E7:    STY $05                     ; $20:F6E7: 84 05       ;
CODE_20F6E9:    STA $420B                   ; $20:F6E9: 8D 0B 42    ;
CODE_20F6EC:    LDX $0234                   ; $20:F6EC: AE 34 02    ;
CODE_20F6EF:    STX $02                     ; $20:F6EF: 86 02       ;
CODE_20F6F1:    STY $05                     ; $20:F6F1: 84 05       ;
CODE_20F6F3:    STA $420B                   ; $20:F6F3: 8D 0B 42    ;
CODE_20F6F6:    LDX $0236                   ; $20:F6F6: AE 36 02    ;
CODE_20F6F9:    STX $02                     ; $20:F6F9: 86 02       ;
CODE_20F6FB:    STY $05                     ; $20:F6FB: 84 05       ;
CODE_20F6FD:    STA $420B                   ; $20:F6FD: 8D 0B 42    ;
CODE_20F700:    STZ $0238                   ; $20:F700: 9C 38 02    ;
CODE_20F703:    LDA $072B                   ; $20:F703: AD 2B 07    ;
CODE_20F706:    CMP #$03                    ; $20:F706: C9 03       ;
CODE_20F708:    BNE CODE_20F77A             ; $20:F708: D0 70       ;
CODE_20F70A:    REP #$20                    ; $20:F70A: C2 20       ;
CODE_20F70C:    SEP #$10                    ; $20:F70C: E2 10       ;
CODE_20F70E:    LDA $7F3004                 ; $20:F70E: AF 04 30 7F ;
CODE_20F712:    BEQ CODE_20F732             ; $20:F712: F0 1E       ;
CODE_20F714:    STA $2116                   ; $20:F714: 8D 16 21    ;
CODE_20F717:    LDA #$5000                  ; $20:F717: A9 00 50    ;
CODE_20F71A:    STA $02                     ; $20:F71A: 85 02       ;
CODE_20F71C:    LDX #$7F                    ; $20:F71C: A2 7F       ;
CODE_20F71E:    STX $04                     ; $20:F71E: 86 04       ;
CODE_20F720:    LDA $7F3006                 ; $20:F720: AF 06 30 7F ;
CODE_20F724:    STA $05                     ; $20:F724: 85 05       ;
CODE_20F726:    LDX #$01                    ; $20:F726: A2 01       ;
CODE_20F728:    STX $420B                   ; $20:F728: 8E 0B 42    ;
CODE_20F72B:    LDA #$0000                  ; $20:F72B: A9 00 00    ;
CODE_20F72E:    STA $7F3004                 ; $20:F72E: 8F 04 30 7F ;
CODE_20F732:    LDA $7F3008                 ; $20:F732: AF 08 30 7F ;
CODE_20F736:    BEQ CODE_20F754             ; $20:F736: F0 1C       ;
CODE_20F738:    STA $2116                   ; $20:F738: 8D 16 21    ;
CODE_20F73B:    LDA #$3800                  ; $20:F73B: A9 00 38    ;
CODE_20F73E:    STA $02                     ; $20:F73E: 85 02       ;
CODE_20F740:    LDA #$007F                  ; $20:F740: A9 7F 00    ;
CODE_20F743:    STA $04                     ; $20:F743: 85 04       ;
CODE_20F745:    LDA #$0800                  ; $20:F745: A9 00 08    ;
CODE_20F748:    STA $05                     ; $20:F748: 85 05       ;
CODE_20F74A:    STX $420B                   ; $20:F74A: 8E 0B 42    ;
CODE_20F74D:    LDA #$0000                  ; $20:F74D: A9 00 00    ;
CODE_20F750:    STA $7F3008                 ; $20:F750: 8F 08 30 7F ;
CODE_20F754:    LDA $7F300A                 ; $20:F754: AF 0A 30 7F ;
CODE_20F758:    BEQ CODE_20F776             ; $20:F758: F0 1C       ;
CODE_20F75A:    STA $2116                   ; $20:F75A: 8D 16 21    ;
CODE_20F75D:    LDA #$4000                  ; $20:F75D: A9 00 40    ;
CODE_20F760:    STA $02                     ; $20:F760: 85 02       ;
CODE_20F762:    LDA #$007F                  ; $20:F762: A9 7F 00    ;
CODE_20F765:    STA $04                     ; $20:F765: 85 04       ;
CODE_20F767:    LDA #$0800                  ; $20:F767: A9 00 08    ;
CODE_20F76A:    STA $05                     ; $20:F76A: 85 05       ;
CODE_20F76C:    STX $420B                   ; $20:F76C: 8E 0B 42    ;
CODE_20F76F:    LDA #$0000                  ; $20:F76F: A9 00 00    ;
CODE_20F772:    STA $7F300A                 ; $20:F772: 8F 0A 30 7F ;
CODE_20F776:    SEP #$20                    ; $20:F776: E2 20       ;
CODE_20F778:    REP #$10                    ; $20:F778: C2 10       ;
CODE_20F77A:    LDA $02D1                   ; $20:F77A: AD D1 02    ;
CODE_20F77D:    BPL CODE_20F7CC             ; $20:F77D: 10 4D       ;
CODE_20F77F:    REP #$20                    ; $20:F77F: C2 20       ;
CODE_20F781:    SEP #$10                    ; $20:F781: E2 10       ;
CODE_20F783:    STZ $2115                   ; $20:F783: 9C 15 21    ;
CODE_20F786:    LDA #$21FF                  ; $20:F786: A9 FF 21    ;
CODE_20F789:    STA $0002                   ; $20:F789: 8D 02 00    ;
CODE_20F78C:    LDA #$5000                  ; $20:F78C: A9 00 50    ;
CODE_20F78F:    STA $2116                   ; $20:F78F: 8D 16 21    ;
CODE_20F792:    LDA #$1808                  ; $20:F792: A9 08 18    ;
CODE_20F795:    STA $00                     ; $20:F795: 85 00       ;
CODE_20F797:    STZ $04                     ; $20:F797: 64 04       ;
CODE_20F799:    LDA #$0002                  ; $20:F799: A9 02 00    ;
CODE_20F79C:    STA $02                     ; $20:F79C: 85 02       ;
CODE_20F79E:    LDA #$0300                  ; $20:F79E: A9 00 03    ;
CODE_20F7A1:    STA $05                     ; $20:F7A1: 85 05       ;
CODE_20F7A3:    LDY #$01                    ; $20:F7A3: A0 01       ;
CODE_20F7A5:    STY $420B                   ; $20:F7A5: 8C 0B 42    ;
CODE_20F7A8:    LDX #$80                    ; $20:F7A8: A2 80       ;
CODE_20F7AA:    STX $2115                   ; $20:F7AA: 8E 15 21    ;
CODE_20F7AD:    STA $05                     ; $20:F7AD: 85 05       ;
CODE_20F7AF:    LDA #$5000                  ; $20:F7AF: A9 00 50    ;
CODE_20F7B2:    STA $2116                   ; $20:F7B2: 8D 16 21    ;
CODE_20F7B5:    LDA #$1908                  ; $20:F7B5: A9 08 19    ;
CODE_20F7B8:    STA $00                     ; $20:F7B8: 85 00       ;
CODE_20F7BA:    LDA #$0003                  ; $20:F7BA: A9 03 00    ;
CODE_20F7BD:    STA $02                     ; $20:F7BD: 85 02       ;
CODE_20F7BF:    STY $420B                   ; $20:F7BF: 8C 0B 42    ;
CODE_20F7C2:    SEP #$20                    ; $20:F7C2: E2 20       ;
CODE_20F7C4:    LDA #$01                    ; $20:F7C4: A9 01       ;
CODE_20F7C6:    STA $02D1                   ; $20:F7C6: 8D D1 02    ;
CODE_20F7C9:    JMP CODE_20F923             ; $20:F7C9: 4C 23 F9    ;

CODE_20F7CC:    LDX $023E                   ; $20:F7CC: AE 3E 02    ;
CODE_20F7CF:    BEQ CODE_20F7EE             ; $20:F7CF: F0 1D       ;
CODE_20F7D1:    STX $2116                   ; $20:F7D1: 8E 16 21    ;
CODE_20F7D4:    LDA $0242                   ; $20:F7D4: AD 42 02    ;
CODE_20F7D7:    STA $04                     ; $20:F7D7: 85 04       ;
CODE_20F7D9:    LDX $0240                   ; $20:F7D9: AE 40 02    ;
CODE_20F7DC:    STX $02                     ; $20:F7DC: 86 02       ;
CODE_20F7DE:    LDX $02CA                   ; $20:F7DE: AE CA 02    ;
CODE_20F7E1:    STX $05                     ; $20:F7E1: 86 05       ;
CODE_20F7E3:    LDA #$01                    ; $20:F7E3: A9 01       ;
CODE_20F7E5:    STA $420B                   ; $20:F7E5: 8D 0B 42    ;
CODE_20F7E8:    STZ $023E                   ; $20:F7E8: 9C 3E 02    ;
CODE_20F7EB:    STZ $023F                   ; $20:F7EB: 9C 3F 02    ;
CODE_20F7EE:    SEP #$10                    ; $20:F7EE: E2 10       ;
CODE_20F7F0:    LDA $02D3                   ; $20:F7F0: AD D3 02    ;
CODE_20F7F3:    BMI CODE_20F84F             ; $20:F7F3: 30 5A       ;
CODE_20F7F5:    LDA $1EBF                   ; $20:F7F5: AD BF 1E    ;
CODE_20F7F8:    BNE CODE_20F82D             ; $20:F7F8: D0 33       ;
CODE_20F7FA:    LDA $0727                   ; $20:F7FA: AD 27 07    ;
CODE_20F7FD:    CMP #$02                    ; $20:F7FD: C9 02       ;
CODE_20F7FF:    BNE CODE_20F82A             ; $20:F7FF: D0 29       ;
CODE_20F801:    LDA $02D7                   ; $20:F801: AD D7 02    ;
CODE_20F804:    BNE CODE_20F82A             ; $20:F804: D0 24       ;
CODE_20F806:    LDX $07BC                   ; $20:F806: AE BC 07    ;
CODE_20F809:    REP #$20                    ; $20:F809: C2 20       ;
CODE_20F80B:    LDA #$2320                  ; $20:F80B: A9 20 23    ;
CODE_20F80E:    STA $2116                   ; $20:F80E: 8D 16 21    ;
CODE_20F811:    LDA #$0100                  ; $20:F811: A9 00 01    ;
CODE_20F814:    STA $05                     ; $20:F814: 85 05       ;
CODE_20F816:    SEP #$20                    ; $20:F816: E2 20       ;
CODE_20F818:    LDA #$37                    ; $20:F818: A9 37       ;
CODE_20F81A:    STA $04                     ; $20:F81A: 85 04       ;
CODE_20F81C:    LDA.w DATA_21CA3E,x                 ; $20:F81C: BD 3E CA    ;
CODE_20F81F:    STA $03                     ; $20:F81F: 85 03       ;
CODE_20F821:    LDA #$40                    ; $20:F821: A9 40       ;
CODE_20F823:    STA $02                     ; $20:F823: 85 02       ;
CODE_20F825:    LDA #$01                    ; $20:F825: A9 01       ;
CODE_20F827:    STA $420B                   ; $20:F827: 8D 0B 42    ;
CODE_20F82A:    JMP CODE_20F923             ; $20:F82A: 4C 23 F9    ;

CODE_20F82D:    CMP #$07                    ; $20:F82D: C9 07       ;
CODE_20F82F:    BEQ CODE_20F82A             ; $20:F82F: F0 F9       ;
CODE_20F831:    CMP #$0F                    ; $20:F831: C9 0F       ;
CODE_20F833:    BCC CODE_20F848             ; $20:F833: 90 13       ;
CODE_20F835:    CMP #$11                    ; $20:F835: C9 11       ;
CODE_20F837:    BNE CODE_20F83C             ; $20:F837: D0 03       ;
CODE_20F839:    JMP CODE_20F9C4             ; $20:F839: 4C C4 F9    ;

CODE_20F83C:    CMP #$13                    ; $20:F83C: C9 13       ;
CODE_20F83E:    BCC CODE_20F82A             ; $20:F83E: 90 EA       ;
CODE_20F840:    CMP #$16                    ; $20:F840: C9 16       ;
CODE_20F842:    BEQ CODE_20F82A             ; $20:F842: F0 E6       ;
CODE_20F844:    CMP #$2C                    ; $20:F844: C9 2C       ;
CODE_20F846:    BEQ CODE_20F82A             ; $20:F846: F0 E2       ;
CODE_20F848:    LDX #$00                    ; $20:F848: A2 00       ;
CODE_20F84A:    LDA $0567                   ; $20:F84A: AD 67 05    ;
CODE_20F84D:    BNE CODE_20F8A7             ; $20:F84D: D0 58       ;
CODE_20F84F:    REP #$20                    ; $20:F84F: C2 20       ;
CODE_20F851:    LDA #$2980                  ; $20:F851: A9 80 29    ;
CODE_20F854:    STA $2116                   ; $20:F854: 8D 16 21    ;
CODE_20F857:    SEP #$20                    ; $20:F857: E2 20       ;
CODE_20F859:    LDA $02B1                   ; $20:F859: AD B1 02    ;
CODE_20F85C:    AND #$18                    ; $20:F85C: 29 18       ;
CODE_20F85E:    LSR A                       ; $20:F85E: 4A          ;
CODE_20F85F:    LSR A                       ; $20:F85F: 4A          ;
CODE_20F860:    LSR A                       ; $20:F860: 4A          ;
CODE_20F861:    TAX                         ; $20:F861: AA          ;
CODE_20F862:    LDA #$36                    ; $20:F862: A9 36       ;
CODE_20F864:    STA $04                     ; $20:F864: 85 04       ;
CODE_20F866:    LDA.w DATA_21CA2C,x                 ; $20:F866: BD 2C CA    ;
CODE_20F869:    STA $03                     ; $20:F869: 85 03       ;
CODE_20F86B:    STZ $02                     ; $20:F86B: 64 02       ;
CODE_20F86D:    LDY #$80                    ; $20:F86D: A0 80       ;
CODE_20F86F:    STY $05                     ; $20:F86F: 84 05       ;
CODE_20F871:    LDA #$01                    ; $20:F871: A9 01       ;
CODE_20F873:    STA $420B                   ; $20:F873: 8D 0B 42    ;
CODE_20F876:    REP #$20                    ; $20:F876: C2 20       ;
CODE_20F878:    LDA #$2DC0                  ; $20:F878: A9 C0 2D    ;
CODE_20F87B:    STA $2116                   ; $20:F87B: 8D 16 21    ;
CODE_20F87E:    SEP #$20                    ; $20:F87E: E2 20       ;
CODE_20F880:    LDA.w DATA_21CA30,x                 ; $20:F880: BD 30 CA    ;
CODE_20F883:    STA $03                     ; $20:F883: 85 03       ;
CODE_20F885:    LDA #$80                    ; $20:F885: A9 80       ;
CODE_20F887:    STA $02                     ; $20:F887: 85 02       ;
CODE_20F889:    STY $05                     ; $20:F889: 84 05       ;
CODE_20F88B:    LDA #$01                    ; $20:F88B: A9 01       ;
CODE_20F88D:    STA $420B                   ; $20:F88D: 8D 0B 42    ;
CODE_20F890:    INC $02B1                   ; $20:F890: EE B1 02    ;
CODE_20F893:    LDX $0245                   ; $20:F893: AE 45 02    ;
CODE_20F896:    BMI CODE_20F8C8             ; $20:F896: 30 30       ;
CODE_20F898:    BEQ CODE_20F8A7             ; $20:F898: F0 0D       ;
CODE_20F89A:    LDA $0243                   ; $20:F89A: AD 43 02    ;
CODE_20F89D:    CMP #$04                    ; $20:F89D: C9 04       ;
CODE_20F89F:    BNE CODE_20F8A4             ; $20:F89F: D0 03       ;
CODE_20F8A1:    STX $02B2                   ; $20:F8A1: 8E B2 02    ;
CODE_20F8A4:    LDX $02B2                   ; $20:F8A4: AE B2 02    ;
CODE_20F8A7:    REP #$20                    ; $20:F8A7: C2 20       ;
CODE_20F8A9:    LDA #$60C0                  ; $20:F8A9: A9 C0 60    ;
CODE_20F8AC:    STA $2116                   ; $20:F8AC: 8D 16 21    ;
CODE_20F8AF:    SEP #$20                    ; $20:F8AF: E2 20       ;
CODE_20F8B1:    LDA #$31                    ; $20:F8B1: A9 31       ;
CODE_20F8B3:    STA $04                     ; $20:F8B3: 85 04       ;
CODE_20F8B5:    LDA.w DATA_21CA34,x                 ; $20:F8B5: BD 34 CA    ;
CODE_20F8B8:    STA $03                     ; $20:F8B8: 85 03       ;
CODE_20F8BA:    LDA.w DATA_21CA39,x                 ; $20:F8BA: BD 39 CA    ;
CODE_20F8BD:    STA $02                     ; $20:F8BD: 85 02       ;
CODE_20F8BF:    LDY #$80                    ; $20:F8BF: A0 80       ;
CODE_20F8C1:    STY $05                     ; $20:F8C1: 84 05       ;
CODE_20F8C3:    LDA #$01                    ; $20:F8C3: A9 01       ;
CODE_20F8C5:    STA $420B                   ; $20:F8C5: 8D 0B 42    ;
CODE_20F8C8:    LDX #$00                    ; $20:F8C8: A2 00       ;
CODE_20F8CA:    LDA $02BF                   ; $20:F8CA: AD BF 02    ;
CODE_20F8CD:    CMP #$01                    ; $20:F8CD: C9 01       ;
CODE_20F8CF:    BEQ CODE_20F8E3             ; $20:F8CF: F0 12       ;
CODE_20F8D1:    CMP #$05                    ; $20:F8D1: C9 05       ;
CODE_20F8D3:    BEQ CODE_20F8E3             ; $20:F8D3: F0 0E       ;
CODE_20F8D5:    CMP #$06                    ; $20:F8D5: C9 06       ;
CODE_20F8D7:    BEQ CODE_20F8E3             ; $20:F8D7: F0 0A       ;
CODE_20F8D9:    CMP #$07                    ; $20:F8D9: C9 07       ;
CODE_20F8DB:    BEQ CODE_20F8E3             ; $20:F8DB: F0 06       ;
CODE_20F8DD:    LDX #$04                    ; $20:F8DD: A2 04       ;
CODE_20F8DF:    CMP #$0D                    ; $20:F8DF: C9 0D       ;
CODE_20F8E1:    BNE CODE_20F923             ; $20:F8E1: D0 40       ;
CODE_20F8E3:    STX $0004                   ; $20:F8E3: 8E 04 00    ;
CODE_20F8E6:    REP #$20                    ; $20:F8E6: C2 20       ;
CODE_20F8E8:    LDA #$5A00                  ; $20:F8E8: A9 00 5A    ;
CODE_20F8EB:    STA $2116                   ; $20:F8EB: 8D 16 21    ;
CODE_20F8EE:    LDA #$0100                  ; $20:F8EE: A9 00 01    ;
CODE_20F8F1:    STA $05                     ; $20:F8F1: 85 05       ;
CODE_20F8F3:    SEP #$20                    ; $20:F8F3: E2 20       ;
CODE_20F8F5:    LDA $02C2                   ; $20:F8F5: AD C2 02    ;
CODE_20F8F8:    INC A                       ; $20:F8F8: 1A          ;
CODE_20F8F9:    CMP #$0A                    ; $20:F8F9: C9 0A       ;
CODE_20F8FB:    BNE CODE_20F908             ; $20:F8FB: D0 0B       ;
CODE_20F8FD:    LDA $02C0                   ; $20:F8FD: AD C0 02    ;
CODE_20F900:    INC A                       ; $20:F900: 1A          ;
CODE_20F901:    AND #$03                    ; $20:F901: 29 03       ;
CODE_20F903:    STA $02C0                   ; $20:F903: 8D C0 02    ;
CODE_20F906:    LDA #$00                    ; $20:F906: A9 00       ;
CODE_20F908:    STA $02C2                   ; $20:F908: 8D C2 02    ;
CODE_20F90B:    LDA $02C0                   ; $20:F90B: AD C0 02    ;
CODE_20F90E:    CLC                         ; $20:F90E: 18          ;
CODE_20F90F:    ADC $0004                   ; $20:F90F: 6D 04 00    ;
CODE_20F912:    TAX                         ; $20:F912: AA          ;
CODE_20F913:    LDA #$38                    ; $20:F913: A9 38       ;
CODE_20F915:    STA $04                     ; $20:F915: 85 04       ;
CODE_20F917:    LDA.w DATA_21CA40,x                 ; $20:F917: BD 40 CA    ;
CODE_20F91A:    STA $03                     ; $20:F91A: 85 03       ;
CODE_20F91C:    STZ $02                     ; $20:F91C: 64 02       ;
CODE_20F91E:    LDA #$01                    ; $20:F91E: A9 01       ;
CODE_20F920:    STA $420B                   ; $20:F920: 8D 0B 42    ;
CODE_20F923:    LDA $1500                   ; $20:F923: AD 00 15    ;
CODE_20F926:    BEQ CODE_20F94A             ; $20:F926: F0 22       ;
CODE_20F928:    STZ $2121                   ; $20:F928: 9C 21 21    ;
CODE_20F92B:    REP #$20                    ; $20:F92B: C2 20       ;
CODE_20F92D:    LDA #$2200                  ; $20:F92D: A9 00 22    ;
CODE_20F930:    STA $10                     ; $20:F930: 85 10       ;
CODE_20F932:    LDA #$1300                  ; $20:F932: A9 00 13    ;
CODE_20F935:    STA $12                     ; $20:F935: 85 12       ;
CODE_20F937:    LDY #$00                    ; $20:F937: A0 00       ;
CODE_20F939:    STY $14                     ; $20:F939: 84 14       ;
CODE_20F93B:    LDA #$0200                  ; $20:F93B: A9 00 02    ;
CODE_20F93E:    STA $15                     ; $20:F93E: 85 15       ;
CODE_20F940:    SEP #$20                    ; $20:F940: E2 20       ;
CODE_20F942:    LDA #$02                    ; $20:F942: A9 02       ;
CODE_20F944:    STA $420B                   ; $20:F944: 8D 0B 42    ;
CODE_20F947:    STZ $1500                   ; $20:F947: 9C 00 15    ;
CODE_20F94A:    PLB                         ; $20:F94A: AB          ;
CODE_20F94B:    LDA #$0A                    ; $20:F94B: A9 0A       ;
CODE_20F94D:    XBA                         ; $20:F94D: EB          ;
CODE_20F94E:    LDA #$00                    ; $20:F94E: A9 00       ;
CODE_20F950:    TCD                         ; $20:F950: 5B          ;
CODE_20F951:    LDY #$1C                    ; $20:F951: A0 1C       ;
CODE_20F953:    TYA                         ; $20:F953: 98          ;
CODE_20F954:    ASL A                       ; $20:F954: 0A          ;
CODE_20F955:    ASL A                       ; $20:F955: 0A          ;
CODE_20F956:    TAX                         ; $20:F956: AA          ;
CODE_20F957:    LDA $23,x                   ; $20:F957: B5 23       ;
CODE_20F959:    ASL A                       ; $20:F959: 0A          ;
CODE_20F95A:    ASL A                       ; $20:F95A: 0A          ;
CODE_20F95B:    ORA $22,x                   ; $20:F95B: 15 22       ;
CODE_20F95D:    ASL A                       ; $20:F95D: 0A          ;
CODE_20F95E:    ASL A                       ; $20:F95E: 0A          ;
CODE_20F95F:    ORA $21,x                   ; $20:F95F: 15 21       ;
CODE_20F961:    ASL A                       ; $20:F961: 0A          ;
CODE_20F962:    ASL A                       ; $20:F962: 0A          ;
CODE_20F963:    ORA $20,x                   ; $20:F963: 15 20       ;
CODE_20F965:    STA $0A00,y                 ; $20:F965: 99 00 0A    ;
CODE_20F968:    LDA $27,x                   ; $20:F968: B5 27       ;
CODE_20F96A:    ASL A                       ; $20:F96A: 0A          ;
CODE_20F96B:    ASL A                       ; $20:F96B: 0A          ;
CODE_20F96C:    ORA $26,x                   ; $20:F96C: 15 26       ;
CODE_20F96E:    ASL A                       ; $20:F96E: 0A          ;
CODE_20F96F:    ASL A                       ; $20:F96F: 0A          ;
CODE_20F970:    ORA $25,x                   ; $20:F970: 15 25       ;
CODE_20F972:    ASL A                       ; $20:F972: 0A          ;
CODE_20F973:    ASL A                       ; $20:F973: 0A          ;
CODE_20F974:    ORA $24,x                   ; $20:F974: 15 24       ;
CODE_20F976:    STA $0A01,y                 ; $20:F976: 99 01 0A    ;
CODE_20F979:    LDA $2B,x                   ; $20:F979: B5 2B       ;
CODE_20F97B:    ASL A                       ; $20:F97B: 0A          ;
CODE_20F97C:    ASL A                       ; $20:F97C: 0A          ;
CODE_20F97D:    ORA $2A,x                   ; $20:F97D: 15 2A       ;
CODE_20F97F:    ASL A                       ; $20:F97F: 0A          ;
CODE_20F980:    ASL A                       ; $20:F980: 0A          ;
CODE_20F981:    ORA $29,x                   ; $20:F981: 15 29       ;
CODE_20F983:    ASL A                       ; $20:F983: 0A          ;
CODE_20F984:    ASL A                       ; $20:F984: 0A          ;
CODE_20F985:    ORA $28,x                   ; $20:F985: 15 28       ;
CODE_20F987:    STA $0A02,y                 ; $20:F987: 99 02 0A    ;
CODE_20F98A:    LDA $2F,x                   ; $20:F98A: B5 2F       ;
CODE_20F98C:    ASL A                       ; $20:F98C: 0A          ;
CODE_20F98D:    ASL A                       ; $20:F98D: 0A          ;
CODE_20F98E:    ORA $2E,x                   ; $20:F98E: 15 2E       ;
CODE_20F990:    ASL A                       ; $20:F990: 0A          ;
CODE_20F991:    ASL A                       ; $20:F991: 0A          ;
CODE_20F992:    ORA $2D,x                   ; $20:F992: 15 2D       ;
CODE_20F994:    ASL A                       ; $20:F994: 0A          ;
CODE_20F995:    ASL A                       ; $20:F995: 0A          ;
CODE_20F996:    ORA $2C,x                   ; $20:F996: 15 2C       ;
CODE_20F998:    STA $0A03,y                 ; $20:F998: 99 03 0A    ;
CODE_20F99B:    DEY                         ; $20:F99B: 88          ;
CODE_20F99C:    DEY                         ; $20:F99C: 88          ;
CODE_20F99D:    DEY                         ; $20:F99D: 88          ;
CODE_20F99E:    DEY                         ; $20:F99E: 88          ;
CODE_20F99F:    BPL CODE_20F953             ; $20:F99F: 10 B2       ;
CODE_20F9A1:    REP #$20                    ; $20:F9A1: C2 20       ;
CODE_20F9A3:    LDA #$4300                  ; $20:F9A3: A9 00 43    ;
CODE_20F9A6:    TCD                         ; $20:F9A6: 5B          ;
CODE_20F9A7:    STZ $2102                   ; $20:F9A7: 9C 02 21    ;
CODE_20F9AA:    LDA #$0400                  ; $20:F9AA: A9 00 04    ;
CODE_20F9AD:    STA $00                     ; $20:F9AD: 85 00       ;
CODE_20F9AF:    LDA #$0800                  ; $20:F9AF: A9 00 08    ;
CODE_20F9B2:    STA $02                     ; $20:F9B2: 85 02       ;
CODE_20F9B4:    STZ $04                     ; $20:F9B4: 64 04       ;
CODE_20F9B6:    LDA #$0220                  ; $20:F9B6: A9 20 02    ;
CODE_20F9B9:    STA $05                     ; $20:F9B9: 85 05       ;
CODE_20F9BB:    LDY #$01                    ; $20:F9BB: A0 01       ;
CODE_20F9BD:    STY $420B                   ; $20:F9BD: 8C 0B 42    ;
CODE_20F9C0:    SEP #$20                    ; $20:F9C0: E2 20       ;
CODE_20F9C2:    PLD                         ; $20:F9C2: 2B          ;
CODE_20F9C3:    RTS                         ; $20:F9C3: 60          ;

CODE_20F9C4:    REP #$20                    ; $20:F9C4: C2 20       ;
CODE_20F9C6:    LDA #$3060                  ; $20:F9C6: A9 60 30    ;
CODE_20F9C9:    STA $2116                   ; $20:F9C9: 8D 16 21    ;
CODE_20F9CC:    SEP #$20                    ; $20:F9CC: E2 20       ;
CODE_20F9CE:    LDX $02D2                   ; $20:F9CE: AE D2 02    ;
CODE_20F9D1:    LDA #$33                    ; $20:F9D1: A9 33       ;
CODE_20F9D3:    STA $04                     ; $20:F9D3: 85 04       ;
CODE_20F9D5:    LDA.w DATA_21CA48,x                 ; $20:F9D5: BD 48 CA    ;
CODE_20F9D8:    STA $03                     ; $20:F9D8: 85 03       ;
CODE_20F9DA:    LDA.w DATA_21CA4C,x                 ; $20:F9DA: BD 4C CA    ;
CODE_20F9DD:    STA $02                     ; $20:F9DD: 85 02       ;
CODE_20F9DF:    LDY #$80                    ; $20:F9DF: A0 80       ;
CODE_20F9E1:    STY $05                     ; $20:F9E1: 84 05       ;
CODE_20F9E3:    LDA #$01                    ; $20:F9E3: A9 01       ;
CODE_20F9E5:    STA $420B                   ; $20:F9E5: 8D 0B 42    ;
CODE_20F9E8:    JMP CODE_20F923             ; $20:F9E8: 4C 23 F9    ;

CODE_20F9EB:    REP #$20                    ; $20:F9EB: C2 20       ;
CODE_20F9ED:    STZ $0210                   ; $20:F9ED: 9C 10 02    ;
CODE_20F9F0:    STZ $0212                   ; $20:F9F0: 9C 12 02    ;
CODE_20F9F3:    STZ $0214                   ; $20:F9F3: 9C 14 02    ;
CODE_20F9F6:    STZ $0216                   ; $20:F9F6: 9C 16 02    ;
CODE_20F9F9:    STZ $0218                   ; $20:F9F9: 9C 18 02    ;
CODE_20F9FC:    STZ $021A                   ; $20:F9FC: 9C 1A 02    ;
CODE_20F9FF:    SEP #$20                    ; $20:F9FF: E2 20       ;
CODE_20FA01:    RTS                         ; $20:FA01: 60          ;

CODE_20FA02:    LDA #$80                    ; $20:FA02: A9 80       ;
CODE_20FA04:    STA $16                     ; $20:FA04: 85 16       ;
CODE_20FA06:    STA $2100                   ; $20:FA06: 8D 00 21    ;
CODE_20FA09:    RTS                         ; $20:FA09: 60          ;

CODE_20FA0A:    REP #$20                    ; $20:FA0A: C2 20       ;
CODE_20FA0C:    STZ $1600                   ; $20:FA0C: 9C 00 16    ;
CODE_20FA0F:    LDA #$FFFF                  ; $20:FA0F: A9 FF FF    ;
CODE_20FA12:    STA $1602                   ; $20:FA12: 8D 02 16    ;
CODE_20FA15:    SEP #$20                    ; $20:FA15: E2 20       ;
CODE_20FA17:    JSR CODE_20FA02             ; $20:FA17: 20 02 FA    ;
CODE_20FA1A:    REP #$20                    ; $20:FA1A: C2 20       ;
CODE_20FA1C:    STZ $2115                   ; $20:FA1C: 9C 15 21    ;
CODE_20FA1F:    STZ $2116                   ; $20:FA1F: 9C 16 21    ;
CODE_20FA22:    LDA #$1808                  ; $20:FA22: A9 08 18    ;
CODE_20FA25:    STA $4310                   ; $20:FA25: 8D 10 43    ;
CODE_20FA28:    STZ $4314                   ; $20:FA28: 9C 14 43    ;
CODE_20FA2B:    LDA #$0000                  ; $20:FA2B: A9 00 00    ;
CODE_20FA2E:    STA $4312                   ; $20:FA2E: 8D 12 43    ;
CODE_20FA31:    LDA #$2000                  ; $20:FA31: A9 00 20    ;
CODE_20FA34:    STA $4315                   ; $20:FA34: 8D 15 43    ;
CODE_20FA37:    LDY #$02                    ; $20:FA37: A0 02       ;
CODE_20FA39:    STY $420B                   ; $20:FA39: 8C 0B 42    ;
CODE_20FA3C:    LDX #$80                    ; $20:FA3C: A2 80       ;
CODE_20FA3E:    STX $2115                   ; $20:FA3E: 8E 15 21    ;
CODE_20FA41:    STZ $2116                   ; $20:FA41: 9C 16 21    ;
CODE_20FA44:    STA $4315                   ; $20:FA44: 8D 15 43    ;
CODE_20FA47:    LDA #$1908                  ; $20:FA47: A9 08 19    ;
CODE_20FA4A:    STA $4310                   ; $20:FA4A: 8D 10 43    ;
CODE_20FA4D:    LDA #$0001                  ; $20:FA4D: A9 01 00    ;
CODE_20FA50:    STA $4312                   ; $20:FA50: 8D 12 43    ;
CODE_20FA53:    STY $420B                   ; $20:FA53: 8C 0B 42    ;
CODE_20FA56:    STZ $2115                   ; $20:FA56: 9C 15 21    ;
CODE_20FA59:    LDA #$01FF                  ; $20:FA59: A9 FF 01    ;
CODE_20FA5C:    STA $02                     ; $20:FA5C: 85 02       ;
CODE_20FA5E:    LDA #$5000                  ; $20:FA5E: A9 00 50    ;
CODE_20FA61:    STA $2116                   ; $20:FA61: 8D 16 21    ;
CODE_20FA64:    LDA #$1808                  ; $20:FA64: A9 08 18    ;
CODE_20FA67:    STA $4310                   ; $20:FA67: 8D 10 43    ;
CODE_20FA6A:    LDA #$0002                  ; $20:FA6A: A9 02 00    ;
CODE_20FA6D:    STA $4312                   ; $20:FA6D: 8D 12 43    ;
CODE_20FA70:    LDA #$0800                  ; $20:FA70: A9 00 08    ;
CODE_20FA73:    STA $4315                   ; $20:FA73: 8D 15 43    ;
CODE_20FA76:    STY $420B                   ; $20:FA76: 8C 0B 42    ;
CODE_20FA79:    STX $2115                   ; $20:FA79: 8E 15 21    ;
CODE_20FA7C:    STA $4315                   ; $20:FA7C: 8D 15 43    ;
CODE_20FA7F:    LDA #$5000                  ; $20:FA7F: A9 00 50    ;
CODE_20FA82:    STA $2116                   ; $20:FA82: 8D 16 21    ;
CODE_20FA85:    LDA #$1908                  ; $20:FA85: A9 08 19    ;
CODE_20FA88:    STA $4310                   ; $20:FA88: 8D 10 43    ;
CODE_20FA8B:    LDA #$0003                  ; $20:FA8B: A9 03 00    ;
CODE_20FA8E:    STA $4312                   ; $20:FA8E: 8D 12 43    ;
CODE_20FA91:    STY $420B                   ; $20:FA91: 8C 0B 42    ;
CODE_20FA94:    SEP #$20                    ; $20:FA94: E2 20       ;
CODE_20FA96:    RTS                         ; $20:FA96: 60          ;

CODE_20FA97:    STZ $2115                   ; $20:FA97: 9C 15 21    ;
CODE_20FA9A:    REP #$20                    ; $20:FA9A: C2 20       ;
CODE_20FA9C:    STZ $2116                   ; $20:FA9C: 9C 16 21    ;
CODE_20FA9F:    LDA #$1808                  ; $20:FA9F: A9 08 18    ;
CODE_20FAA2:    STA $4310                   ; $20:FAA2: 8D 10 43    ;
CODE_20FAA5:    STZ $4314                   ; $20:FAA5: 9C 14 43    ;
CODE_20FAA8:    LDA #$0739                  ; $20:FAA8: A9 39 07    ;
CODE_20FAAB:    STA $4312                   ; $20:FAAB: 8D 12 43    ;
CODE_20FAAE:    LDA #$2000                  ; $20:FAAE: A9 00 20    ;
CODE_20FAB1:    STA $4315                   ; $20:FAB1: 8D 15 43    ;
CODE_20FAB4:    LDY #$02                    ; $20:FAB4: A0 02       ;
CODE_20FAB6:    STY $420B                   ; $20:FAB6: 8C 0B 42    ;
CODE_20FAB9:    LDX #$80                    ; $20:FAB9: A2 80       ;
CODE_20FABB:    STX $2115                   ; $20:FABB: 8E 15 21    ;
CODE_20FABE:    STZ $2116                   ; $20:FABE: 9C 16 21    ;
CODE_20FAC1:    STA $4315                   ; $20:FAC1: 8D 15 43    ;
CODE_20FAC4:    LDA #$1908                  ; $20:FAC4: A9 08 19    ;
CODE_20FAC7:    STA $4310                   ; $20:FAC7: 8D 10 43    ;
CODE_20FACA:    LDA #$073A                  ; $20:FACA: A9 3A 07    ;
CODE_20FACD:    STA $4312                   ; $20:FACD: 8D 12 43    ;
CODE_20FAD0:    STY $420B                   ; $20:FAD0: 8C 0B 42    ;
CODE_20FAD3:    SEP #$20                    ; $20:FAD3: E2 20       ;
CODE_20FAD5:    RTS                         ; $20:FAD5: 60          ;

CODE_20FAD6:    LDY #$04                    ; $20:FAD6: A0 04       ;
CODE_20FAD8:    LDA $0216                   ; $20:FAD8: AD 16 02    ;
CODE_20FADB:    CMP.w DATA_21CF33,y                 ; $20:FADB: D9 33 CF    ;
CODE_20FADE:    BEQ CODE_20FAE3             ; $20:FADE: F0 03       ;
CODE_20FAE0:    DEY                         ; $20:FAE0: 88          ;
CODE_20FAE1:    BPL CODE_20FADB             ; $20:FAE1: 10 F8       ;
CODE_20FAE3:    LDA.w DATA_21CF38,y                 ; $20:FAE3: B9 38 CF    ;
CODE_20FAE6:    STA $01                     ; $20:FAE6: 85 01       ;
CODE_20FAE8:    LDA.w DATA_21CF3D,y                 ; $20:FAE8: B9 3D CF    ;
CODE_20FAEB:    STA $00                     ; $20:FAEB: 85 00       ;
CODE_20FAED:    REP #$10                    ; $20:FAED: C2 10       ;
CODE_20FAEF:    LDY #$0300                  ; $20:FAEF: A0 00 03    ;
CODE_20FAF2:    LDA #$80                    ; $20:FAF2: A9 80       ;
CODE_20FAF4:    STA $2115                   ; $20:FAF4: 8D 15 21    ;
CODE_20FAF7:    REP #$20                    ; $20:FAF7: C2 20       ;
CODE_20FAF9:    LDA $00                     ; $20:FAF9: A5 00       ;
CODE_20FAFB:    STA $2116                   ; $20:FAFB: 8D 16 21    ;
CODE_20FAFE:    LDA $0739                   ; $20:FAFE: AD 39 07    ;
CODE_20FB01:    STA $2118                   ; $20:FB01: 8D 18 21    ;
CODE_20FB04:    DEY                         ; $20:FB04: 88          ;
CODE_20FB05:    BEQ CODE_20FB1C             ; $20:FB05: F0 15       ;
CODE_20FB07:    LDA $00                     ; $20:FB07: A5 00       ;
CODE_20FB09:    CLC                         ; $20:FB09: 18          ;
CODE_20FB0A:    ADC #$0001                  ; $20:FB0A: 69 01 00    ;
CODE_20FB0D:    STA $00                     ; $20:FB0D: 85 00       ;
CODE_20FB0F:    AND #$03FF                  ; $20:FB0F: 29 FF 03    ;
CODE_20FB12:    BNE CODE_20FAFE             ; $20:FB12: D0 EA       ;
CODE_20FB14:    LDA #$0800                  ; $20:FB14: A9 00 08    ;
CODE_20FB17:    STA $00                     ; $20:FB17: 85 00       ;
CODE_20FB19:    JMP CODE_20FAF7             ; $20:FB19: 4C F7 FA    ;
CODE_20FB1C:    SEP #$30                    ; $20:FB1C: E2 30       ;
CODE_20FB1E:    RTS                         ; $20:FB1E: 60          ;

CODE_20FB1F:    STY $03                 ; $20:FB1F: 84 03       ;ExecutePtrShort | Preserve Y
CODE_20FB21:    PLY                     ; $20:FB21: 7A          ;Get bank of JSL which called this routine
CODE_20FB22:    STY $00                 ; $20:FB22: 84 00       ;Store in Y
CODE_20FB24:    REP #$30                ; $20:FB24: C2 30       ;\
CODE_20FB26:    AND #$00FF              ; $20:FB26: 29 FF 00    ; | Get pointer index * 2
CODE_20FB29:    ASL A                   ; $20:FB29: 0A          ; |
CODE_20FB2A:    TAY                     ; $20:FB2A: A8          ;/ To Y
CODE_20FB2B:    PLA                     ; $20:FB2B: 68          ;Get high and low bytes of (pointer table-1)
CODE_20FB2C:    STA $01                 ; $20:FB2C: 85 01       ;Into $01 and $02, $00 $01 $02 now contains the 24-bit address of the pointer table-1
CODE_20FB2E:    INY                     ; $20:FB2E: C8          ;INY so we get the proper index for the pointer table
CODE_20FB2F:    LDA [$00],y             ; $20:FB2F: B7 00       ;
CODE_20FB31:    STA $00                 ; $20:FB31: 85 00       ;Store jump pointer into $00
CODE_20FB33:    SEP #$30                    ; $20:FB33: E2 30       ;
CODE_20FB35:    LDY $03                 ; $20:FB35: A4 03       ;Restore Y
CODE_20FB37:    JML [$0000]             ; $20:FB37: DC 00 00    ;Jump to pointer

CODE_20FB3A:    STY $05                 ; $20:FB3A: 84 05       ; ExecutePtrLong | Preserve Y       
CODE_20FB3C:    PLY                     ; $20:FB3C: 7A          ; Get bank of source
CODE_20FB3D:    STY $02                 ; $20:FB3D: 84 02       ; Store in Y
CODE_20FB3F:    REP #$30                ; $20:FB3F: C2 30       ;
CODE_20FB41:    AND #$00FF              ; $20:FB41: 29 FF 00    ; Get A  
CODE_20FB44:    STA $03                 ; $20:FB44: 85 03       ; Store in $03
CODE_20FB46:    ASL A                   ; $20:FB46: 0A          ;\ *3 since the table entries are three bytes
CODE_20FB47:    ADC $03                 ; $20:FB47: 65 03       ;/  
CODE_20FB49:    TAY                     ; $20:FB49: A8          ; A -> Y
CODE_20FB4A:    PLA                     ; $20:FB4A: 68          ; Get Low and High byte of source
CODE_20FB4B:    STA $03                 ; $20:FB4B: 85 03       ;   
CODE_20FB4D:    INY                     ; $20:FB4D: C8          ; +1 so we don't read the last byte of the JSL   
CODE_20FB4E:    LDA [$02],y             ; $20:FB4E: B7 02       ;\ Read low and high byte of spot to jump to
CODE_20FB50:    STA $00                 ; $20:FB50: 85 00       ;/  
CODE_20FB52:    INY                     ; $20:FB52: C8          ; +1 so we don't read the same data again
CODE_20FB53:    LDA [$02],y             ; $20:FB53: B7 02       ;\ Get high and bank byte
CODE_20FB55:    STA $01                 ; $20:FB55: 85 01       ;/  
CODE_20FB57:    SEP #$30                ; $20:FB57: E2 30       ;
CODE_20FB59:    LDY $05                 ; $20:FB59: A4 05       ; Restore Y   
CODE_20FB5B:    JML [$0000]             ; $20:FB5B: DC 00 00    ; Jump to pointer

CODE_20FB5E:    STZ $4016                   ; $20:FB5E: 9C 16 40    ;
CODE_20FB61:    LDA $701FF4                 ; $20:FB61: AF F4 1F 70 ;
CODE_20FB65:    TAX                         ; $20:FB65: AA          ;
CODE_20FB66:    LDA $4218,x                 ; $20:FB66: BD 18 42    ;
CODE_20FB69:    STA $00                     ; $20:FB69: 85 00       ;
CODE_20FB6B:    LDA $4219,x                 ; $20:FB6B: BD 19 42    ;
CODE_20FB6E:    STA $01                     ; $20:FB6E: 85 01       ;
CODE_20FB70:    LDA $00                     ; $20:FB70: A5 00       ;
CODE_20FB72:    STA $F4                     ; $20:FB72: 85 F4       ;
CODE_20FB74:    TAY                         ; $20:FB74: A8          ;
CODE_20FB75:    EOR $FC                     ; $20:FB75: 45 FC       ;
CODE_20FB77:    AND $F4                     ; $20:FB77: 25 F4       ;
CODE_20FB79:    STA $F8                     ; $20:FB79: 85 F8       ;
CODE_20FB7B:    STY $FC                     ; $20:FB7B: 84 FC       ;
CODE_20FB7D:    LDA $01                     ; $20:FB7D: A5 01       ;
CODE_20FB7F:    STA $F2                     ; $20:FB7F: 85 F2       ;
CODE_20FB81:    STA $17                     ; $20:FB81: 85 17       ;
CODE_20FB83:    TAY                         ; $20:FB83: A8          ;
CODE_20FB84:    EOR $FA                     ; $20:FB84: 45 FA       ;
CODE_20FB86:    AND $F2                     ; $20:FB86: 25 F2       ;
CODE_20FB88:    STA $F6                     ; $20:FB88: 85 F6       ;
CODE_20FB8A:    STA $18                     ; $20:FB8A: 85 18       ;
CODE_20FB8C:    STY $FA                     ; $20:FB8C: 84 FA       ;
CODE_20FB8E:    LDA $701FF6                 ; $20:FB8E: AF F6 1F 70 ;
CODE_20FB92:    TAX                         ; $20:FB92: AA          ;
CODE_20FB93:    LDA $4218,x                 ; $20:FB93: BD 18 42    ;
CODE_20FB96:    STA $00                     ; $20:FB96: 85 00       ;
CODE_20FB98:    LDA $4219,x                 ; $20:FB98: BD 19 42    ;
CODE_20FB9B:    STA $01                     ; $20:FB9B: 85 01       ;
CODE_20FB9D:    LDA $00                     ; $20:FB9D: A5 00       ;
CODE_20FB9F:    STA $F5                     ; $20:FB9F: 85 F5       ;
CODE_20FBA1:    TAY                         ; $20:FBA1: A8          ;
CODE_20FBA2:    EOR $FD                     ; $20:FBA2: 45 FD       ;
CODE_20FBA4:    AND $F5                     ; $20:FBA4: 25 F5       ;
CODE_20FBA6:    STA $F9                     ; $20:FBA6: 85 F9       ;
CODE_20FBA8:    STY $FD                     ; $20:FBA8: 84 FD       ;
CODE_20FBAA:    LDA $01                     ; $20:FBAA: A5 01       ;
CODE_20FBAC:    STA $F3                     ; $20:FBAC: 85 F3       ;
CODE_20FBAE:    TAY                         ; $20:FBAE: A8          ;
CODE_20FBAF:    EOR $FB                     ; $20:FBAF: 45 FB       ;
CODE_20FBB1:    AND $F3                     ; $20:FBB1: 25 F3       ;
CODE_20FBB3:    STA $F7                     ; $20:FBB3: 85 F7       ;
CODE_20FBB5:    STY $FB                     ; $20:FBB5: 84 FB       ;
CODE_20FBB7:    LDA $0726                   ; $20:FBB7: AD 26 07    ;
CODE_20FBBA:    BEQ CODE_20FBC4             ; $20:FBBA: F0 08       ;
CODE_20FBBC:    LDA $F3                     ; $20:FBBC: A5 F3       ;
CODE_20FBBE:    STA $17                     ; $20:FBBE: 85 17       ;
CODE_20FBC0:    LDA $F7                     ; $20:FBC0: A5 F7       ;
CODE_20FBC2:    STA $18                     ; $20:FBC2: 85 18       ;
CODE_20FBC4:    RTS                         ; $20:FBC4: 60          ;

CODE_20FBC5:    LDA $0210                   ; $20:FBC5: AD 10 02    ;
CODE_20FBC8:    STA $210D                   ; $20:FBC8: 8D 0D 21    ;
CODE_20FBCB:    LDA $0211                   ; $20:FBCB: AD 11 02    ;
CODE_20FBCE:    STA $210D                   ; $20:FBCE: 8D 0D 21    ;
CODE_20FBD1:    LDA $0216                   ; $20:FBD1: AD 16 02    ;
CODE_20FBD4:    STA $210E                   ; $20:FBD4: 8D 0E 21    ;
CODE_20FBD7:    STA $02                     ; $20:FBD7: 85 02       ;
CODE_20FBD9:    LDA $0217                   ; $20:FBD9: AD 17 02    ;
CODE_20FBDC:    STA $210E                   ; $20:FBDC: 8D 0E 21    ;
CODE_20FBDF:    STA $03                     ; $20:FBDF: 85 03       ;
CODE_20FBE1:    LDA $0212                   ; $20:FBE1: AD 12 02    ;
CODE_20FBE4:    STA $210F                   ; $20:FBE4: 8D 0F 21    ;
CODE_20FBE7:    LDA $0213                   ; $20:FBE7: AD 13 02    ;
CODE_20FBEA:    STA $210F                   ; $20:FBEA: 8D 0F 21    ;
CODE_20FBED:    LDA $0218                   ; $20:FBED: AD 18 02    ;
CODE_20FBF0:    STA $2110                   ; $20:FBF0: 8D 10 21    ;
CODE_20FBF3:    LDA $0219                   ; $20:FBF3: AD 19 02    ;
CODE_20FBF6:    STA $2110                   ; $20:FBF6: 8D 10 21    ;
CODE_20FBF9:    LDA $0100                   ; $20:FBF9: AD 00 01    ;
CODE_20FBFC:    CMP #$20                    ; $20:FBFC: C9 20       ;
CODE_20FBFE:    BNE CODE_20FC03             ; $20:FBFE: D0 03       ;
CODE_20FC00:    JMP CODE_20FCA6             ; $20:FC00: 4C A6 FC    ;

CODE_20FC03:    LDA $02BF                   ; $20:FC03: AD BF 02    ;
CODE_20FC06:    CMP #$01                    ; $20:FC06: C9 01       ;
CODE_20FC08:    BNE CODE_20FC47             ; $20:FC08: D0 3D       ;
CODE_20FC0A:    LDX $02C1                   ; $20:FC0A: AE C1 02    ;
CODE_20FC0D:    CPX #$1C                    ; $20:FC0D: E0 1C       ;
CODE_20FC0F:    BNE CODE_20FC3C             ; $20:FC0F: D0 2B       ;
CODE_20FC11:    REP #$20                    ; $20:FC11: C2 20       ;
CODE_20FC13:    LDA #$0000                  ; $20:FC13: A9 00 00    ;
CODE_20FC16:    STA $02CC                   ; $20:FC16: 8D CC 02    ;
CODE_20FC19:    LDA $0216                   ; $20:FC19: AD 16 02    ;
CODE_20FC1C:    CMP #$0950                  ; $20:FC1C: C9 50 09    ;
CODE_20FC1F:    BCC CODE_20FC2B             ; $20:FC1F: 90 0A       ;
CODE_20FC21:    LDA $0216                   ; $20:FC21: AD 16 02    ;
CODE_20FC24:    SEC                         ; $20:FC24: 38          ;
CODE_20FC25:    SBC #$0950                  ; $20:FC25: E9 50 09    ;
CODE_20FC28:    STA $02CC                   ; $20:FC28: 8D CC 02    ;
CODE_20FC2B:    SEP #$20                    ; $20:FC2B: E2 20       ;
CODE_20FC2D:    LDA $02CC                   ; $20:FC2D: AD CC 02    ;
CODE_20FC30:    STA $2112                   ; $20:FC30: 8D 12 21    ;
CODE_20FC33:    LDA $02CD                   ; $20:FC33: AD CD 02    ;
CODE_20FC36:    STA $2112                   ; $20:FC36: 8D 12 21    ;
CODE_20FC39:    JMP CODE_20FCB2             ; $20:FC39: 4C B2 FC    ;

CODE_20FC3C:    STZ $2112                   ; $20:FC3C: 9C 12 21    ;
CODE_20FC3F:    LDA #$01                    ; $20:FC3F: A9 01       ;
CODE_20FC41:    STA $2112                   ; $20:FC41: 8D 12 21    ;
CODE_20FC44:    JMP CODE_20FCB2             ; $20:FC44: 4C B2 FC    ;

CODE_20FC47:    CMP #$08                    ; $20:FC47: C9 08       ;
CODE_20FC49:    BNE CODE_20FC7B             ; $20:FC49: D0 30       ;
CODE_20FC4B:    REP #$20                    ; $20:FC4B: C2 20       ;
CODE_20FC4D:    LDA $0210                   ; $20:FC4D: AD 10 02    ;
CODE_20FC50:    LSR A                       ; $20:FC50: 4A          ;
CODE_20FC51:    LSR A                       ; $20:FC51: 4A          ;
CODE_20FC52:    LSR A                       ; $20:FC52: 4A          ;
CODE_20FC53:    STA $00                     ; $20:FC53: 85 00       ;
CODE_20FC55:    LDA $02                     ; $20:FC55: A5 02       ;
CODE_20FC57:    LSR A                       ; $20:FC57: 4A          ;
CODE_20FC58:    LSR A                       ; $20:FC58: 4A          ;
CODE_20FC59:    LSR A                       ; $20:FC59: 4A          ;
CODE_20FC5A:    STA $02C3                   ; $20:FC5A: 8D C3 02    ;
CODE_20FC5D:    LDA $02                     ; $20:FC5D: A5 02       ;
CODE_20FC5F:    SEC                         ; $20:FC5F: 38          ;
CODE_20FC60:    SBC $02C3                   ; $20:FC60: ED C3 02    ;
CODE_20FC63:    STA $02C3                   ; $20:FC63: 8D C3 02    ;
CODE_20FC66:    SEP #$20                    ; $20:FC66: E2 20       ;
CODE_20FC68:    LDA $00                     ; $20:FC68: A5 00       ;
CODE_20FC6A:    STA $2111                   ; $20:FC6A: 8D 11 21    ;
CODE_20FC6D:    LDA $01                     ; $20:FC6D: A5 01       ;
CODE_20FC6F:    STA $2111                   ; $20:FC6F: 8D 11 21    ;
CODE_20FC72:    LDA #$17                    ; $20:FC72: A9 17       ;
CODE_20FC74:    STA $2112                   ; $20:FC74: 8D 12 21    ;
CODE_20FC77:    STZ $2112                   ; $20:FC77: 9C 12 21    ;
CODE_20FC7A:    RTS                         ; $20:FC7A: 60          ;

CODE_20FC7B:    CMP #$09                    ; $20:FC7B: C9 09       ;
CODE_20FC7D:    BNE CODE_20FCA6             ; $20:FC7D: D0 27       ;
CODE_20FC7F:    REP #$20                    ; $20:FC7F: C2 20       ;
CODE_20FC81:    LDA $0210                   ; $20:FC81: AD 10 02    ;
CODE_20FC84:    LSR A                       ; $20:FC84: 4A          ;
CODE_20FC85:    LSR A                       ; $20:FC85: 4A          ;
CODE_20FC86:    STA $00                     ; $20:FC86: 85 00       ;
CODE_20FC88:    SEP #$20                    ; $20:FC88: E2 20       ;
CODE_20FC8A:    LDA $00                     ; $20:FC8A: A5 00       ;
CODE_20FC8C:    STA $2111                   ; $20:FC8C: 8D 11 21    ;
CODE_20FC8F:    LDA $01                     ; $20:FC8F: A5 01       ;
CODE_20FC91:    STA $2111                   ; $20:FC91: 8D 11 21    ;
CODE_20FC94:    LDA $0218                   ; $20:FC94: AD 18 02    ;
CODE_20FC97:    CLC                         ; $20:FC97: 18          ;
CODE_20FC98:    ADC #$11                    ; $20:FC98: 69 11       ;
CODE_20FC9A:    STA $2112                   ; $20:FC9A: 8D 12 21    ;
CODE_20FC9D:    LDA $0219                   ; $20:FC9D: AD 19 02    ;
CODE_20FCA0:    ADC #$00                    ; $20:FCA0: 69 00       ;
CODE_20FCA2:    STA $2112                   ; $20:FCA2: 8D 12 21    ;
CODE_20FCA5:    RTS                         ; $20:FCA5: 60          ;

CODE_20FCA6:    LDA $021A                   ; $20:FCA6: AD 1A 02    ;
CODE_20FCA9:    STA $2112                   ; $20:FCA9: 8D 12 21    ;
CODE_20FCAC:    LDA $021B                   ; $20:FCAC: AD 1B 02    ;
CODE_20FCAF:    STA $2112                   ; $20:FCAF: 8D 12 21    ;
CODE_20FCB2:    LDA $0214                   ; $20:FCB2: AD 14 02    ;
CODE_20FCB5:    STA $2111                   ; $20:FCB5: 8D 11 21    ;
CODE_20FCB8:    LDA $0215                   ; $20:FCB8: AD 15 02    ;
CODE_20FCBB:    STA $2111                   ; $20:FCBB: 8D 11 21    ;
CODE_20FCBE:    RTS                         ; $20:FCBE: 60          ;

CODE_20FCBF:    LDA $0210                   ; $20:FCBF: AD 10 02    ;
CODE_20FCC2:    STA $210D                   ; $20:FCC2: 8D 0D 21    ;
CODE_20FCC5:    LDA $0211                   ; $20:FCC5: AD 11 02    ;
CODE_20FCC8:    STA $210D                   ; $20:FCC8: 8D 0D 21    ;
CODE_20FCCB:    LDA $0216                   ; $20:FCCB: AD 16 02    ;
CODE_20FCCE:    CLC                         ; $20:FCCE: 18          ;
CODE_20FCCF:    ADC $1CF2                   ; $20:FCCF: 6D F2 1C    ;
CODE_20FCD2:    STA $210E                   ; $20:FCD2: 8D 0E 21    ;
CODE_20FCD5:    STA $02                     ; $20:FCD5: 85 02       ;
CODE_20FCD7:    LDA $0217                   ; $20:FCD7: AD 17 02    ;
CODE_20FCDA:    STA $210E                   ; $20:FCDA: 8D 0E 21    ;
CODE_20FCDD:    STA $03                     ; $20:FCDD: 85 03       ;
CODE_20FCDF:    LDA $02BF                   ; $20:FCDF: AD BF 02    ;
CODE_20FCE2:    CMP #$03                    ; $20:FCE2: C9 03       ;
CODE_20FCE4:    BEQ CODE_20FCEC             ; $20:FCE4: F0 06       ;
CODE_20FCE6:    CMP #$04                    ; $20:FCE6: C9 04       ;
CODE_20FCE8:    BEQ CODE_20FCEC             ; $20:FCE8: F0 02       ;
CODE_20FCEA:    BRA CODE_20FD25             ; $20:FCEA: 80 39       ;

CODE_20FCEC:    LDA $9C                     ; $20:FCEC: A5 9C       ;
CODE_20FCEE:    BNE CODE_20FCF8             ; $20:FCEE: D0 08       ;
CODE_20FCF0:    LDA $037A                   ; $20:FCF0: AD 7A 03    ;
CODE_20FCF3:    BNE CODE_20FCF8             ; $20:FCF3: D0 03       ;
CODE_20FCF5:    JSR CODE_20FF4A             ; $20:FCF5: 20 4A FF    ;
CODE_20FCF8:    LDA $0353                   ; $20:FCF8: AD 53 03    ;
CODE_20FCFB:    STA $210F                   ; $20:FCFB: 8D 0F 21    ;
CODE_20FCFE:    LDA $0354                   ; $20:FCFE: AD 54 03    ;
CODE_20FD01:    STA $210F                   ; $20:FD01: 8D 0F 21    ;
CODE_20FD04:    LDA #$3F                    ; $20:FD04: A9 3F       ;
CODE_20FD06:    STA $2110                   ; $20:FD06: 8D 10 21    ;
CODE_20FD09:    STZ $2110                   ; $20:FD09: 9C 10 21    ;
CODE_20FD0C:    LDA $0212                   ; $20:FD0C: AD 12 02    ;
CODE_20FD0F:    STA $2111                   ; $20:FD0F: 8D 11 21    ;
CODE_20FD12:    LDA $0213                   ; $20:FD12: AD 13 02    ;
CODE_20FD15:    STA $2111                   ; $20:FD15: 8D 11 21    ;
CODE_20FD18:    LDA $0218                   ; $20:FD18: AD 18 02    ;
CODE_20FD1B:    STA $2112                   ; $20:FD1B: 8D 12 21    ;
CODE_20FD1E:    LDA $0219                   ; $20:FD1E: AD 19 02    ;
CODE_20FD21:    STA $2112                   ; $20:FD21: 8D 12 21    ;
CODE_20FD24:    RTS                         ; $20:FD24: 60          ;

CODE_20FD25:    LDA $0350                   ; $20:FD25: AD 50 03    ;
CODE_20FD28:    CMP #$12                    ; $20:FD28: C9 12       ;
CODE_20FD2A:    BNE CODE_20FD85             ; $20:FD2A: D0 59       ;
CODE_20FD2C:    LDA $02BF                   ; $20:FD2C: AD BF 02    ;
CODE_20FD2F:    BEQ CODE_20FD6A             ; $20:FD2F: F0 39       ;
CODE_20FD31:    REP #$20                    ; $20:FD31: C2 20       ;
CODE_20FD33:    LDA $0210                   ; $20:FD33: AD 10 02    ;
CODE_20FD36:    LSR A                       ; $20:FD36: 4A          ;
CODE_20FD37:    STA $00                     ; $20:FD37: 85 00       ;
CODE_20FD39:    LDA $02                     ; $20:FD39: A5 02       ;
CODE_20FD3B:    LSR A                       ; $20:FD3B: 4A          ;
CODE_20FD3C:    LSR A                       ; $20:FD3C: 4A          ;
CODE_20FD3D:    LSR A                       ; $20:FD3D: 4A          ;
CODE_20FD3E:    STA $02C3                   ; $20:FD3E: 8D C3 02    ;
CODE_20FD41:    LDA $02                     ; $20:FD41: A5 02       ;
CODE_20FD43:    SEC                         ; $20:FD43: 38          ;
CODE_20FD44:    SBC $02C3                   ; $20:FD44: ED C3 02    ;
CODE_20FD47:    STA $02C3                   ; $20:FD47: 8D C3 02    ;
CODE_20FD4A:    SEP #$20                    ; $20:FD4A: E2 20       ;
CODE_20FD4C:    LDA $00                     ; $20:FD4C: A5 00       ;
CODE_20FD4E:    STA $210F                   ; $20:FD4E: 8D 0F 21    ;
CODE_20FD51:    LDA $01                     ; $20:FD51: A5 01       ;
CODE_20FD53:    STA $210F                   ; $20:FD53: 8D 0F 21    ;
CODE_20FD56:    LDA $02C3                   ; $20:FD56: AD C3 02    ;
CODE_20FD59:    CLC                         ; $20:FD59: 18          ;
CODE_20FD5A:    ADC #$20                    ; $20:FD5A: 69 20       ;
CODE_20FD5C:    STA $2110                   ; $20:FD5C: 8D 10 21    ;
CODE_20FD5F:    LDA $02C4                   ; $20:FD5F: AD C4 02    ;
CODE_20FD62:    ADC #$00                    ; $20:FD62: 69 00       ;
CODE_20FD64:    STA $2110                   ; $20:FD64: 8D 10 21    ;
CODE_20FD67:    JMP CODE_20FEED             ; $20:FD67: 4C ED FE    ;

CODE_20FD6A:    LDA $02CC                   ; $20:FD6A: AD CC 02    ;
CODE_20FD6D:    STA $2110                   ; $20:FD6D: 8D 10 21    ;
CODE_20FD70:    LDA $02CD                   ; $20:FD70: AD CD 02    ;
CODE_20FD73:    STA $2110                   ; $20:FD73: 8D 10 21    ;
CODE_20FD76:    LDA $02CE                   ; $20:FD76: AD CE 02    ;
CODE_20FD79:    STA $210F                   ; $20:FD79: 8D 0F 21    ;
CODE_20FD7C:    LDA $02CF                   ; $20:FD7C: AD CF 02    ;
CODE_20FD7F:    STA $210F                   ; $20:FD7F: 8D 0F 21    ;
CODE_20FD82:    JMP CODE_20FEED             ; $20:FD82: 4C ED FE    ;

CODE_20FD85:    LDA $0212                   ; $20:FD85: AD 12 02    ;
CODE_20FD88:    STA $210F                   ; $20:FD88: 8D 0F 21    ;
CODE_20FD8B:    LDA $0213                   ; $20:FD8B: AD 13 02    ;
CODE_20FD8E:    STA $210F                   ; $20:FD8E: 8D 0F 21    ;
CODE_20FD91:    LDA $0218                   ; $20:FD91: AD 18 02    ;
CODE_20FD94:    STA $2110                   ; $20:FD94: 8D 10 21    ;
CODE_20FD97:    LDA $0219                   ; $20:FD97: AD 19 02    ;
CODE_20FD9A:    STA $2110                   ; $20:FD9A: 8D 10 21    ;
CODE_20FD9D:    LDA $02BF                   ; $20:FD9D: AD BF 02    ;
CODE_20FDA0:    CMP #$01                    ; $20:FDA0: C9 01       ;
CODE_20FDA2:    BNE CODE_20FDCC             ; $20:FDA2: D0 28       ;
CODE_20FDA4:    LDA $02C1                   ; $20:FDA4: AD C1 02    ;
CODE_20FDA7:    CMP #$34                    ; $20:FDA7: C9 34       ;
CODE_20FDA9:    BNE CODE_20FDB5             ; $20:FDA9: D0 0A       ;
CODE_20FDAB:    STZ $2112                   ; $20:FDAB: 9C 12 21    ;
CODE_20FDAE:    LDA #$01                    ; $20:FDAE: A9 01       ;
CODE_20FDB0:    STA $2112                   ; $20:FDB0: 8D 12 21    ;
CODE_20FDB3:    BRA CODE_20FDBF             ; $20:FDB3: 80 0A       ;

CODE_20FDB5:    LDA $02                     ; $20:FDB5: A5 02       ;
CODE_20FDB7:    STA $2112                   ; $20:FDB7: 8D 12 21    ;
CODE_20FDBA:    LDA $03                     ; $20:FDBA: A5 03       ;
CODE_20FDBC:    STA $2112                   ; $20:FDBC: 8D 12 21    ;
CODE_20FDBF:    LDA $0210                   ; $20:FDBF: AD 10 02    ;
CODE_20FDC2:    STA $2111                   ; $20:FDC2: 8D 11 21    ;
CODE_20FDC5:    LDA $0211                   ; $20:FDC5: AD 11 02    ;
CODE_20FDC8:    STA $2111                   ; $20:FDC8: 8D 11 21    ;
CODE_20FDCB:    RTS                         ; $20:FDCB: 60          ;

CODE_20FDCC:    CMP #$08                    ; $20:FDCC: C9 08       ;
CODE_20FDCE:    BNE CODE_20FDDA             ; $20:FDCE: D0 0A       ;
CODE_20FDD0:    LDA #$17                    ; $20:FDD0: A9 17       ;
CODE_20FDD2:    STA $2112                   ; $20:FDD2: 8D 12 21    ;
CODE_20FDD5:    STZ $2112                   ; $20:FDD5: 9C 12 21    ;
CODE_20FDD8:    BRA CODE_20FDBF             ; $20:FDD8: 80 E5       ;

CODE_20FDDA:    CMP #$05                    ; $20:FDDA: C9 05       ;
CODE_20FDDC:    BNE CODE_20FDE6             ; $20:FDDC: D0 08       ;
CODE_20FDDE:    STZ $2112                   ; $20:FDDE: 9C 12 21    ;
CODE_20FDE1:    STZ $2112                   ; $20:FDE1: 9C 12 21    ;
CODE_20FDE4:    BRA CODE_20FDBF             ; $20:FDE4: 80 D9       ;

CODE_20FDE6:    CMP #$06                    ; $20:FDE6: C9 06       ;
CODE_20FDE8:    BNE CODE_20FDF4             ; $20:FDE8: D0 0A       ;
CODE_20FDEA:    STZ $2112                   ; $20:FDEA: 9C 12 21    ;
CODE_20FDED:    LDA #$01                    ; $20:FDED: A9 01       ;
CODE_20FDEF:    STA $2112                   ; $20:FDEF: 8D 12 21    ;
CODE_20FDF2:    BRA CODE_20FDBF             ; $20:FDF2: 80 CB       ;

CODE_20FDF4:    CMP #$07                    ; $20:FDF4: C9 07       ;
CODE_20FDF6:    BNE CODE_20FE10             ; $20:FDF6: D0 18       ;
CODE_20FDF8:    REP #$20                    ; $20:FDF8: C2 20       ;
CODE_20FDFA:    LDA #$00B8                  ; $20:FDFA: A9 B8 00    ;
CODE_20FDFD:    CLC                         ; $20:FDFD: 18          ;
CODE_20FDFE:    ADC $02                     ; $20:FDFE: 65 02       ;
CODE_20FE00:    STA $04                     ; $20:FE00: 85 04       ;
CODE_20FE02:    SEP #$20                    ; $20:FE02: E2 20       ;
CODE_20FE04:    LDA $04                     ; $20:FE04: A5 04       ;
CODE_20FE06:    STA $2110                   ; $20:FE06: 8D 10 21    ;
CODE_20FE09:    LDA $05                     ; $20:FE09: A5 05       ;
CODE_20FE0B:    STA $2110                   ; $20:FE0B: 8D 10 21    ;
CODE_20FE0E:    BRA CODE_20FDB5             ; $20:FE0E: 80 A5       ;

CODE_20FE10:    CMP #$02                    ; $20:FE10: C9 02       ;
CODE_20FE12:    BEQ CODE_20FE4A             ; $20:FE12: F0 36       ;
CODE_20FE14:    CMP #$09                    ; $20:FE14: C9 09       ;
CODE_20FE16:    BEQ CODE_20FE23             ; $20:FE16: F0 0B       ;
CODE_20FE18:    CMP #$0A                    ; $20:FE18: C9 0A       ;
CODE_20FE1A:    BEQ CODE_20FE23             ; $20:FE1A: F0 07       ;
CODE_20FE1C:    CMP #$0F                    ; $20:FE1C: C9 0F       ;
CODE_20FE1E:    BEQ CODE_20FE23             ; $20:FE1E: F0 03       ;
CODE_20FE20:    JMP CODE_20FE85             ; $20:FE20: 4C 85 FE    ;

CODE_20FE23:    REP #$20                    ; $20:FE23: C2 20       ;
CODE_20FE25:    LDA $0210                   ; $20:FE25: AD 10 02    ;
CODE_20FE28:    LSR A                       ; $20:FE28: 4A          ;
CODE_20FE29:    LSR A                       ; $20:FE29: 4A          ;
CODE_20FE2A:    STA $00                     ; $20:FE2A: 85 00       ;
CODE_20FE2C:    SEP #$20                    ; $20:FE2C: E2 20       ;
CODE_20FE2E:    LDA $00                     ; $20:FE2E: A5 00       ;
CODE_20FE30:    STA $2111                   ; $20:FE30: 8D 11 21    ;
CODE_20FE33:    LDA $01                     ; $20:FE33: A5 01       ;
CODE_20FE35:    STA $2111                   ; $20:FE35: 8D 11 21    ;
CODE_20FE38:    LDA $0218                   ; $20:FE38: AD 18 02    ;
CODE_20FE3B:    CLC                         ; $20:FE3B: 18          ;
CODE_20FE3C:    ADC #$11                    ; $20:FE3C: 69 11       ;
CODE_20FE3E:    STA $2112                   ; $20:FE3E: 8D 12 21    ;
CODE_20FE41:    LDA $0219                   ; $20:FE41: AD 19 02    ;
CODE_20FE44:    ADC #$00                    ; $20:FE44: 69 00       ;
CODE_20FE46:    STA $2112                   ; $20:FE46: 8D 12 21    ;
CODE_20FE49:    RTS                         ; $20:FE49: 60          ;

CODE_20FE4A:    REP #$20                    ; $20:FE4A: C2 20       ;
CODE_20FE4C:    LDA $0210                   ; $20:FE4C: AD 10 02    ;
CODE_20FE4F:    LSR A                       ; $20:FE4F: 4A          ;
CODE_20FE50:    LSR A                       ; $20:FE50: 4A          ;
CODE_20FE51:    STA $00                     ; $20:FE51: 85 00       ;
CODE_20FE53:    STA $0353                   ; $20:FE53: 8D 53 03    ;
CODE_20FE56:    LDA $02                     ; $20:FE56: A5 02       ;
CODE_20FE58:    LSR A                       ; $20:FE58: 4A          ;
CODE_20FE59:    LSR A                       ; $20:FE59: 4A          ;
CODE_20FE5A:    LSR A                       ; $20:FE5A: 4A          ;
CODE_20FE5B:    STA $02C3                   ; $20:FE5B: 8D C3 02    ;
CODE_20FE5E:    LDA $02                     ; $20:FE5E: A5 02       ;
CODE_20FE60:    SEC                         ; $20:FE60: 38          ;
CODE_20FE61:    SBC $02C3                   ; $20:FE61: ED C3 02    ;
CODE_20FE64:    STA $02C3                   ; $20:FE64: 8D C3 02    ;
CODE_20FE67:    SEP #$20                    ; $20:FE67: E2 20       ;
CODE_20FE69:    LDA $00                     ; $20:FE69: A5 00       ;
CODE_20FE6B:    STA $2111                   ; $20:FE6B: 8D 11 21    ;
CODE_20FE6E:    LDA $01                     ; $20:FE6E: A5 01       ;
CODE_20FE70:    STA $2111                   ; $20:FE70: 8D 11 21    ;
CODE_20FE73:    LDA $02C3                   ; $20:FE73: AD C3 02    ;
CODE_20FE76:    CLC                         ; $20:FE76: 18          ;
CODE_20FE77:    ADC #$20                    ; $20:FE77: 69 20       ;
CODE_20FE79:    STA $2112                   ; $20:FE79: 8D 12 21    ;
CODE_20FE7C:    LDA $02C4                   ; $20:FE7C: AD C4 02    ;
CODE_20FE7F:    ADC #$00                    ; $20:FE7F: 69 00       ;
CODE_20FE81:    STA $2112                   ; $20:FE81: 8D 12 21    ;
CODE_20FE84:    RTS                         ; $20:FE84: 60          ;

CODE_20FE85:    CMP #$0E                    ; $20:FE85: C9 0E       ;
CODE_20FE87:    BNE CODE_20FEAA             ; $20:FE87: D0 21       ;
CODE_20FE89:    LDA $02                     ; $20:FE89: A5 02       ;
CODE_20FE8B:    STA $2112                   ; $20:FE8B: 8D 12 21    ;
CODE_20FE8E:    LDA $03                     ; $20:FE8E: A5 03       ;
CODE_20FE90:    STA $2112                   ; $20:FE90: 8D 12 21    ;
CODE_20FE93:    REP #$20                    ; $20:FE93: C2 20       ;
CODE_20FE95:    LDA $0210                   ; $20:FE95: AD 10 02    ;
CODE_20FE98:    LSR A                       ; $20:FE98: 4A          ;
CODE_20FE99:    LSR A                       ; $20:FE99: 4A          ;
CODE_20FE9A:    LSR A                       ; $20:FE9A: 4A          ;
CODE_20FE9B:    STA $00                     ; $20:FE9B: 85 00       ;
CODE_20FE9D:    SEP #$20                    ; $20:FE9D: E2 20       ;
CODE_20FE9F:    LDA $00                     ; $20:FE9F: A5 00       ;
CODE_20FEA1:    STA $2111                   ; $20:FEA1: 8D 11 21    ;
CODE_20FEA4:    LDA $01                     ; $20:FEA4: A5 01       ;
CODE_20FEA6:    STA $2111                   ; $20:FEA6: 8D 11 21    ;
CODE_20FEA9:    RTS                         ; $20:FEA9: 60          ;

CODE_20FEAA:    CMP #$0B                    ; $20:FEAA: C9 0B       ;
CODE_20FEAC:    BNE CODE_20FEED             ; $20:FEAC: D0 3F       ;
CODE_20FEAE:    LDA $9C                     ; $20:FEAE: A5 9C       ;
CODE_20FEB0:    BNE CODE_20FEBA             ; $20:FEB0: D0 08       ;
CODE_20FEB2:    LDA $037A                   ; $20:FEB2: AD 7A 03    ;
CODE_20FEB5:    BNE CODE_20FEBA             ; $20:FEB5: D0 03       ;
CODE_20FEB7:    JSR CODE_20FF4A             ; $20:FEB7: 20 4A FF    ;
CODE_20FEBA:    REP #$20                    ; $20:FEBA: C2 20       ;
CODE_20FEBC:    LDA $02                     ; $20:FEBC: A5 02       ;
CODE_20FEBE:    LSR A                       ; $20:FEBE: 4A          ;
CODE_20FEBF:    LSR A                       ; $20:FEBF: 4A          ;
CODE_20FEC0:    LSR A                       ; $20:FEC0: 4A          ;
CODE_20FEC1:    STA $02C3                   ; $20:FEC1: 8D C3 02    ;
CODE_20FEC4:    LDA $02                     ; $20:FEC4: A5 02       ;
CODE_20FEC6:    SEC                         ; $20:FEC6: 38          ;
CODE_20FEC7:    SBC $02C3                   ; $20:FEC7: ED C3 02    ;
CODE_20FECA:    STA $02C3                   ; $20:FECA: 8D C3 02    ;
CODE_20FECD:    SEP #$20                    ; $20:FECD: E2 20       ;
CODE_20FECF:    LDA $0353                   ; $20:FECF: AD 53 03    ;
CODE_20FED2:    STA $2111                   ; $20:FED2: 8D 11 21    ;
CODE_20FED5:    LDA $0354                   ; $20:FED5: AD 54 03    ;
CODE_20FED8:    STA $2111                   ; $20:FED8: 8D 11 21    ;
CODE_20FEDB:    LDA $02C3                   ; $20:FEDB: AD C3 02    ;
CODE_20FEDE:    CLC                         ; $20:FEDE: 18          ;
CODE_20FEDF:    ADC #$28                    ; $20:FEDF: 69 28       ;
CODE_20FEE1:    STA $2112                   ; $20:FEE1: 8D 12 21    ;
CODE_20FEE4:    LDA $02C4                   ; $20:FEE4: AD C4 02    ;
CODE_20FEE7:    ADC #$00                    ; $20:FEE7: 69 00       ;
CODE_20FEE9:    STA $2112                   ; $20:FEE9: 8D 12 21    ;
CODE_20FEEC:    RTS                         ; $20:FEEC: 60          ;

CODE_20FEED:    LDA $0214                   ; $20:FEED: AD 14 02    ;
CODE_20FEF0:    STA $2111                   ; $20:FEF0: 8D 11 21    ;
CODE_20FEF3:    LDA $0215                   ; $20:FEF3: AD 15 02    ;
CODE_20FEF6:    STA $2111                   ; $20:FEF6: 8D 11 21    ;
CODE_20FEF9:    LDA $021A                   ; $20:FEF9: AD 1A 02    ;
CODE_20FEFC:    STA $2112                   ; $20:FEFC: 8D 12 21    ;
CODE_20FEFF:    LDA $021B                   ; $20:FEFF: AD 1B 02    ;
CODE_20FF02:    STA $2112                   ; $20:FF02: 8D 12 21    ;
CODE_20FF05:    RTS                         ; $20:FF05: 60          ;

CODE_20FF06:    LDA $0210                   ; $20:FF06: AD 10 02    ;
CODE_20FF09:    CLC                         ; $20:FF09: 18          ;
CODE_20FF0A:    ADC #$10                    ; $20:FF0A: 69 10       ;
CODE_20FF0C:    LDA $0211                   ; $20:FF0C: AD 11 02    ;
CODE_20FF0F:    ADC #$00                    ; $20:FF0F: 69 00       ;
CODE_20FF11:    AND #$01                    ; $20:FF11: 29 01       ;
CODE_20FF13:    TAY                         ; $20:FF13: A8          ;
CODE_20FF14:    REP #$20                    ; $20:FF14: C2 20       ;
CODE_20FF16:    LDX #$80                    ; $20:FF16: A2 80       ;
CODE_20FF18:    STX $2115                   ; $20:FF18: 8E 15 21    ;
CODE_20FF1B:    LDA #$1801                  ; $20:FF1B: A9 01 18    ;
CODE_20FF1E:    STA $4300                   ; $20:FF1E: 8D 00 43    ;
CODE_20FF21:    LDA #$0400                  ; $20:FF21: A9 00 04    ;
CODE_20FF24:    STA $4305                   ; $20:FF24: 8D 05 43    ;
CODE_20FF27:    LDA #$A000                  ; $20:FF27: A9 00 A0    ;
CODE_20FF2A:    STA $4302                   ; $20:FF2A: 8D 02 43    ;
CODE_20FF2D:    LDX #$7F                    ; $20:FF2D: A2 7F       ;
CODE_20FF2F:    STX $4304                   ; $20:FF2F: 8E 04 43    ;
CODE_20FF32:    LDA #$0080                  ; $20:FF32: A9 80 00    ;
CODE_20FF35:    LDX #$01                    ; $20:FF35: A2 01       ;
CODE_20FF37:    CPY #$00                    ; $20:FF37: C0 00       ;
CODE_20FF39:    BEQ CODE_20FF3E             ; $20:FF39: F0 03       ;
CODE_20FF3B:    LDA #$0480                  ; $20:FF3B: A9 80 04    ;
CODE_20FF3E:    STA $2116                   ; $20:FF3E: 8D 16 21    ;
CODE_20FF41:    STX $420B                   ; $20:FF41: 8E 0B 42    ;
CODE_20FF44:    SEP #$20                    ; $20:FF44: E2 20       ;
CODE_20FF46:    STZ $02BB                   ; $20:FF46: 9C BB 02    ;
CODE_20FF49:    RTS                         ; $20:FF49: 60          ;

CODE_20FF4A:    LDA $0351                   ; $20:FF4A: AD 51 03    ;
CODE_20FF4D:    ASL A                       ; $20:FF4D: 0A          ;
CODE_20FF4E:    ASL A                       ; $20:FF4E: 0A          ;
CODE_20FF4F:    ASL A                       ; $20:FF4F: 0A          ;
CODE_20FF50:    ASL A                       ; $20:FF50: 0A          ;
CODE_20FF51:    CLC                         ; $20:FF51: 18          ;
CODE_20FF52:    ADC $0352                   ; $20:FF52: 6D 52 03    ;
CODE_20FF55:    STA $0352                   ; $20:FF55: 8D 52 03    ;
CODE_20FF58:    PHP                         ; $20:FF58: 08          ;
CODE_20FF59:    LDY #$00                    ; $20:FF59: A0 00       ;
CODE_20FF5B:    LDA $0351                   ; $20:FF5B: AD 51 03    ;
CODE_20FF5E:    LSR A                       ; $20:FF5E: 4A          ;
CODE_20FF5F:    LSR A                       ; $20:FF5F: 4A          ;
CODE_20FF60:    LSR A                       ; $20:FF60: 4A          ;
CODE_20FF61:    LSR A                       ; $20:FF61: 4A          ;
CODE_20FF62:    CMP #$08                    ; $20:FF62: C9 08       ;
CODE_20FF64:    BCC CODE_20FF69             ; $20:FF64: 90 03       ;
CODE_20FF66:    ORA #$F0                    ; $20:FF66: 09 F0       ;
CODE_20FF68:    DEY                         ; $20:FF68: 88          ;
CODE_20FF69:    PLP                         ; $20:FF69: 28          ;
CODE_20FF6A:    ADC $0353                   ; $20:FF6A: 6D 53 03    ;
CODE_20FF6D:    STA $0353                   ; $20:FF6D: 8D 53 03    ;
CODE_20FF70:    TYA                         ; $20:FF70: 98          ;
CODE_20FF71:    ADC $0354                   ; $20:FF71: 6D 54 03    ;
CODE_20FF74:    STA $0354                   ; $20:FF74: 8D 54 03    ;
CODE_20FF77:    RTS                         ; $20:FF77: 60          ;

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
