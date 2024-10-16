
_main:
	MOV	#2048, W15
	MOV	#6142, W0
	MOV	WREG, 32
	MOV	#1, W0
	MOV	WREG, 52
	MOV	#4, W0
	IOR	68

;PID_Deneme.c,32 :: 		void main()
;PID_Deneme.c,35 :: 		asm CLRWDT;
	PUSH	W10
	PUSH	W11
	PUSH	W12
	CLRWDT
;PID_Deneme.c,36 :: 		acilis();
	CALL	_acilis
;PID_Deneme.c,39 :: 		sifirla();
	CALL	_sifirla
;PID_Deneme.c,40 :: 		slot_CS();
	CALL	_slot_CS
;PID_Deneme.c,41 :: 		Delay_ms(10);
	MOV	#53333, W7
L_main0:
	DEC	W7
	BRA NZ	L_main0
	NOP
;PID_Deneme.c,42 :: 		emniyet_rolesi=1;
	BSET	emniyet_rolesi, BitPos(emniyet_rolesi+0)
;PID_Deneme.c,43 :: 		asm CLRWDT;
	CLRWDT
;PID_Deneme.c,44 :: 		Delay_ms(100);
	MOV	#9, W8
	MOV	#9047, W7
L_main2:
	DEC	W7
	BRA NZ	L_main2
	DEC	W8
	BRA NZ	L_main2
;PID_Deneme.c,46 :: 		Vdac=186*Vout;
	MOV	#32768, W0
	MOV	#17512, W1
	MOV	W0, _Vdac
	MOV	W1, _Vdac+2
;PID_Deneme.c,51 :: 		PID_Init(&pid , PID_KP , PID_KI , PID_KD);
	MOV	#52429, W11
	MOV	#16204, W12
	MOV	#lo_addr(_pid), W10
	MOV	#52429, W0
	MOV	#15820, W1
	PUSH.D	W0
	MOV	#52429, W0
	MOV	#15820, W1
	PUSH.D	W0
	CALL	_PID_Init
	SUB	#8, W15
;PID_Deneme.c,56 :: 		while(1)
L_main4:
;PID_Deneme.c,58 :: 		AN1 = MCP_3208V(0,7);
	MOV.B	#7, W11
	CLR	W10
	CALL	_MCP_3208V
	MOV	W0, _AN1
;PID_Deneme.c,59 :: 		analogValue = AN1/2;
	LSR	W0, #1, W0
	MOV	W0, _analogValue
;PID_Deneme.c,61 :: 		Delay_ms(100);
	MOV	#9, W8
	MOV	#9047, W7
L_main6:
	DEC	W7
	BRA NZ	L_main6
	DEC	W8
	BRA NZ	L_main6
;PID_Deneme.c,63 :: 		pid_out = PID_Proccess(&pid , Vdac , analogValue);
	MOV	_analogValue, W0
	ASR	W0, #15, W1
	SETM	W2
	CALL	__Long2Float
	MOV	_Vdac, W11
	MOV	_Vdac+2, W12
	MOV	#lo_addr(_pid), W10
	PUSH.D	W0
	CALL	_PID_Proccess
	SUB	#4, W15
	MOV	W0, _pid_out
	MOV	W1, _pid_out+2
;PID_Deneme.c,65 :: 		MCP_4922(1995,1);
	MOV.B	#1, W11
	MOV	#1995, W10
	CALL	_MCP_4922
;PID_Deneme.c,66 :: 		MCP_4922((int)pid_out,2);
	MOV	_pid_out, W0
	MOV	_pid_out+2, W1
	CALL	__Float2Longint
	MOV.B	#2, W11
	MOV	W0, W10
	CALL	_MCP_4922
;PID_Deneme.c,67 :: 		MCP_4922(1995,3);
	MOV.B	#3, W11
	MOV	#1995, W10
	CALL	_MCP_4922
;PID_Deneme.c,68 :: 		MCP_4922(1995,4);
	MOV.B	#4, W11
	MOV	#1995, W10
	CALL	_MCP_4922
;PID_Deneme.c,69 :: 		MCP_4922(Vdac,5);
	MOV	_Vdac, W0
	MOV	_Vdac+2, W1
	CALL	__Float2Longint
	MOV.B	#5, W11
	MOV	W0, W10
	CALL	_MCP_4922
;PID_Deneme.c,72 :: 		slot_CS();
	CALL	_slot_CS
;PID_Deneme.c,73 :: 		asm CLRWDT;
	CLRWDT
;PID_Deneme.c,75 :: 		}
	GOTO	L_main4
;PID_Deneme.c,76 :: 		}
L_end_main:
	POP	W12
	POP	W11
	POP	W10
L__main_end_loop:
	BRA	L__main_end_loop
; end of _main
