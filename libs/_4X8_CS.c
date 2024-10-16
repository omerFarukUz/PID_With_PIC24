#include "_4x8_cs.h"
#include "mcu_pic24.h"
//////////////////////////////*DEÐÝÞKENLER*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
bit CS1,CS2,CS3,CS4,CS5,CS6,CS7,CS8;
bit CS9,CS10,CS11,CS12,CS13,CS14,CS15,CS16;
bit CS17,CS18,CS19,CS20,CS21,CS22,CS23,CS24;
bit CS25,CS26,CS27,LED1,LED2,LED3,LED4,ACIL_RLY;
//////////////////////////////*PINLER*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
extern sfr sbit load_CS_dir;
extern sfr sbit idata_CS_dir;
extern sfr sbit clk_CS_dir;
extern sfr sbit load_CS;
extern sfr sbit idata_CS;
extern sfr sbit clk_CS;

////////////////MCU Dipswitch Taným ve Konfigürasyon///////////////////
unsigned char mcu_dipswitch=0;
unsigned char pwm_aktif=0,voltage_aktif=0,voltage_pwm_secim=0;
unsigned char oransal_voltage=0,carpanli_voltage=0;

extern sfr sbit switchdata_dir;
extern sfr sbit switch_stcp_dir;
extern sfr sbit switch_shcp_dir;
extern sfr sbit switchdata;
extern sfr sbit switch_stcp;
extern sfr sbit switch_shcp;
extern unsigned char RF_FREQ_REG1,RF_FREQ_REG2,RF_FREQ_REG3;
extern unsigned char sifreV1,sifreV2,sifreV3,sifreV4,sifreV5,sifreA1,sifreA2,sifreA3;

//////////////////////////////*FONKSIYONLAR*////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void clockCS()
{
     clk_CS=1;
     Delay_Cyc_Long(1);
     clk_CS=0;
}
void slot_CS()
{
     clockCS();
     clockCS();

     idata_CS=ACIL_RLY;clockCS();
     idata_CS=LED4;clockCS();
     idata_CS=LED3;clockCS();
     idata_CS=LED2;clockCS();
     idata_CS=LED1;clockCS();
     idata_CS=CS27;clockCS();
     idata_CS=CS26;clockCS();
     idata_CS=CS25;clockCS();

     idata_CS=CS24;clockCS();
     idata_CS=CS23;clockCS();
     idata_CS=CS22;clockCS();
     idata_CS=CS21;clockCS();
     idata_CS=CS20;clockCS();
     idata_CS=CS19;clockCS();
     idata_CS=CS18;clockCS();
     idata_CS=CS17;clockCS();

     idata_CS=CS16;clockCS();
     idata_CS=CS15;clockCS();
     idata_CS=CS14;clockCS();
     idata_CS=CS13;clockCS();
     idata_CS=CS12;clockCS();
     idata_CS=CS11;clockCS();
     idata_CS=CS10;clockCS();
     idata_CS=CS9;clockCS();

     idata_CS=CS8;clockCS();
     idata_CS=CS7;clockCS();
     idata_CS=CS6;clockCS();
     idata_CS=CS5;clockCS();
     idata_CS=CS4;clockCS();
     idata_CS=CS3;clockCS();
     idata_CS=CS2;clockCS();
     idata_CS=CS1;clockCS();

     load_CS=0;
     Delay_Cyc_Long(1);
     load_CS=1;
}

void clock_DINPUT()
{
     switch_shcp=1;
     Delay_Cyc_Long(1);
     switch_shcp=0;
}

