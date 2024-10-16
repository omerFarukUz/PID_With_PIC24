
_clockCS:

;_4X8_CS.c,31 :: 		void clockCS()
;_4X8_CS.c,33 :: 		clk_CS=1;
	PUSH	W10
	PUSH	W11
	BSET	clk_CS, BitPos(clk_CS+0)
;_4X8_CS.c,34 :: 		Delay_Cyc_Long(1);
	MOV	#1, W10
	MOV	#0, W11
	CALL	_Delay_Cyc_Long
;_4X8_CS.c,35 :: 		clk_CS=0;
	BCLR	clk_CS, BitPos(clk_CS+0)
;_4X8_CS.c,36 :: 		}
L_end_clockCS:
	POP	W11
	POP	W10
	RETURN
; end of _clockCS

_slot_CS:

;_4X8_CS.c,37 :: 		void slot_CS()
;_4X8_CS.c,39 :: 		clockCS();
	PUSH	W10
	PUSH	W11
	CALL	_clockCS
;_4X8_CS.c,40 :: 		clockCS();
	CALL	_clockCS
;_4X8_CS.c,42 :: 		idata_CS=ACIL_RLY;clockCS();
	MOV	#lo_addr(_ACIL_RLY), W0
	BTSS	[W0], BitPos(_ACIL_RLY+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_ACIL_RLY+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,43 :: 		idata_CS=LED4;clockCS();
	MOV	#lo_addr(_LED4), W0
	BTSS	[W0], BitPos(_LED4+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_LED4+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,44 :: 		idata_CS=LED3;clockCS();
	MOV	#lo_addr(_LED3), W0
	BTSS	[W0], BitPos(_LED3+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_LED3+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,45 :: 		idata_CS=LED2;clockCS();
	MOV	#lo_addr(_LED2), W0
	BTSS	[W0], BitPos(_LED2+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_LED2+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,46 :: 		idata_CS=LED1;clockCS();
	MOV	#lo_addr(_LED1), W0
	BTSS	[W0], BitPos(_LED1+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_LED1+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,47 :: 		idata_CS=CS27;clockCS();
	MOV	#lo_addr(_CS27), W0
	BTSS	[W0], BitPos(_CS27+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS27+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,48 :: 		idata_CS=CS26;clockCS();
	MOV	#lo_addr(_CS26), W0
	BTSS	[W0], BitPos(_CS26+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS26+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,49 :: 		idata_CS=CS25;clockCS();
	MOV	#lo_addr(_CS25), W0
	BTSS	[W0], BitPos(_CS25+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS25+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,51 :: 		idata_CS=CS24;clockCS();
	MOV	#lo_addr(_CS24), W0
	BTSS	[W0], BitPos(_CS24+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS24+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,52 :: 		idata_CS=CS23;clockCS();
	MOV	#lo_addr(_CS23), W0
	BTSS	[W0], BitPos(_CS23+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS23+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,53 :: 		idata_CS=CS22;clockCS();
	MOV	#lo_addr(_CS22), W0
	BTSS	[W0], BitPos(_CS22+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS22+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,54 :: 		idata_CS=CS21;clockCS();
	MOV	#lo_addr(_CS21), W0
	BTSS	[W0], BitPos(_CS21+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS21+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,55 :: 		idata_CS=CS20;clockCS();
	MOV	#lo_addr(_CS20), W0
	BTSS	[W0], BitPos(_CS20+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS20+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,56 :: 		idata_CS=CS19;clockCS();
	MOV	#lo_addr(_CS19), W0
	BTSS	[W0], BitPos(_CS19+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS19+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,57 :: 		idata_CS=CS18;clockCS();
	MOV	#lo_addr(_CS18), W0
	BTSS	[W0], BitPos(_CS18+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS18+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,58 :: 		idata_CS=CS17;clockCS();
	MOV	#lo_addr(_CS17), W0
	BTSS	[W0], BitPos(_CS17+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS17+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,60 :: 		idata_CS=CS16;clockCS();
	MOV	#lo_addr(_CS16), W0
	BTSS	[W0], BitPos(_CS16+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS16+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,61 :: 		idata_CS=CS15;clockCS();
	MOV	#lo_addr(_CS15), W0
	BTSS	[W0], BitPos(_CS15+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS15+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,62 :: 		idata_CS=CS14;clockCS();
	MOV	#lo_addr(_CS14), W0
	BTSS	[W0], BitPos(_CS14+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS14+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,63 :: 		idata_CS=CS13;clockCS();
	MOV	#lo_addr(_CS13), W0
	BTSS	[W0], BitPos(_CS13+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS13+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,64 :: 		idata_CS=CS12;clockCS();
	MOV	#lo_addr(_CS12), W0
	BTSS	[W0], BitPos(_CS12+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS12+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,65 :: 		idata_CS=CS11;clockCS();
	MOV	#lo_addr(_CS11), W0
	BTSS	[W0], BitPos(_CS11+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS11+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,66 :: 		idata_CS=CS10;clockCS();
	MOV	#lo_addr(_CS10), W0
	BTSS	[W0], BitPos(_CS10+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS10+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,67 :: 		idata_CS=CS9;clockCS();
	MOV	#lo_addr(_CS9), W0
	BTSS	[W0], BitPos(_CS9+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS9+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,69 :: 		idata_CS=CS8;clockCS();
	MOV	#lo_addr(_CS8), W0
	BTSS	[W0], BitPos(_CS8+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS8+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,70 :: 		idata_CS=CS7;clockCS();
	MOV	#lo_addr(_CS7), W0
	BTSS	[W0], BitPos(_CS7+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS7+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,71 :: 		idata_CS=CS6;clockCS();
	MOV	#lo_addr(_CS6), W0
	BTSS	[W0], BitPos(_CS6+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS6+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,72 :: 		idata_CS=CS5;clockCS();
	MOV	#lo_addr(_CS5), W0
	BTSS	[W0], BitPos(_CS5+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS5+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,73 :: 		idata_CS=CS4;clockCS();
	MOV	#lo_addr(_CS4), W0
	BTSS	[W0], BitPos(_CS4+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS4+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,74 :: 		idata_CS=CS3;clockCS();
	MOV	#lo_addr(_CS3), W0
	BTSS	[W0], BitPos(_CS3+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS3+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,75 :: 		idata_CS=CS2;clockCS();
	MOV	#lo_addr(_CS2), W0
	BTSS	[W0], BitPos(_CS2+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS2+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,76 :: 		idata_CS=CS1;clockCS();
	MOV	#lo_addr(_CS1), W0
	BTSS	[W0], BitPos(_CS1+0)
	BCLR	idata_CS, BitPos(idata_CS+0)
	BTSC	[W0], BitPos(_CS1+0)
	BSET	idata_CS, BitPos(idata_CS+0)
	CALL	_clockCS
;_4X8_CS.c,78 :: 		load_CS=0;
	BCLR	load_CS, BitPos(load_CS+0)
;_4X8_CS.c,79 :: 		Delay_Cyc_Long(1);
	MOV	#1, W10
	MOV	#0, W11
	CALL	_Delay_Cyc_Long
;_4X8_CS.c,80 :: 		load_CS=1;
	BSET	load_CS, BitPos(load_CS+0)
;_4X8_CS.c,81 :: 		}
L_end_slot_CS:
	POP	W11
	POP	W10
	RETURN
; end of _slot_CS

_clock_DINPUT:

;_4X8_CS.c,83 :: 		void clock_DINPUT()
;_4X8_CS.c,85 :: 		switch_shcp=1;
	PUSH	W10
	PUSH	W11
	BSET	switch_shcp, BitPos(switch_shcp+0)
;_4X8_CS.c,86 :: 		Delay_Cyc_Long(1);
	MOV	#1, W10
	MOV	#0, W11
	CALL	_Delay_Cyc_Long
;_4X8_CS.c,87 :: 		switch_shcp=0;
	BCLR	switch_shcp, BitPos(switch_shcp+0)
;_4X8_CS.c,88 :: 		}
L_end_clock_DINPUT:
	POP	W11
	POP	W10
	RETURN
; end of _clock_DINPUT
