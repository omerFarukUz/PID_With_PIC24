#line 1 "C:/Users/omer/Desktop/PID deneme/libs/UYGULAMA.c"
#line 1 "c:/users/omer/desktop/pid deneme/libs/uygulama.h"
void Timer1Interrupt();
void init_timer();
void sifirla();
void acilis();
void AliciVeriYorumla();
void analogOku();
void init_timer_2();
#line 1 "c:/users/omer/desktop/pid deneme/libs/mcu_pic24.h"
#line 1 "c:/users/omer/desktop/pid deneme/libs/_4x8_cs.h"
void clockCS();
void slot_CS();
void clock_DINPUT();
void okuma_DINPUT();
void mcu_switch_konum();
#line 1 "c:/users/omer/desktop/pid deneme/libs/voltage_io.h"
void DAC_SEC22(unsigned char kanal);
void DAC_AORB(unsigned char kanal);
void MCP_4922(int valueDAC, unsigned char kanal);
unsigned int MCP_3208V(unsigned short channel,unsigned char chip);
void Analog_OkuV(unsigned char kanal);
void Oransal_Cikis(unsigned int deger, unsigned char kanal);
void Oransal_Reset();
void Dogrusal_Cikis(unsigned int deger,unsigned char kanal);
void Voltaj_Cikisi(unsigned char kanal,unsigned int deger,unsigned char type);
void Voltaj_Girisi();
void Diagnostik_Voltaj();
#line 1 "c:/users/omer/desktop/mikroc pro for dspic/include/stdint.h"




typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;



typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed long int int_fast32_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned long int uint_fast32_t;


typedef signed int intptr_t;
typedef unsigned int uintptr_t;


typedef signed long int intmax_t;
typedef unsigned long int uintmax_t;
#line 12 "C:/Users/omer/Desktop/PID deneme/libs/UYGULAMA.c"
extern bit CS1,CS2,CS3,CS4,CS5,CS6,CS7,CS8;
extern bit CS9,CS10,CS11,CS12,CS13,CS14,CS15,CS16;
extern bit CS17,CS18,CS19,CS20,CS21,CS22,CS23,CS24;
extern bit CS25,CS26,CS27,LED1,LED2,LED3,LED4,ACIL_RLY;

extern sfr sbit emniyet_rolesi_dir;
extern sfr sbit emniyet_rolesi;

extern sfr sbit slot_spi_miso_dir;
extern sfr sbit slot_spi_mosi_dir;
extern sfr sbit slot_spi_sck_dir;
extern sfr sbit slot_spi_miso;
extern sfr sbit slot_spi_mosi;
extern sfr sbit slot_spi_sck;

extern sfr sbit latch_DINPUT_dir;
extern sfr sbit qdata_DINPUT_dir;
extern sfr sbit clk_DINPUT_dir;
extern sbit latch_DINPUT;
extern sbit qdata_DINPUT;
extern sbit clk_DINPUT;

extern sfr sbit load_CS_dir;
extern sfr sbit idata_CS_dir;
extern sfr sbit clk_CS_dir;
extern sbit load_CS;
extern sbit idata_CS;
extern sbit clk_CS;

unsigned char count=0;

extern unsigned int AN1,AN8;

unsigned int feeding_speed_voltage=0;
extern uint32_t timer;






void Timer1Interrupt() iv IVT_ADDR_T1INTERRUPT
{
 if(IFS0bits.T1IF==1)
 {
 asm CLRWDT;
 T1IF_bit=0;
 }
}

void timer2() iv IVT_ADDR_T2INTERRUPT
{
 if((IFS0 >> 7U)& 0x01)
 {

 IFS0 &= ~(0x01 <<  7U );
 }

}




void init_timer()
{

 T1CON = 0x8020;
 T1IE_bit = 1;
 T1IF_bit = 0;
 IPC0 = IPC0 | 0x1000;
 PR1 = 25000;

}




void init_timer_2()
{
 T2CON = 0;
 T2CONbits.TCKPS = 0x02;
 T2CONbits.TON = 0x01;
 IEC0 |= (0x01 <<  7U );
 IFS0 &= ~(0x01 <<  7U );
 IPC1 = 0x00;
 IPC1 |= (0x03 <<  12U );
 PR2 = 0;
 PR2 |= 0x2;
}


void sifirla()
{

 CS1=1,CS2=1,CS3=1,CS4=1,CS5=1,CS6=1,CS7=1,CS8=1;
 CS9=1,CS10=1,CS11=1,CS12=1,CS13=1,CS14=1,CS15=1,CS16=1;
 CS17=1,CS18=1,CS19=1,CS20=1,CS21=1,CS22=1,CS23=1,CS24=1;
 CS25=1,CS26=1,CS27=1,LED1=0,LED2=0,LED3=0,LED4=0,ACIL_RLY=0;


}
void acilis()
{
 ad1pcfgl=0xFFFF;
 cm1con.f15=0;
 cm2con.f15=0;
 cm3con.f15=0;


 emniyet_rolesi_dir=0;
 emniyet_rolesi=0;


 latch_DINPUT_dir=0;
 qdata_DINPUT_dir=1;
 clk_DINPUT_dir=0;

 load_CS_dir=0;
 idata_CS_dir=0;
 clk_CS_dir=0;

 slot_spi_miso_dir=1;
 slot_spi_mosi_dir=0;
 slot_spi_sck_dir=0;
#line 158 "C:/Users/omer/Desktop/PID deneme/libs/UYGULAMA.c"
 spi1con1bits.MODE16=0;
 spi1con1bits.DISSCK=0;
 spi1con1bits.DISSDO=0;
 spi1con1bits.SSEN=1;
 spi1con1bits.MSTEN=1;
 spi1con2bits.SPIFSD=0;
 spi1con2bits.SPIBEN=0;

 spi2con1bits.MODE16=0;
 spi2con1bits.DISSCK=0;
 spi2con1bits.DISSDO=0;
 spi2con1bits.SSEN=1;
 spi2con1bits.MSTEN=1;
 spi2con2bits.SPIFSD=0;
 spi2con2bits.SPIBEN=0;

 spi3con1bits.MODE16=0;
 spi3con1bits.DISSCK=0;
 spi3con1bits.DISSDO=0;
 spi3con1bits.SSEN=1;
 spi3con1bits.MSTEN=1;
 spi3con2bits.SPIFSD=0;
 spi3con2bits.SPIBEN=0;

 oscconbits.IOLOCK=0;


 RPINR20bits.SDI1R=22;
 RPOR11bits.RP23R=7;
 RPOR12bits.RP24R=8;


 RPINR22bits.SDI2R=2;
 RPOR2bits.RP4R=10;
 RPOR1bits.RP3R=11;






 oscconbits.IOLOCK=1;

 SPI1STATbits.SPIROV=0;
 SPI1STATbits.SPIEN=1;

 SPI2STATbits.SPIROV=0;
 SPI2STATbits.SPIEN=1;

 SPI3STATbits.SPIROV=0;
 SPI3STATbits.SPIEN=1;


 SPI1_init();
 SPI2_init();
 SPI3_init();

 SPI_Set_Active(SPI1_Read, SPI1_Write);
 SPI_Set_Active(SPI2_Read, SPI2_Write);
 SPI_Set_Active(SPI3_Read, SPI3_Write);

 SPI1STATbits.SPIROV=0;
 SPI2STATbits.SPIROV=0;
 SPI3STATbits.SPIROV=0;


 I2C2CONbits.I2CEN=0;
 I2C2CONbits.SEN=1;
 I2C2CONbits.PEN=1;
 I2C2CONbits.ACKEN=1;
 I2C2_Init(100000);

}

void analogOku()
{
#line 245 "C:/Users/omer/Desktop/PID deneme/libs/UYGULAMA.c"
}

void AliciVeriYorumla()
{
#line 258 "C:/Users/omer/Desktop/PID deneme/libs/UYGULAMA.c"
}
