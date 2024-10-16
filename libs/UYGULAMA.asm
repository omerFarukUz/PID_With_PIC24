
_Timer1Interrupt:
	PUSH	52
	PUSH	RCOUNT
	PUSH	W0
	MOV	#2, W0
	REPEAT	#12
	PUSH	[W0++]

;UYGULAMA.c,53 :: 		void Timer1Interrupt() iv IVT_ADDR_T1INTERRUPT
;UYGULAMA.c,55 :: 		if(IFS0bits.T1IF==1)
	BTSS	IFS0bits, #3
	GOTO	L_Timer1Interrupt0
;UYGULAMA.c,57 :: 		asm CLRWDT;
	CLRWDT
;UYGULAMA.c,58 :: 		T1IF_bit=0;
	BCLR	T1IF_bit, BitPos(T1IF_bit+0)
;UYGULAMA.c,59 :: 		}
L_Timer1Interrupt0:
;UYGULAMA.c,60 :: 		}
L_end_Timer1Interrupt:
	MOV	#26, W0
	REPEAT	#12
	POP	[W0--]
	POP	W0
	POP	RCOUNT
	POP	52
	RETFIE
; end of _Timer1Interrupt

_timer2:
	PUSH	52
	PUSH	RCOUNT
	PUSH	W0
	MOV	#2, W0
	REPEAT	#12
	PUSH	[W0++]

;UYGULAMA.c,62 :: 		void timer2() iv IVT_ADDR_T2INTERRUPT
;UYGULAMA.c,64 :: 		if((IFS0 >> 7U)& 0x01)
	MOV	IFS0, WREG
	LSR	W0, #7, W0
	BTSS	W0, #0
	GOTO	L_timer21
;UYGULAMA.c,67 :: 		IFS0 &= ~(0x01 << T2IF_mask);
	MOV	#127, W1
	MOV	#lo_addr(IFS0), W0
	AND	W1, [W0], [W0]
;UYGULAMA.c,68 :: 		}
L_timer21:
;UYGULAMA.c,70 :: 		}
L_end_timer2:
	MOV	#26, W0
	REPEAT	#12
	POP	[W0--]
	POP	W0
	POP	RCOUNT
	POP	52
	RETFIE
; end of _timer2

_init_timer:

;UYGULAMA.c,75 :: 		void init_timer()
;UYGULAMA.c,78 :: 		T1CON         = 0x8020;
	MOV	#32800, W0
	MOV	WREG, T1CON
;UYGULAMA.c,79 :: 		T1IE_bit      = 1;
	BSET	T1IE_bit, BitPos(T1IE_bit+0)
;UYGULAMA.c,80 :: 		T1IF_bit      = 0;
	BCLR	T1IF_bit, BitPos(T1IF_bit+0)
;UYGULAMA.c,81 :: 		IPC0          = IPC0 | 0x1000;
	MOV	#4096, W1
	MOV	#lo_addr(IPC0), W0
	IOR	W1, [W0], [W0]
;UYGULAMA.c,82 :: 		PR1           = 25000;
	MOV	#25000, W0
	MOV	WREG, PR1
;UYGULAMA.c,84 :: 		}
L_end_init_timer:
	RETURN
; end of _init_timer

_init_timer_2:

;UYGULAMA.c,89 :: 		void init_timer_2()
;UYGULAMA.c,91 :: 		T2CON            = 0;                      // T2CON register is cleared
	CLR	T2CON
;UYGULAMA.c,92 :: 		T2CONbits.TCKPS  = 0x02;                   // Timer-2 Input Clock Prescaler selected 1:64 bits
	MOV.B	#32, W0
	MOV.B	W0, W1
	MOV	#lo_addr(T2CONbits), W0
	XOR.B	W1, [W0], W1
	MOV.B	#48, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(T2CONbits), W0
	XOR.B	W1, [W0], W1
	MOV	#lo_addr(T2CONbits), W0
	MOV.B	W1, [W0]
;UYGULAMA.c,93 :: 		T2CONbits.TON    = 0x01;                   // Timer-2 starts 16-bit Timer
	BSET	T2CONbits, #15
;UYGULAMA.c,94 :: 		IEC0            |= (0x01 << T2IE_mask);    // Timer-2 Interrupt Enable
	MOV	#128, W1
	MOV	#lo_addr(IEC0), W0
	IOR	W1, [W0], [W0]
;UYGULAMA.c,95 :: 		IFS0            &= ~(0x01 << T2IF_mask);   // Timer-2 Interrupt request has no occurred
	MOV	#127, W1
	MOV	#lo_addr(IFS0), W0
	AND	W1, [W0], [W0]
;UYGULAMA.c,96 :: 		IPC1             = 0x00;                   // Timer-2 Interrupt Priority Control Register is cleared
	CLR	IPC1
;UYGULAMA.c,97 :: 		IPC1            |= (0x03 << T2IP_mask);    // Timer-2 Interrupt Priority Level selected 3
	MOV	#12288, W0
	MOV	WREG, IPC1
;UYGULAMA.c,98 :: 		PR2              = 0;                      // Timer-2 Period Register is cleared
	CLR	PR2
;UYGULAMA.c,99 :: 		PR2             |= 0x2;                   // Timer-2 selected 4 micro-second
	MOV	#2, W1
	MOV	#lo_addr(PR2), W0
	IOR	W1, [W0], [W0]
;UYGULAMA.c,100 :: 		}
L_end_init_timer_2:
	RETURN
; end of _init_timer_2

_sifirla:

;UYGULAMA.c,103 :: 		void sifirla()
;UYGULAMA.c,106 :: 		CS1=1,CS2=1,CS3=1,CS4=1,CS5=1,CS6=1,CS7=1,CS8=1;
	MOV	#lo_addr(_CS1), W0
	BSET	[W0], BitPos(_CS1+0)
	MOV	#lo_addr(_CS2), W0
	BSET	[W0], BitPos(_CS2+0)
	MOV	#lo_addr(_CS3), W0
	BSET	[W0], BitPos(_CS3+0)
	MOV	#lo_addr(_CS4), W0
	BSET	[W0], BitPos(_CS4+0)
	MOV	#lo_addr(_CS5), W0
	BSET	[W0], BitPos(_CS5+0)
	MOV	#lo_addr(_CS6), W0
	BSET	[W0], BitPos(_CS6+0)
	MOV	#lo_addr(_CS7), W0
	BSET	[W0], BitPos(_CS7+0)
	MOV	#lo_addr(_CS8), W0
	BSET	[W0], BitPos(_CS8+0)
;UYGULAMA.c,107 :: 		CS9=1,CS10=1,CS11=1,CS12=1,CS13=1,CS14=1,CS15=1,CS16=1;
	MOV	#lo_addr(_CS9), W0
	BSET	[W0], BitPos(_CS9+0)
	MOV	#lo_addr(_CS10), W0
	BSET	[W0], BitPos(_CS10+0)
	MOV	#lo_addr(_CS11), W0
	BSET	[W0], BitPos(_CS11+0)
	MOV	#lo_addr(_CS12), W0
	BSET	[W0], BitPos(_CS12+0)
	MOV	#lo_addr(_CS13), W0
	BSET	[W0], BitPos(_CS13+0)
	MOV	#lo_addr(_CS14), W0
	BSET	[W0], BitPos(_CS14+0)
	MOV	#lo_addr(_CS15), W0
	BSET	[W0], BitPos(_CS15+0)
	MOV	#lo_addr(_CS16), W0
	BSET	[W0], BitPos(_CS16+0)
;UYGULAMA.c,108 :: 		CS17=1,CS18=1,CS19=1,CS20=1,CS21=1,CS22=1,CS23=1,CS24=1;
	MOV	#lo_addr(_CS17), W0
	BSET	[W0], BitPos(_CS17+0)
	MOV	#lo_addr(_CS18), W0
	BSET	[W0], BitPos(_CS18+0)
	MOV	#lo_addr(_CS19), W0
	BSET	[W0], BitPos(_CS19+0)
	MOV	#lo_addr(_CS20), W0
	BSET	[W0], BitPos(_CS20+0)
	MOV	#lo_addr(_CS21), W0
	BSET	[W0], BitPos(_CS21+0)
	MOV	#lo_addr(_CS22), W0
	BSET	[W0], BitPos(_CS22+0)
	MOV	#lo_addr(_CS23), W0
	BSET	[W0], BitPos(_CS23+0)
	MOV	#lo_addr(_CS24), W0
	BSET	[W0], BitPos(_CS24+0)
;UYGULAMA.c,109 :: 		CS25=1,CS26=1,CS27=1,LED1=0,LED2=0,LED3=0,LED4=0,ACIL_RLY=0;
	MOV	#lo_addr(_CS25), W0
	BSET	[W0], BitPos(_CS25+0)
	MOV	#lo_addr(_CS26), W0
	BSET	[W0], BitPos(_CS26+0)
	MOV	#lo_addr(_CS27), W0
	BSET	[W0], BitPos(_CS27+0)
	MOV	#lo_addr(_LED1), W0
	BCLR	[W0], BitPos(_LED1+0)
	MOV	#lo_addr(_LED2), W0
	BCLR	[W0], BitPos(_LED2+0)
	MOV	#lo_addr(_LED3), W0
	BCLR	[W0], BitPos(_LED3+0)
	MOV	#lo_addr(_LED4), W0
	BCLR	[W0], BitPos(_LED4+0)
	MOV	#lo_addr(_ACIL_RLY), W0
	BCLR	[W0], BitPos(_ACIL_RLY+0)
;UYGULAMA.c,112 :: 		}
L_end_sifirla:
	RETURN
; end of _sifirla

_acilis:

;UYGULAMA.c,113 :: 		void acilis()
;UYGULAMA.c,115 :: 		ad1pcfgl=0xFFFF;                                                           //TUM PINLER DIGITAL
	PUSH	W10
	PUSH	W11
	MOV	#65535, W0
	MOV	WREG, AD1PCFGL
;UYGULAMA.c,116 :: 		cm1con.f15=0;                                                              //comparator kapalý
	BCLR	CM1CON, #15
;UYGULAMA.c,117 :: 		cm2con.f15=0;                                                              //comparator kapalý
	BCLR	CM2CON, #15
;UYGULAMA.c,118 :: 		cm3con.f15=0;                                                              //comparator kapalý
	BCLR	CM3CON, #15
;UYGULAMA.c,121 :: 		emniyet_rolesi_dir=0;
	BCLR	emniyet_rolesi_dir, BitPos(emniyet_rolesi_dir+0)
;UYGULAMA.c,122 :: 		emniyet_rolesi=0;
	BCLR	emniyet_rolesi, BitPos(emniyet_rolesi+0)
;UYGULAMA.c,125 :: 		latch_DINPUT_dir=0;
	BCLR	latch_DINPUT_dir, BitPos(latch_DINPUT_dir+0)
;UYGULAMA.c,126 :: 		qdata_DINPUT_dir=1;
	BSET	qdata_DINPUT_dir, BitPos(qdata_DINPUT_dir+0)
;UYGULAMA.c,127 :: 		clk_DINPUT_dir=0;
	BCLR	clk_DINPUT_dir, BitPos(clk_DINPUT_dir+0)
;UYGULAMA.c,129 :: 		load_CS_dir=0;
	BCLR	load_CS_dir, BitPos(load_CS_dir+0)
;UYGULAMA.c,130 :: 		idata_CS_dir=0;
	BCLR	idata_CS_dir, BitPos(idata_CS_dir+0)
;UYGULAMA.c,131 :: 		clk_CS_dir=0;
	BCLR	clk_CS_dir, BitPos(clk_CS_dir+0)
;UYGULAMA.c,133 :: 		slot_spi_miso_dir=1;
	BSET	slot_spi_miso_dir, BitPos(slot_spi_miso_dir+0)
;UYGULAMA.c,134 :: 		slot_spi_mosi_dir=0;
	BCLR	slot_spi_mosi_dir, BitPos(slot_spi_mosi_dir+0)
;UYGULAMA.c,135 :: 		slot_spi_sck_dir=0;
	BCLR	slot_spi_sck_dir, BitPos(slot_spi_sck_dir+0)
;UYGULAMA.c,158 :: 		spi1con1bits.MODE16=0;                                                     //1byte communication
	BCLR	SPI1CON1bits, #10
;UYGULAMA.c,159 :: 		spi1con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
	BCLR	SPI1CON1bits, #12
;UYGULAMA.c,160 :: 		spi1con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
	BCLR	SPI1CON1bits, #11
;UYGULAMA.c,161 :: 		spi1con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
	BSET	SPI1CON1bits, #7
;UYGULAMA.c,162 :: 		spi1con1bits.MSTEN=1;                                                      //master mode
	BSET	SPI1CON1bits, #5
;UYGULAMA.c,163 :: 		spi1con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
	BCLR	SPI1CON2bits, #14
;UYGULAMA.c,164 :: 		spi1con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)
	BCLR	SPI1CON2bits, #0
;UYGULAMA.c,166 :: 		spi2con1bits.MODE16=0;                                                     //1byte communication
	BCLR	SPI2CON1bits, #10
;UYGULAMA.c,167 :: 		spi2con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
	BCLR	SPI2CON1bits, #12
;UYGULAMA.c,168 :: 		spi2con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
	BCLR	SPI2CON1bits, #11
;UYGULAMA.c,169 :: 		spi2con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
	BSET	SPI2CON1bits, #7
;UYGULAMA.c,170 :: 		spi2con1bits.MSTEN=1;                                                      //master mode
	BSET	SPI2CON1bits, #5
;UYGULAMA.c,171 :: 		spi2con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
	BCLR	SPI2CON2bits, #14
;UYGULAMA.c,172 :: 		spi2con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)
	BCLR	SPI2CON2bits, #0
;UYGULAMA.c,174 :: 		spi3con1bits.MODE16=0;                                                     //1byte communication
	BCLR	SPI3CON1bits, #10
;UYGULAMA.c,175 :: 		spi3con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
	BCLR	SPI3CON1bits, #12
;UYGULAMA.c,176 :: 		spi3con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
	BCLR	SPI3CON1bits, #11
;UYGULAMA.c,177 :: 		spi3con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
	BSET	SPI3CON1bits, #7
;UYGULAMA.c,178 :: 		spi3con1bits.MSTEN=1;                                                      //master mode
	BSET	SPI3CON1bits, #5
;UYGULAMA.c,179 :: 		spi3con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
	BCLR	SPI3CON2bits, #14
;UYGULAMA.c,180 :: 		spi3con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)
	BCLR	SPI3CON2bits, #0
;UYGULAMA.c,182 :: 		oscconbits.IOLOCK=0;   //unlock
	BCLR	OSCCONbits, #6
;UYGULAMA.c,185 :: 		RPINR20bits.SDI1R=22;        //SPI1 SDI RP22    Pin 51
	MOV.B	#22, W0
	MOV.B	W0, W1
	MOV	#lo_addr(RPINR20bits), W0
	XOR.B	W1, [W0], W1
	MOV.B	#63, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(RPINR20bits), W0
	XOR.B	W1, [W0], W1
	MOV	#lo_addr(RPINR20bits), W0
	MOV.B	W1, [W0]
;UYGULAMA.c,186 :: 		RPOR11bits.RP23R=7;          //SPI1 SDO RP23    Pin 50
	MOV	#1792, W0
	MOV	W0, W1
	MOV	#lo_addr(RPOR11bits), W0
	XOR	W1, [W0], W1
	MOV	#16128, W0
	AND	W1, W0, W1
	MOV	#lo_addr(RPOR11bits), W0
	XOR	W1, [W0], W1
	MOV	W1, RPOR11bits
;UYGULAMA.c,187 :: 		RPOR12bits.RP24R=8;          //SPI1 SCK RP24    Pin 49
	MOV.B	#8, W0
	MOV.B	W0, W1
	MOV	#lo_addr(RPOR12bits), W0
	XOR.B	W1, [W0], W1
	MOV.B	#63, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(RPOR12bits), W0
	XOR.B	W1, [W0], W1
	MOV	#lo_addr(RPOR12bits), W0
	MOV.B	W1, [W0]
;UYGULAMA.c,190 :: 		RPINR22bits.SDI2R=2;        //SPI2 SDI RP2      Pin 42
	MOV.B	#2, W0
	MOV.B	W0, W1
	MOV	#lo_addr(RPINR22bits), W0
	XOR.B	W1, [W0], W1
	MOV.B	#63, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(RPINR22bits), W0
	XOR.B	W1, [W0], W1
	MOV	#lo_addr(RPINR22bits), W0
	MOV.B	W1, [W0]
;UYGULAMA.c,191 :: 		RPOR2bits.RP4R=10;          //SPI2 SDO RP4      Pin 43
	MOV.B	#10, W0
	MOV.B	W0, W1
	MOV	#lo_addr(RPOR2bits), W0
	XOR.B	W1, [W0], W1
	MOV.B	#63, W0
	AND.B	W1, W0, W1
	MOV	#lo_addr(RPOR2bits), W0
	XOR.B	W1, [W0], W1
	MOV	#lo_addr(RPOR2bits), W0
	MOV.B	W1, [W0]
;UYGULAMA.c,192 :: 		RPOR1bits.RP3R=11;          //SPI2 SCK RP3      Pin 44
	MOV	#2816, W0
	MOV	W0, W1
	MOV	#lo_addr(RPOR1bits), W0
	XOR	W1, [W0], W1
	MOV	#16128, W0
	AND	W1, W0, W1
	MOV	#lo_addr(RPOR1bits), W0
	XOR	W1, [W0], W1
	MOV	W1, RPOR1bits
;UYGULAMA.c,199 :: 		oscconbits.IOLOCK=1;                                                       //lock
	BSET	OSCCONbits, #6
;UYGULAMA.c,201 :: 		SPI1STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI1STATbits, #6
;UYGULAMA.c,202 :: 		SPI1STATbits.SPIEN=1;                                                      //spi1 enable
	BSET	SPI1STATbits, #15
;UYGULAMA.c,204 :: 		SPI2STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI2STATbits, #6
;UYGULAMA.c,205 :: 		SPI2STATbits.SPIEN=1;                                                      //spi2 enable
	BSET	SPI2STATbits, #15
;UYGULAMA.c,207 :: 		SPI3STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI3STATbits, #6
;UYGULAMA.c,208 :: 		SPI3STATbits.SPIEN=1;                                                      //spi3 enable
	BSET	SPI3STATbits, #15
;UYGULAMA.c,211 :: 		SPI1_init();
	CALL	_SPI1_Init
;UYGULAMA.c,212 :: 		SPI2_init();
	CALL	_SPI2_Init
;UYGULAMA.c,213 :: 		SPI3_init();
	CALL	_SPI3_Init
;UYGULAMA.c,215 :: 		SPI_Set_Active(SPI1_Read, SPI1_Write);                                     // Sets the SPI1 module active
	MOV	#lo_addr(_SPI1_Write), W11
	MOV	#lo_addr(_SPI1_Read), W10
	CALL	_SPI_Set_Active
;UYGULAMA.c,216 :: 		SPI_Set_Active(SPI2_Read, SPI2_Write);                                     // Sets the SPI2 module active
	MOV	#lo_addr(_SPI2_Write), W11
	MOV	#lo_addr(_SPI2_Read), W10
	CALL	_SPI_Set_Active
;UYGULAMA.c,217 :: 		SPI_Set_Active(SPI3_Read, SPI3_Write);                                     // Sets the SPI3 module active
	MOV	#lo_addr(_SPI3_Write), W11
	MOV	#lo_addr(_SPI3_Read), W10
	CALL	_SPI_Set_Active
;UYGULAMA.c,219 :: 		SPI1STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI1STATbits, #6
;UYGULAMA.c,220 :: 		SPI2STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI2STATbits, #6
;UYGULAMA.c,221 :: 		SPI3STATbits.SPIROV=0;                                                     //No overflow has occurred
	BCLR	SPI3STATbits, #6
;UYGULAMA.c,224 :: 		I2C2CONbits.I2CEN=0;                                                       //i2c enable
	BCLR	I2C2CONbits, #15
;UYGULAMA.c,225 :: 		I2C2CONbits.SEN=1;                                                         //Initiates Start condition on SDAx and SCLx pins. Hardware clear at end of master Start sequence.
	BSET	I2C2CONbits, #0
;UYGULAMA.c,226 :: 		I2C2CONbits.PEN=1;                                                         //Stop condition in progress
	BSET	I2C2CONbits, #2
;UYGULAMA.c,227 :: 		I2C2CONbits.ACKEN=1;                                                       //Acknowledge sequence in progress
	BSET	I2C2CONbits, #4
;UYGULAMA.c,228 :: 		I2C2_Init(100000);
	MOV	#34464, W10
	MOV	#1, W11
	CALL	_I2C2_Init
;UYGULAMA.c,230 :: 		}
L_end_acilis:
	POP	W11
	POP	W10
	RETURN
; end of _acilis

_analogOku:

;UYGULAMA.c,232 :: 		void analogOku()
;UYGULAMA.c,245 :: 		}
L_end_analogOku:
	RETURN
; end of _analogOku

_AliciVeriYorumla:

;UYGULAMA.c,247 :: 		void AliciVeriYorumla()
;UYGULAMA.c,258 :: 		}
L_end_AliciVeriYorumla:
	RETURN
; end of _AliciVeriYorumla
