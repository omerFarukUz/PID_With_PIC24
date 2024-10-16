#include "Uygulama.h"
#include "mcu_pic24.h"
#include "_4x8_cs.h"
#include "voltage_io.h"
#include <stdint.h>

////////////////////////////////////////////////////////////////////////////////
/////////////////////////GLOBAL DEÐÝÞKEN TANIMLAMALARI//////////////////////////
////////////////////////////////////////////////////////////////////////////////
//////////////////////////////*DEÐÝÞKENLER*/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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



////////////////////////////////////////////////////////////////////////////////
/////////////////////////TIMER INTERRUPT FONKSÝYONU/////////////////////////////
////////////////////////////////////////////////////////////////////////////////
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
       // timer++;
        IFS0 &= ~(0x01 << T2IF_mask);
     }

}

////////////////////////////////////////////////////////////////////////////////
/////////////////////////Timer1 KURULUMU////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
void init_timer()
{
     //Timer=12500: 50ms/25000: 100ms/31250: 150ms/37500: 200ms
     T1CON         = 0x8020;
     T1IE_bit      = 1;
     T1IF_bit      = 0;
     IPC0          = IPC0 | 0x1000;
     PR1           = 25000;

}

////////////////////////////////////////////////////////////////////////////////
/////////////////////////Timer-2 KURULUMU////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
void init_timer_2()
{
     T2CON            = 0;                      // T2CON register is cleared
     T2CONbits.TCKPS  = 0x02;                   // Timer-2 Input Clock Prescaler selected 1:64 bits
     T2CONbits.TON    = 0x01;                   // Timer-2 starts 16-bit Timer
     IEC0            |= (0x01 << T2IE_mask);    // Timer-2 Interrupt Enable
     IFS0            &= ~(0x01 << T2IF_mask);   // Timer-2 Interrupt request has no occurred
     IPC1             = 0x00;                   // Timer-2 Interrupt Priority Control Register is cleared
     IPC1            |= (0x03 << T2IP_mask);    // Timer-2 Interrupt Priority Level selected 3
     PR2              = 0;                      // Timer-2 Period Register is cleared
     PR2             |= 0x2;                   // Timer-2 selected 4 micro-second
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
     ad1pcfgl=0xFFFF;                                                           //TUM PINLER DIGITAL
     cm1con.f15=0;                                                              //comparator kapalý
     cm2con.f15=0;                                                              //comparator kapalý
     cm3con.f15=0;                                                              //comparator kapalý

/////////////////////////EMNÝYET RÖLESÝ PÝN/////////////////////////////////////
     emniyet_rolesi_dir=0;
     emniyet_rolesi=0;

/////////////////////////HC165 DIPSWICTH - DIGITAL INPUT////////////////////////
     latch_DINPUT_dir=0;
     qdata_DINPUT_dir=1;
     clk_DINPUT_dir=0;
/////////////////////////HC595 CHIP SELECT PINLER///////////////////////////////
     load_CS_dir=0;
     idata_CS_dir=0;
     clk_CS_dir=0;
/////////////////////////4-20 - VOLTAJ - ANALOG INPUT - SPI PINLER//////////////
     slot_spi_miso_dir=1;
     slot_spi_mosi_dir=0;
     slot_spi_sck_dir=0;
/////////////////////////PWM - EEPROM - I2C PINLER//////////////////////////////
/*slot_i2c_sda2_dir=0;
slot_i2c_scl2_dir=0;*/
/////////////////////////CANBUS PINLERI RFM1////////////////////////////////////
/*CanSpi_CS_Direction = 0;
     CanSpi_Rst_Direction = 0;
     SDI3_dir=1;
     SDO3_dir=0;
     SCK3_dir=0;*/

/*Can_Send_Flags = _CANSPI_TX_PRIORITY_0 &                                        // form value to be used
                 _CANSPI_TX_STD_FRAME &                                         // with CANSPIWrite
                 _CANSPI_TX_NO_RTR_FRAME;

Can_Init_Flags = _CANSPI_CONFIG_SAMPLE_THRICE &                                 // form value to be used     THRICE
                 _CANSPI_CONFIG_PHSEG2_PRG_ON &                                 // with CANSPIInit
                 _CANSPI_CONFIG_STD_MSG &
                 _CANSPI_CONFIG_DBL_BUFFER_ON &
                 _CANSPI_CONFIG_VALID_STD_MSG&
                 _CANSPI_CONFIG_LINE_FILTER_OFF;*/

/////////////////////////SPI////////////////////////////////////////////////////
     spi1con1bits.MODE16=0;                                                     //1byte communication
     spi1con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
     spi1con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
     spi1con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
     spi1con1bits.MSTEN=1;                                                      //master mode
     spi1con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
     spi1con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)

     spi2con1bits.MODE16=0;                                                     //1byte communication
     spi2con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
     spi2con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
     spi2con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
     spi2con1bits.MSTEN=1;                                                      //master mode
     spi2con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
     spi2con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)

     spi3con1bits.MODE16=0;                                                     //1byte communication
     spi3con1bits.DISSCK=0;                                                     //Internal SPI clock is enabled
     spi3con1bits.DISSDO=0;                                                     //SDOx pin is controlled by the module
     spi3con1bits.SSEN=1;                                                       //SSx pin used for Slave mode
     spi3con1bits.MSTEN=1;                                                      //master mode
     spi3con2bits.SPIFSD=0;                                                     //Frame sync pulse output (master)
     spi3con2bits.SPIBEN=0;                                                     //Enhanced Buffer disabled (Legacy mode)

     oscconbits.IOLOCK=0;   //unlock

/////////////////////////SPI1 4-20 - VOLTAJ - ANALOG INPUT//////////////////////
     RPINR20bits.SDI1R=22;        //SPI1 SDI RP22    Pin 51
     RPOR11bits.RP23R=7;          //SPI1 SDO RP23    Pin 50
     RPOR12bits.RP24R=8;          //SPI1 SCK RP24    Pin 49

/////////////////////////RFM SPI2 RF///////////////////////////////////////////
     RPINR22bits.SDI2R=2;        //SPI2 SDI RP2      Pin 42
     RPOR2bits.RP4R=10;          //SPI2 SDO RP4      Pin 43
     RPOR1bits.RP3R=11;          //SPI2 SCK RP3      Pin 44

/////////////////////////RFM1 SPI3 CANBUS///////////////////////////////////////
     //RPINR28bits.SDI3R=2;                                                       //SPI3 SDI RP2
     //RPOR2bits.RP4R=32;                                                         //SPI3 SDO RP4
     //RPOR1bits.RP3R=33;                                                         //SPI3 SCK RP3

     oscconbits.IOLOCK=1;                                                       //lock

     SPI1STATbits.SPIROV=0;                                                     //No overflow has occurred
     SPI1STATbits.SPIEN=1;                                                      //spi1 enable

     SPI2STATbits.SPIROV=0;                                                     //No overflow has occurred
     SPI2STATbits.SPIEN=1;                                                      //spi2 enable

     SPI3STATbits.SPIROV=0;                                                     //No overflow has occurred
     SPI3STATbits.SPIEN=1;                                                      //spi3 enable

//SPI1_Init_Advanced(_SPI_MASTER,_SPI_8_BIT, _SPI_PRESCALE_SEC_2, _SPI_PRESCALE_PRI_1, _SPI_SS_DISABLE, _SPI_DATA_SAMPLE_MIDDLE, _SPI_CLK_IDLE_LOW, _SPI_IDLE_2_ACTIVE);
     SPI1_init();
     SPI2_init();
     SPI3_init();

     SPI_Set_Active(SPI1_Read, SPI1_Write);                                     // Sets the SPI1 module active
     SPI_Set_Active(SPI2_Read, SPI2_Write);                                     // Sets the SPI2 module active
     SPI_Set_Active(SPI3_Read, SPI3_Write);                                     // Sets the SPI3 module active

     SPI1STATbits.SPIROV=0;                                                     //No overflow has occurred
     SPI2STATbits.SPIROV=0;                                                     //No overflow has occurred
     SPI3STATbits.SPIROV=0;                                                     //No overflow has occurred

/////////////////////////I2C////////////////////////////////////////////////////
     I2C2CONbits.I2CEN=0;                                                       //i2c enable
     I2C2CONbits.SEN=1;                                                         //Initiates Start condition on SDAx and SCLx pins. Hardware clear at end of master Start sequence.
     I2C2CONbits.PEN=1;                                                         //Stop condition in progress
     I2C2CONbits.ACKEN=1;                                                       //Acknowledge sequence in progress
     I2C2_Init(100000);

}

void analogOku()
{
/*AN1=MCP_3208V(0,7);

    if(AN1<=1000) feeding_speed_voltage=3000;
    else if(AN1>1000) feeding_speed_voltage=500;

    for(count=1;count<9;count++)
    {
     MCP_4922(feeding_speed_voltage,count);
    }
    slot_CS();*/

}

void AliciVeriYorumla()
{

/*for(count=1;count<9;count++)
        {
         MCP_4922(feeding_speed_voltage,count);
        }

         feeding_speed_voltage=1000;

         slot_CS();*/
}