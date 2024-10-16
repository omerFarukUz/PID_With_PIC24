
_DAC_SEC22:

;VOLTAGE_IO.c,33 :: 		void DAC_SEC22(unsigned char kanal)
;VOLTAGE_IO.c,35 :: 		if(kanal==1){CS_DAC1=0;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #1
	BRA Z	L__DAC_SEC2290
	GOTO	L_DAC_SEC220
L__DAC_SEC2290:
	MOV	#lo_addr(_CS_DAC1), W0
	BCLR	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC221
L_DAC_SEC220:
;VOLTAGE_IO.c,36 :: 		else if(kanal==2){CS_DAC1=0;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #2
	BRA Z	L__DAC_SEC2291
	GOTO	L_DAC_SEC222
L__DAC_SEC2291:
	MOV	#lo_addr(_CS_DAC1), W0
	BCLR	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC223
L_DAC_SEC222:
;VOLTAGE_IO.c,37 :: 		else if(kanal==3){CS_DAC1=1;CS_DAC2=0;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #3
	BRA Z	L__DAC_SEC2292
	GOTO	L_DAC_SEC224
L__DAC_SEC2292:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BCLR	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC225
L_DAC_SEC224:
;VOLTAGE_IO.c,38 :: 		else if(kanal==4){CS_DAC1=1;CS_DAC2=0;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #4
	BRA Z	L__DAC_SEC2293
	GOTO	L_DAC_SEC226
L__DAC_SEC2293:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BCLR	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC227
L_DAC_SEC226:
;VOLTAGE_IO.c,39 :: 		else if(kanal==5){CS_DAC1=1;CS_DAC2=1;CS_DAC3=0;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #5
	BRA Z	L__DAC_SEC2294
	GOTO	L_DAC_SEC228
L__DAC_SEC2294:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BCLR	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC229
L_DAC_SEC228:
;VOLTAGE_IO.c,40 :: 		else if(kanal==6){CS_DAC1=1;CS_DAC2=1;CS_DAC3=0;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #6
	BRA Z	L__DAC_SEC2295
	GOTO	L_DAC_SEC2210
L__DAC_SEC2295:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BCLR	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2211
L_DAC_SEC2210:
;VOLTAGE_IO.c,41 :: 		else if(kanal==7){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=0;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #7
	BRA Z	L__DAC_SEC2296
	GOTO	L_DAC_SEC2212
L__DAC_SEC2296:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BCLR	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2213
L_DAC_SEC2212:
;VOLTAGE_IO.c,42 :: 		else if(kanal==8){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=0;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #8
	BRA Z	L__DAC_SEC2297
	GOTO	L_DAC_SEC2214
L__DAC_SEC2297:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BCLR	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2215
L_DAC_SEC2214:
;VOLTAGE_IO.c,43 :: 		else if(kanal==9){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=0;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #9
	BRA Z	L__DAC_SEC2298
	GOTO	L_DAC_SEC2216
L__DAC_SEC2298:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BCLR	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2217
L_DAC_SEC2216:
;VOLTAGE_IO.c,44 :: 		else if(kanal==10){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=0;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #10
	BRA Z	L__DAC_SEC2299
	GOTO	L_DAC_SEC2218
L__DAC_SEC2299:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BCLR	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2219
L_DAC_SEC2218:
;VOLTAGE_IO.c,45 :: 		else if(kanal==11){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=0;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #11
	BRA Z	L__DAC_SEC22100
	GOTO	L_DAC_SEC2220
L__DAC_SEC22100:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BCLR	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2221
L_DAC_SEC2220:
;VOLTAGE_IO.c,46 :: 		else if(kanal==12){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=0;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #12
	BRA Z	L__DAC_SEC22101
	GOTO	L_DAC_SEC2222
L__DAC_SEC22101:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BCLR	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2223
L_DAC_SEC2222:
;VOLTAGE_IO.c,47 :: 		else if(kanal==13){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=0;CS_DAC8=1;}
	CP.B	W10, #13
	BRA Z	L__DAC_SEC22102
	GOTO	L_DAC_SEC2224
L__DAC_SEC22102:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BCLR	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2225
L_DAC_SEC2224:
;VOLTAGE_IO.c,48 :: 		else if(kanal==14){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=0;CS_DAC8=1;}
	CP.B	W10, #14
	BRA Z	L__DAC_SEC22103
	GOTO	L_DAC_SEC2226
L__DAC_SEC22103:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BCLR	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2227
L_DAC_SEC2226:
;VOLTAGE_IO.c,49 :: 		else if(kanal==15){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=0;}
	CP.B	W10, #15
	BRA Z	L__DAC_SEC22104
	GOTO	L_DAC_SEC2228
L__DAC_SEC22104:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BCLR	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2229
L_DAC_SEC2228:
;VOLTAGE_IO.c,50 :: 		else if(kanal==16){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=0;}
	CP.B	W10, #16
	BRA Z	L__DAC_SEC22105
	GOTO	L_DAC_SEC2230
L__DAC_SEC22105:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BCLR	[W0], BitPos(_CS_DAC8+0)
	GOTO	L_DAC_SEC2231
L_DAC_SEC2230:
;VOLTAGE_IO.c,51 :: 		else if(kanal==0){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
	CP.B	W10, #0
	BRA Z	L__DAC_SEC22106
	GOTO	L_DAC_SEC2232
L__DAC_SEC22106:
	MOV	#lo_addr(_CS_DAC1), W0
	BSET	[W0], BitPos(_CS_DAC1+0)
	MOV	#lo_addr(_CS_DAC2), W0
	BSET	[W0], BitPos(_CS_DAC2+0)
	MOV	#lo_addr(_CS_DAC3), W0
	BSET	[W0], BitPos(_CS_DAC3+0)
	MOV	#lo_addr(_CS_DAC4), W0
	BSET	[W0], BitPos(_CS_DAC4+0)
	MOV	#lo_addr(_CS_DAC5), W0
	BSET	[W0], BitPos(_CS_DAC5+0)
	MOV	#lo_addr(_CS_DAC6), W0
	BSET	[W0], BitPos(_CS_DAC6+0)
	MOV	#lo_addr(_CS_DAC7), W0
	BSET	[W0], BitPos(_CS_DAC7+0)
	MOV	#lo_addr(_CS_DAC8), W0
	BSET	[W0], BitPos(_CS_DAC8+0)
L_DAC_SEC2232:
L_DAC_SEC2231:
L_DAC_SEC2229:
L_DAC_SEC2227:
L_DAC_SEC2225:
L_DAC_SEC2223:
L_DAC_SEC2221:
L_DAC_SEC2219:
L_DAC_SEC2217:
L_DAC_SEC2215:
L_DAC_SEC2213:
L_DAC_SEC2211:
L_DAC_SEC229:
L_DAC_SEC227:
L_DAC_SEC225:
L_DAC_SEC223:
L_DAC_SEC221:
;VOLTAGE_IO.c,52 :: 		}
L_end_DAC_SEC22:
	RETURN
; end of _DAC_SEC22

_DAC_AORB:

;VOLTAGE_IO.c,54 :: 		void DAC_AORB(unsigned char kanal)
;VOLTAGE_IO.c,56 :: 		unsigned char temp=0;
;VOLTAGE_IO.c,58 :: 		if(kanal%2==0)temp |= 0x30;
	ZE	W10, W0
	MOV	#2, W2
	REPEAT	#17
	DIV.S	W0, W2
	MOV	W1, W0
	CP	W0, #0
	BRA Z	L__DAC_AORB108
	GOTO	L_DAC_AORB33
L__DAC_AORB108:
	GOTO	L_DAC_AORB34
L_DAC_AORB33:
;VOLTAGE_IO.c,59 :: 		else temp |= 0xB0;
L_DAC_AORB34:
;VOLTAGE_IO.c,60 :: 		}
L_end_DAC_AORB:
	RETURN
; end of _DAC_AORB

_MCP_4922:

;VOLTAGE_IO.c,62 :: 		void MCP_4922(int valueDAC, unsigned char kanal)
;VOLTAGE_IO.c,64 :: 		unsigned char temp=0;
	PUSH	W10
;VOLTAGE_IO.c,66 :: 		DAC_SEC22(kanal);
	PUSH	W10
	MOV.B	W11, W10
	CALL	_DAC_SEC22
	POP	W10
;VOLTAGE_IO.c,67 :: 		slot_CS();
	PUSH.D	W10
	CALL	_slot_CS
	POP.D	W10
;VOLTAGE_IO.c,68 :: 		temp = (valueDAC>>8)&0x0F;                                                 //8 bitlik için
	ASR	W10, #8, W0
; temp start address is: 6 (W3)
	AND.B	W0, #15, W3
;VOLTAGE_IO.c,71 :: 		if(kanal%2==0)temp |= 0xB0;
	ZE	W11, W0
	MOV	#2, W2
	REPEAT	#17
	DIV.S	W0, W2
	MOV	W1, W0
	CP	W0, #0
	BRA Z	L__MCP_4922110
	GOTO	L_MCP_492235
L__MCP_4922110:
	MOV.B	#176, W0
; temp start address is: 0 (W0)
	IOR.B	W3, W0, W0
; temp end address is: 6 (W3)
; temp end address is: 0 (W0)
	GOTO	L_MCP_492236
L_MCP_492235:
;VOLTAGE_IO.c,72 :: 		else temp |= 0x30;
; temp start address is: 6 (W3)
	MOV.B	#48, W0
; temp start address is: 0 (W0)
	IOR.B	W3, W0, W0
; temp end address is: 6 (W3)
; temp end address is: 0 (W0)
L_MCP_492236:
;VOLTAGE_IO.c,74 :: 		SPI1_Write(temp);
; temp start address is: 0 (W0)
	PUSH	W10
; temp end address is: 0 (W0)
	ZE	W0, W10
	CALL	_SPI1_Write
	POP	W10
;VOLTAGE_IO.c,76 :: 		SPI1_Write(temp);
	ZE	W10, W10
	CALL	_SPI1_Write
;VOLTAGE_IO.c,78 :: 		DAC_SEC22(0);
	CLR	W10
	CALL	_DAC_SEC22
;VOLTAGE_IO.c,79 :: 		slot_CS();
	CALL	_slot_CS
;VOLTAGE_IO.c,80 :: 		}
L_end_MCP_4922:
	POP	W10
	RETURN
; end of _MCP_4922

_MCP_3208V:

;VOLTAGE_IO.c,82 :: 		unsigned int MCP_3208V(unsigned short channel,unsigned char chip)
;VOLTAGE_IO.c,86 :: 		if(chip==3) {CS3 = 0;CS4 = 1;CS7 = 1; }
	PUSH	W10
	CP.B	W11, #3
	BRA Z	L__MCP_3208V112
	GOTO	L_MCP_3208V37
L__MCP_3208V112:
	MOV	#lo_addr(_CS3), W0
	BCLR	[W0], BitPos(_CS3+0)
	MOV	#lo_addr(_CS4), W0
	BSET	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS7), W0
	BSET	[W0], BitPos(_CS7+0)
	GOTO	L_MCP_3208V38
L_MCP_3208V37:
;VOLTAGE_IO.c,87 :: 		else if(chip==4) {CS3 = 1;CS4 = 0;CS7 = 1; }
	CP.B	W11, #4
	BRA Z	L__MCP_3208V113
	GOTO	L_MCP_3208V39
L__MCP_3208V113:
	MOV	#lo_addr(_CS3), W0
	BSET	[W0], BitPos(_CS3+0)
	MOV	#lo_addr(_CS4), W0
	BCLR	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS7), W0
	BSET	[W0], BitPos(_CS7+0)
	GOTO	L_MCP_3208V40
L_MCP_3208V39:
;VOLTAGE_IO.c,88 :: 		else if(chip==7) {CS3 = 1;CS4 = 1;CS7 = 0; }
	CP.B	W11, #7
	BRA Z	L__MCP_3208V114
	GOTO	L_MCP_3208V41
L__MCP_3208V114:
	MOV	#lo_addr(_CS3), W0
	BSET	[W0], BitPos(_CS3+0)
	MOV	#lo_addr(_CS4), W0
	BSET	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS7), W0
	BCLR	[W0], BitPos(_CS7+0)
	GOTO	L_MCP_3208V42
L_MCP_3208V41:
;VOLTAGE_IO.c,89 :: 		else             {CS3 = 1;CS4 = 1;CS7 = 1; }
	MOV	#lo_addr(_CS3), W0
	BSET	[W0], BitPos(_CS3+0)
	MOV	#lo_addr(_CS4), W0
	BSET	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS7), W0
	BSET	[W0], BitPos(_CS7+0)
L_MCP_3208V42:
L_MCP_3208V40:
L_MCP_3208V38:
;VOLTAGE_IO.c,91 :: 		slot_CS();
	PUSH	W10
	CALL	_slot_CS
	POP	W10
;VOLTAGE_IO.c,93 :: 		if (channel<4) SPI1_Write(0x06);                                           // Kanal seç
	CP.B	W10, #4
	BRA LTU	L__MCP_3208V115
	GOTO	L_MCP_3208V43
L__MCP_3208V115:
	PUSH	W10
	MOV	#6, W10
	CALL	_SPI1_Write
	POP	W10
	GOTO	L_MCP_3208V44
L_MCP_3208V43:
;VOLTAGE_IO.c,94 :: 		else SPI1_Write(0x07);
	PUSH	W10
	MOV	#7, W10
	CALL	_SPI1_Write
	POP	W10
L_MCP_3208V44:
;VOLTAGE_IO.c,96 :: 		channel = channel << 6;
	ZE	W10, W0
	SL	W0, #6, W0
	MOV.B	W0, W10
;VOLTAGE_IO.c,97 :: 		temp = SPI1_Read(channel) & 0x0F;
	ZE	W0, W10
	CALL	_SPI1_Read
	AND	W0, #15, W0
;VOLTAGE_IO.c,98 :: 		temp = temp << 8;
	SL	W0, #8, W0
; temp start address is: 2 (W1)
	MOV	W0, W1
;VOLTAGE_IO.c,99 :: 		temp = temp | SPI1_Read(0);
	CLR	W10
	CALL	_SPI1_Read
; temp start address is: 4 (W2)
	IOR	W1, W0, W2
; temp end address is: 2 (W1)
;VOLTAGE_IO.c,101 :: 		CS3=CS4=CS7= 1;
	MOV	#lo_addr(_CS7), W0
	BSET	[W0], BitPos(_CS7+0)
	MOV	#lo_addr(_CS7), W1
	MOV	#lo_addr(_CS4), W0
	BSET	[W0], BitPos(_CS4+0)
	BTSS	[W1], BitPos(_CS7+0)
	BCLR	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS4), W1
	MOV	#lo_addr(_CS3), W0
	BSET	[W0], BitPos(_CS3+0)
	BTSS	[W1], BitPos(_CS4+0)
	BCLR	[W0], BitPos(_CS3+0)
;VOLTAGE_IO.c,102 :: 		slot_CS();
	PUSH	W2
	CALL	_slot_CS
	POP	W2
;VOLTAGE_IO.c,103 :: 		return temp;
	MOV	W2, W0
; temp end address is: 4 (W2)
;VOLTAGE_IO.c,104 :: 		}
;VOLTAGE_IO.c,103 :: 		return temp;
;VOLTAGE_IO.c,104 :: 		}
L_end_MCP_3208V:
	POP	W10
	RETURN
; end of _MCP_3208V

_Analog_OkuV:
	LNK	#2

;VOLTAGE_IO.c,106 :: 		void Analog_OkuV(unsigned char kanal)
;VOLTAGE_IO.c,108 :: 		if(kanal==1){VFB[kanal]=MCP_3208V(0,3);}
	PUSH	W10
	PUSH	W11
	CP.B	W10, #1
	BRA Z	L__Analog_OkuV117
	GOTO	L_Analog_OkuV45
L__Analog_OkuV117:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	CLR	W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV46
L_Analog_OkuV45:
;VOLTAGE_IO.c,109 :: 		else if(kanal==2){VFB[kanal]=MCP_3208V(1,3);}
	CP.B	W10, #2
	BRA Z	L__Analog_OkuV118
	GOTO	L_Analog_OkuV47
L__Analog_OkuV118:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#1, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV48
L_Analog_OkuV47:
;VOLTAGE_IO.c,110 :: 		else if(kanal==3){VFB[kanal]=MCP_3208V(2,3);}
	CP.B	W10, #3
	BRA Z	L__Analog_OkuV119
	GOTO	L_Analog_OkuV49
L__Analog_OkuV119:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#2, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV50
L_Analog_OkuV49:
;VOLTAGE_IO.c,111 :: 		else if(kanal==4){VFB[kanal]=MCP_3208V(3,3);}
	CP.B	W10, #4
	BRA Z	L__Analog_OkuV120
	GOTO	L_Analog_OkuV51
L__Analog_OkuV120:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#3, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV52
L_Analog_OkuV51:
;VOLTAGE_IO.c,112 :: 		else if(kanal==5){VFB[kanal]=MCP_3208V(4,3);}
	CP.B	W10, #5
	BRA Z	L__Analog_OkuV121
	GOTO	L_Analog_OkuV53
L__Analog_OkuV121:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#4, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV54
L_Analog_OkuV53:
;VOLTAGE_IO.c,113 :: 		else if(kanal==6){VFB[kanal]=MCP_3208V(5,3);}
	CP.B	W10, #6
	BRA Z	L__Analog_OkuV122
	GOTO	L_Analog_OkuV55
L__Analog_OkuV122:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#5, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV56
L_Analog_OkuV55:
;VOLTAGE_IO.c,114 :: 		else if(kanal==7){VFB[kanal]=MCP_3208V(6,3);}
	CP.B	W10, #7
	BRA Z	L__Analog_OkuV123
	GOTO	L_Analog_OkuV57
L__Analog_OkuV123:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#6, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV58
L_Analog_OkuV57:
;VOLTAGE_IO.c,115 :: 		else if(kanal==8){VFB[kanal]=MCP_3208V(7,3);}
	CP.B	W10, #8
	BRA Z	L__Analog_OkuV124
	GOTO	L_Analog_OkuV59
L__Analog_OkuV124:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#3, W11
	MOV.B	#7, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV60
L_Analog_OkuV59:
;VOLTAGE_IO.c,116 :: 		else if(kanal==9){VFB[kanal]=MCP_3208V(0,4);}
	CP.B	W10, #9
	BRA Z	L__Analog_OkuV125
	GOTO	L_Analog_OkuV61
L__Analog_OkuV125:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	CLR	W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV62
L_Analog_OkuV61:
;VOLTAGE_IO.c,117 :: 		else if(kanal==10){VFB[kanal]=MCP_3208V(1,4);}
	CP.B	W10, #10
	BRA Z	L__Analog_OkuV126
	GOTO	L_Analog_OkuV63
L__Analog_OkuV126:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#1, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV64
L_Analog_OkuV63:
;VOLTAGE_IO.c,118 :: 		else if(kanal==11){VFB[kanal]=MCP_3208V(2,4);}
	CP.B	W10, #11
	BRA Z	L__Analog_OkuV127
	GOTO	L_Analog_OkuV65
L__Analog_OkuV127:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#2, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV66
L_Analog_OkuV65:
;VOLTAGE_IO.c,119 :: 		else if(kanal==12){VFB[kanal]=MCP_3208V(3,4);}
	CP.B	W10, #12
	BRA Z	L__Analog_OkuV128
	GOTO	L_Analog_OkuV67
L__Analog_OkuV128:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#3, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV68
L_Analog_OkuV67:
;VOLTAGE_IO.c,120 :: 		else if(kanal==13){VFB[kanal]=MCP_3208V(4,4);}
	CP.B	W10, #13
	BRA Z	L__Analog_OkuV129
	GOTO	L_Analog_OkuV69
L__Analog_OkuV129:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#4, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV70
L_Analog_OkuV69:
;VOLTAGE_IO.c,121 :: 		else if(kanal==14){VFB[kanal]=MCP_3208V(5,4);}
	CP.B	W10, #14
	BRA Z	L__Analog_OkuV130
	GOTO	L_Analog_OkuV71
L__Analog_OkuV130:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#5, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV72
L_Analog_OkuV71:
;VOLTAGE_IO.c,122 :: 		else if(kanal==15){VFB[kanal]=MCP_3208V(6,4);}
	CP.B	W10, #15
	BRA Z	L__Analog_OkuV131
	GOTO	L_Analog_OkuV73
L__Analog_OkuV131:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#6, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV74
L_Analog_OkuV73:
;VOLTAGE_IO.c,123 :: 		else if(kanal==16){VFB[kanal]=MCP_3208V(7,4);}
	CP.B	W10, #16
	BRA Z	L__Analog_OkuV132
	GOTO	L_Analog_OkuV75
L__Analog_OkuV132:
	ZE	W10, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV.B	#4, W11
	MOV.B	#7, W10
	CALL	_MCP_3208V
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
	GOTO	L_Analog_OkuV76
L_Analog_OkuV75:
;VOLTAGE_IO.c,124 :: 		else if(kanal==0)
	CP.B	W10, #0
	BRA Z	L__Analog_OkuV133
	GOTO	L_Analog_OkuV77
L__Analog_OkuV133:
;VOLTAGE_IO.c,126 :: 		AN1=MCP_3208V(0,7);
	MOV.B	#7, W11
	CLR	W10
	CALL	_MCP_3208V
	MOV	W0, _AN1
;VOLTAGE_IO.c,127 :: 		AN2=MCP_3208V(1,7);
	MOV.B	#7, W11
	MOV.B	#1, W10
	CALL	_MCP_3208V
	MOV	W0, _AN2
;VOLTAGE_IO.c,128 :: 		AN3=MCP_3208V(2,7);
	MOV.B	#7, W11
	MOV.B	#2, W10
	CALL	_MCP_3208V
	MOV	W0, _AN3
;VOLTAGE_IO.c,129 :: 		AN4=MCP_3208V(3,7);
	MOV.B	#7, W11
	MOV.B	#3, W10
	CALL	_MCP_3208V
	MOV	W0, _AN4
;VOLTAGE_IO.c,130 :: 		AN5=MCP_3208V(4,7);
	MOV.B	#7, W11
	MOV.B	#4, W10
	CALL	_MCP_3208V
	MOV	W0, _AN5
;VOLTAGE_IO.c,131 :: 		AN6=MCP_3208V(5,7);
	MOV.B	#7, W11
	MOV.B	#5, W10
	CALL	_MCP_3208V
	MOV	W0, _AN6
;VOLTAGE_IO.c,132 :: 		AN7=MCP_3208V(6,7);
	MOV.B	#7, W11
	MOV.B	#6, W10
	CALL	_MCP_3208V
	MOV	W0, _AN7
;VOLTAGE_IO.c,133 :: 		AN8=MCP_3208V(7,7);
	MOV.B	#7, W11
	MOV.B	#7, W10
	CALL	_MCP_3208V
	MOV	W0, _AN8
;VOLTAGE_IO.c,134 :: 		}
L_Analog_OkuV77:
L_Analog_OkuV76:
L_Analog_OkuV74:
L_Analog_OkuV72:
L_Analog_OkuV70:
L_Analog_OkuV68:
L_Analog_OkuV66:
L_Analog_OkuV64:
L_Analog_OkuV62:
L_Analog_OkuV60:
L_Analog_OkuV58:
L_Analog_OkuV56:
L_Analog_OkuV54:
L_Analog_OkuV52:
L_Analog_OkuV50:
L_Analog_OkuV48:
L_Analog_OkuV46:
;VOLTAGE_IO.c,135 :: 		}
L_end_Analog_OkuV:
	POP	W11
	POP	W10
	ULNK
	RETURN
; end of _Analog_OkuV

_Oransal_Cikis:
	LNK	#6

;VOLTAGE_IO.c,137 :: 		void Oransal_Cikis(unsigned int deger, unsigned char kanal)                     //Rampalý 6-12-18 Çýkýþ Fonksiyonu.
;VOLTAGE_IO.c,139 :: 		Analog_OkuV(kanal);
	PUSH	W10
	PUSH.D	W10
	MOV.B	W11, W10
	CALL	_Analog_OkuV
	POP.D	W10
;VOLTAGE_IO.c,141 :: 		rampa[kanal]=1000;
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W1
	MOV	#1000, W0
	MOV	W0, [W1]
;VOLTAGE_IO.c,143 :: 		rampa[kanal]=rampa[kanal]*0.25;
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	PUSH.D	W10
	MOV	[W0], W0
	CLR	W1
	CALL	__Long2Float
	MOV	#0, W2
	MOV	#16000, W3
	CALL	__Mul_FP
	CALL	__Float2Longint
	POP.D	W10
	MOV	[W14+0], W1
	MOV	W0, [W1]
;VOLTAGE_IO.c,144 :: 		if(rampa[kanal]<100)rampa[kanal]=100;
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W0
	MOV	[W0], W1
	MOV	#100, W0
	CP	W1, W0
	BRA LTU	L__Oransal_Cikis135
	GOTO	L_Oransal_Cikis78
L__Oransal_Cikis135:
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W1
	MOV	#100, W0
	MOV	W0, [W1]
L_Oransal_Cikis78:
;VOLTAGE_IO.c,145 :: 		rampa[kanal]=rampa[kanal]*0.1;
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	PUSH.D	W10
	MOV	[W0], W0
	CLR	W1
	CALL	__Long2Float
	MOV	#52429, W2
	MOV	#15820, W3
	CALL	__Mul_FP
	CALL	__Float2Longint
	POP.D	W10
	MOV	[W14+0], W1
	MOV	W0, [W1]
;VOLTAGE_IO.c,147 :: 		carpan[kanal]=10000-rampa[kanal];limit=4090;
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_carpan), W0
	ADD	W0, W1, W2
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W1
	MOV	#10000, W0
	SUB	W0, [W1], W0
	MOV	W0, [W2]
	MOV	#4090, W0
	MOV	W0, _limit
;VOLTAGE_IO.c,148 :: 		set[kanal]=deger;  //set[kanal]=gelen[kanal];
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_set), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	PUSH	W11
	MOV	W10, W0
	CLR	W1
	CALL	__Long2Float
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,149 :: 		err[kanal]=set[kanal]-VFB[kanal];
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_err), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV	#lo_addr(_set), W0
	ADD	W0, W1, W0
	MOV.D	[W0], W4
	MOV	#lo_addr(_VFB), W0
	ADD	W0, W1, W0
	MOV.D	[W0], W2
	PUSH	W11
	MOV.D	W4, W0
	CALL	__Sub_FP
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,150 :: 		katsayi[kanal]=err[kanal]*rampa[kanal];
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_katsayi), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+4]
	MOV	#lo_addr(_err), W0
	ADD	W0, W1, W2
	MOV.D	[W2], W0
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	ZE	W11, W0
	SL	W0, #1, W1
	MOV	#lo_addr(_rampa), W0
	ADD	W0, W1, W2
	PUSH	W11
	MOV	[W2], W0
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Mul_FP
	POP	W11
	MOV	[W14+4], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,151 :: 		katsayi[kanal]=katsayi[kanal]*0.01;
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_katsayi), W0
	ADD	W0, W1, W2
	MOV	W2, [W14+0]
	MOV.D	[W2], W0
	PUSH	W11
	MOV	#55050, W2
	MOV	#15395, W3
	CALL	__Mul_FP
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,152 :: 		outputDAC[kanal]=outputDAC[kanal]+katsayi[kanal];
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	MOV	[W0++], W3
	MOV	[W0--], W4
	MOV	#lo_addr(_katsayi), W0
	ADD	W0, W1, W2
	MOV.D	[W2], W0
	PUSH	W11
	MOV	W3, W2
	MOV	W4, W3
	CALL	__AddSub_FP
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,153 :: 		outputDAC[kanal]=outputDAC[kanal]*(carpan[kanal]-tolerans[kanal]);
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W2
	MOV	W2, [W14+4]
	MOV.D	[W2], W0
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	ZE	W11, W0
	SL	W0, #1, W2
	MOV	#lo_addr(_carpan), W0
	ADD	W0, W2, W1
	MOV	#lo_addr(_tolerans), W0
	ADD	W0, W2, W0
	MOV	[W0], W0
	SUBR	W0, [W1], W0
	PUSH	W11
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Mul_FP
	POP	W11
	MOV	[W14+4], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,154 :: 		outputDAC[kanal]=outputDAC[kanal]*0.0001;
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W2
	MOV	W2, [W14+0]
	MOV.D	[W2], W0
	PUSH	W11
	MOV	#46871, W2
	MOV	#14545, W3
	CALL	__Mul_FP
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,155 :: 		if(outputDAC[kanal]>limit) outputDAC[kanal]= limit;
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W2
	MOV.D	[W2], W0
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	PUSH	W11
	MOV	_limit, W0
	CLR	W1
	CALL	__Long2Float
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Compare_Le_Fp
	CP0	W0
	CLR.B	W0
	BRA GE	L__Oransal_Cikis136
	INC.B	W0
L__Oransal_Cikis136:
	POP	W11
	CP0.B	W0
	BRA NZ	L__Oransal_Cikis137
	GOTO	L_Oransal_Cikis79
L__Oransal_Cikis137:
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W0
	MOV	W0, [W14+0]
	PUSH	W11
	MOV	_limit, W0
	CLR	W1
	CALL	__Long2Float
	POP	W11
	MOV	[W14+0], W2
	MOV.D	W0, [W2]
L_Oransal_Cikis79:
;VOLTAGE_IO.c,156 :: 		MCP_4922(outputDAC[kanal],kanal);
	ZE	W11, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W1
	PUSH	W11
	MOV.D	[W1], W0
	CALL	__Float2Longint
	POP	W11
	MOV	W0, W10
	CALL	_MCP_4922
;VOLTAGE_IO.c,157 :: 		}
L_end_Oransal_Cikis:
	POP	W10
	ULNK
	RETURN
; end of _Oransal_Cikis

_Oransal_Reset:

;VOLTAGE_IO.c,159 :: 		void Oransal_Reset()                                                            //6-12-18 ORANSAL ÇIKIÞI 12 V a getirir.
;VOLTAGE_IO.c,161 :: 		unsigned char i=0;
	PUSH	W10
	PUSH	W11
;VOLTAGE_IO.c,163 :: 		for(i=1;i<17;i++)
; i start address is: 6 (W3)
	MOV.B	#1, W3
; i end address is: 6 (W3)
L_Oransal_Reset80:
; i start address is: 6 (W3)
	CP.B	W3, #17
	BRA LTU	L__Oransal_Reset139
	GOTO	L_Oransal_Reset81
L__Oransal_Reset139:
;VOLTAGE_IO.c,165 :: 		outputDAC[i]=2400;
	ZE	W3, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W2
	MOV	#0, W0
	MOV	#17686, W1
	MOV.D	W0, [W2]
;VOLTAGE_IO.c,166 :: 		MCP_4922(&outputDAC[i],i);
	ZE	W3, W0
	SL	W0, #2, W1
	MOV	#lo_addr(_outputDAC), W0
	ADD	W0, W1, W0
	PUSH	W3
	MOV.B	W3, W11
	MOV	W0, W10
	CALL	_MCP_4922
	POP	W3
;VOLTAGE_IO.c,163 :: 		for(i=1;i<17;i++)
	INC.B	W3
;VOLTAGE_IO.c,167 :: 		}
; i end address is: 6 (W3)
	GOTO	L_Oransal_Reset80
L_Oransal_Reset81:
;VOLTAGE_IO.c,168 :: 		}
L_end_Oransal_Reset:
	POP	W11
	POP	W10
	RETURN
; end of _Oransal_Reset

_Dogrusal_Cikis:

;VOLTAGE_IO.c,170 :: 		void Dogrusal_Cikis(unsigned int deger,unsigned char kanal)                     //Rampasýz Doðrusal Çýkýþ
;VOLTAGE_IO.c,172 :: 		MCP_4922(deger,kanal);
	CALL	_MCP_4922
;VOLTAGE_IO.c,173 :: 		}
L_end_Dogrusal_Cikis:
	RETURN
; end of _Dogrusal_Cikis

_Voltaj_Cikisi:

;VOLTAGE_IO.c,175 :: 		void Voltaj_Cikisi(unsigned char kanal,unsigned int deger,unsigned char type)   //Voltaj Türünü Belirleme
;VOLTAGE_IO.c,177 :: 		if(type==0){Dogrusal_Cikis(deger,kanal);}
	PUSH	W10
	PUSH	W11
	CP.B	W12, #0
	BRA Z	L__Voltaj_Cikisi142
	GOTO	L_Voltaj_Cikisi83
L__Voltaj_Cikisi142:
	PUSH	W11
	MOV.B	W10, W11
	POP	W10
	CALL	_Dogrusal_Cikis
	GOTO	L_Voltaj_Cikisi84
L_Voltaj_Cikisi83:
;VOLTAGE_IO.c,178 :: 		else if(type==1){Oransal_Cikis(deger,kanal);}
	CP.B	W12, #1
	BRA Z	L__Voltaj_Cikisi143
	GOTO	L_Voltaj_Cikisi85
L__Voltaj_Cikisi143:
	PUSH	W11
	MOV.B	W10, W11
	POP	W10
	CALL	_Oransal_Cikis
L_Voltaj_Cikisi85:
L_Voltaj_Cikisi84:
;VOLTAGE_IO.c,179 :: 		}
L_end_Voltaj_Cikisi:
	POP	W11
	POP	W10
	RETURN
; end of _Voltaj_Cikisi

_Voltaj_Girisi:

;VOLTAGE_IO.c,181 :: 		void Voltaj_Girisi()                                                            //Analog Giriþleri Okuma.
;VOLTAGE_IO.c,183 :: 		Analog_okuV(0);
	PUSH	W10
	CLR	W10
	CALL	_Analog_OkuV
;VOLTAGE_IO.c,184 :: 		}
L_end_Voltaj_Girisi:
	POP	W10
	RETURN
; end of _Voltaj_Girisi

_Diagnostik_Voltaj:

;VOLTAGE_IO.c,186 :: 		void Diagnostik_Voltaj()                                                        //Voltaj Çýkýþlarýný Okuyup kaydetme
;VOLTAGE_IO.c,190 :: 		for (i=1;i<17;i++)
	PUSH	W10
; i start address is: 4 (W2)
	MOV	#1, W2
; i end address is: 4 (W2)
L_Diagnostik_Voltaj86:
; i start address is: 4 (W2)
	CP	W2, #17
	BRA LTU	L__Diagnostik_Voltaj146
	GOTO	L_Diagnostik_Voltaj87
L__Diagnostik_Voltaj146:
;VOLTAGE_IO.c,192 :: 		Analog_OkuV(i);
	PUSH	W2
	MOV.B	W2, W10
	CALL	_Analog_OkuV
	POP	W2
;VOLTAGE_IO.c,193 :: 		Feedback_Voltaj[i]=VFB;
	SL	W2, #1, W1
	MOV	#lo_addr(_Feedback_Voltaj), W0
	ADD	W0, W1, W1
	MOV	#lo_addr(_VFB), W0
	MOV	W0, [W1]
;VOLTAGE_IO.c,190 :: 		for (i=1;i<17;i++)
	INC	W2
;VOLTAGE_IO.c,194 :: 		}
; i end address is: 4 (W2)
	GOTO	L_Diagnostik_Voltaj86
L_Diagnostik_Voltaj87:
;VOLTAGE_IO.c,195 :: 		}
L_end_Diagnostik_Voltaj:
	POP	W10
	RETURN
; end of _Diagnostik_Voltaj
