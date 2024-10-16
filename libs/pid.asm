
_PID_Init:
	LNK	#0

;pid.c,8 :: 		void PID_Init(PID_TypeDef_t *pid,float Kp,float Ki,float Kd)
; Ki start address is: 2 (W1)
	MOV	[W14-10], W1
	MOV	[W14-8], W2
; Kd start address is: 6 (W3)
	MOV	[W14-14], W3
	MOV	[W14-12], W4
;pid.c,10 :: 		pid->Kp = Kp;
	MOV	W11, [W10++]
	MOV	W12, [W10--]
;pid.c,11 :: 		pid->Ki = Ki;
	ADD	W10, #4, W0
	MOV	W1, [W0++]
	MOV	W2, [W0--]
; Ki end address is: 2 (W1)
;pid.c,12 :: 		pid->Kd = Kd;
	ADD	W10, #8, W0
	MOV	W3, [W0++]
	MOV	W4, [W0--]
; Kd end address is: 6 (W3)
;pid.c,14 :: 		pid->integral_sum = 0;
	ADD	W10, #16, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,15 :: 		pid->integral = 0;
	ADD	W10, #20, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,16 :: 		pid->derivative = 0;
	ADD	W10, #24, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,17 :: 		pid->prevError = 0;
	ADD	W10, #28, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,18 :: 		pid->prevMeasurement = 0;
	MOV	#32, W0
	ADD	W10, W0, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,20 :: 		pid->out = 0;
	MOV	#36, W0
	ADD	W10, W0, W2
	CLR	W0
	CLR	W1
	MOV.D	W0, [W2]
;pid.c,21 :: 		}
L_end_PID_Init:
	ULNK
	RETURN
; end of _PID_Init

_PID_Proccess:
	LNK	#24

;pid.c,23 :: 		float PID_Proccess(PID_TypeDef_t *pid, float setValue, float measurement)
	MOV	[W14-10], W0
	MOV	[W14-8], W1
	MOV	W0, [W14-10]
	MOV	W1, [W14-8]
;pid.c,26 :: 		timer++;
	MOV	#1, W1
	MOV	#0, W2
	MOV	#lo_addr(_timer), W0
	ADD	W1, [W0], [W0++]
	ADDC	W2, [W0], [W0--]
;pid.c,27 :: 		if(timer < 999) Ut = timer - prevTimer;
	MOV	#999, W1
	MOV	#0, W2
	MOV	#lo_addr(_timer), W0
	CP	W1, [W0++]
	CPB	W2, [W0--]
	BRA GTU	L__PID_Proccess4
	GOTO	L_PID_Proccess0
L__PID_Proccess4:
	MOV	_timer, W2
	MOV	_timer+2, W3
	MOV	#lo_addr(_prevTimer), W1
	MOV	#lo_addr(_Ut), W0
	SUB	W2, [W1++], [W0++]
	SUBB	W3, [W1--], [W0--]
	GOTO	L_PID_Proccess1
L_PID_Proccess0:
;pid.c,28 :: 		else Ut = 1.0;
	MOV	#1, W0
	MOV	#0, W1
	MOV	W0, _Ut
	MOV	W1, _Ut+2
L_PID_Proccess1:
;pid.c,30 :: 		error = setValue - measurement;
	MOV	[W14-10], W2
	MOV	[W14-8], W3
	PUSH	W10
	MOV	W11, W0
	MOV	W12, W1
	CALL	__Sub_FP
	POP	W10
	MOV	W0, _error
	MOV	W1, _error+2
;pid.c,32 :: 		proportional = pid->Kp * error;
	MOV.D	[W10], W2
	PUSH	W10
	CALL	__Mul_FP
	POP	W10
	MOV	W0, _proportional
	MOV	W1, _proportional+2
;pid.c,35 :: 		pid->integral = pid->Ki * error *Ut;
	ADD	W10, #20, W0
	MOV	W0, [W14+18]
	ADD	W10, #4, W2
	MOV.D	[W2], W0
	PUSH	W10
	MOV	_error, W2
	MOV	_error+2, W3
	CALL	__Mul_FP
	MOV	W0, [W14+14]
	MOV	W1, [W14+16]
	MOV	_Ut, W0
	MOV	_Ut+2, W1
	CALL	__Long2Float
	MOV	[W14+14], W2
	MOV	[W14+16], W3
	CALL	__Mul_FP
	POP	W10
	MOV	[W14+18], W2
	MOV.D	W0, [W2]
;pid.c,36 :: 		pid->integral_sum += pid->integral;
	ADD	W10, #16, W4
	MOV	W4, [W14+14]
	ADD	W10, #20, W0
	MOV.D	[W0], W2
	MOV.D	[W4], W0
	PUSH	W10
	CALL	__AddSub_FP
	POP	W10
	MOV	[W14+14], W2
	MOV.D	W0, [W2]
;pid.c,40 :: 		pid->derivative = pid->Kd * ((measurement - pid->prevMeasurement) / Ut);
	ADD	W10, #24, W0
	MOV	W0, [W14+22]
	ADD	W10, #8, W2
	MOV.D	[W2], W0
	MOV	W0, [W14+18]
	MOV	W1, [W14+20]
	MOV	#32, W0
	ADD	W10, W0, W0
	MOV.D	[W0], W2
	MOV	[W14-10], W0
	MOV	[W14-8], W1
	PUSH	W10
	CALL	__Sub_FP
	MOV	W0, [W14+14]
	MOV	W1, [W14+16]
	MOV	_Ut, W0
	MOV	_Ut+2, W1
	CALL	__Long2Float
	MOV	W0, [W14+0]
	MOV	W1, [W14+2]
	MOV	[W14+14], W0
	MOV	[W14+16], W1
	MOV	[W14+0], W2
	MOV	[W14+2], W3
	CALL	__Div_FP
	MOV	[W14+18], W2
	MOV	[W14+20], W3
	CALL	__Mul_FP
	POP	W10
	MOV	[W14+22], W2
	MOV.D	W0, [W2]
;pid.c,43 :: 		pid->prevError = error;
	ADD	W10, #28, W2
	MOV	_error, W0
	MOV	_error+2, W1
	MOV.D	W0, [W2]
;pid.c,44 :: 		pid->prevMeasurement = measurement;
	MOV	#32, W0
	ADD	W10, W0, W2
	MOV	[W14-10], W0
	MOV	[W14-8], W1
	MOV.D	W0, [W2]
;pid.c,45 :: 		prevTimer = timer;
	MOV	_timer, W0
	MOV	_timer+2, W1
	MOV	W0, _prevTimer
	MOV	W1, _prevTimer+2
;pid.c,47 :: 		pid->out = proportional + pid->integral_sum + pid->derivative;
	MOV	#36, W0
	ADD	W10, W0, W0
	MOV	W0, [W14+14]
	ADD	W10, #16, W0
	MOV.D	[W0], W2
	MOV	_proportional, W0
	MOV	_proportional+2, W1
	PUSH	W10
	CALL	__AddSub_FP
	POP	W10
	ADD	W10, #24, W4
	MOV.D	[W4], W2
	PUSH	W10
	CALL	__AddSub_FP
	POP	W10
	MOV	[W14+14], W2
	MOV.D	W0, [W2]
;pid.c,49 :: 		return pid->out;
	MOV	#36, W0
	ADD	W10, W0, W2
	MOV.D	[W2], W0
;pid.c,51 :: 		}
L_end_PID_Proccess:
	ULNK
	RETURN
; end of _PID_Proccess
