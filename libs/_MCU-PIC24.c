#include "mcu_pic24.h"
//////////*PÝNLER*//////////////

////////////RF  PINLER/////////////
sbit SDI2_dir at TRISD8_bit;
sbit SDO2_dir at TRISD9_bit;
sbit SCK2_dir at TRISD10_bit;
sbit nSS_dir at TRISD11_bit;
sbit RFM95_reset_dir at TRISD0_bit;
sbit SDI2 at RD8_bit;
sbit SDO2 at LATD9_bit;
sbit SCK2 at LATD10_bit;
sbit nSS at LATD11_bit;
sbit RFM95_reset at LATD0_bit;

//////////RS485 Pinleri
sbit rs_485_RX_direction at TRISG7_bit;
sbit rx_485_rxtx_pin_direction at TRISG9_bit;
sbit rs_485_TX_direction at TRISG8_bit;
sbit rs_485_RX at RG7_bit;
sbit rs_485_rxtx_pin at LATG9_bit;
sbit rs_485_TX at LATG8_bit;

///////////HC595 RLY PINLER
sbit load_RLY_dir at DIO11_dir;
sbit idata1_RLY_dir at DIO1_dir;
sbit idata2_RLY_dir at DIO2_dir;
sbit idata3_RLY_dir at DIO3_dir;
sbit idata4_RLY_dir at DIO4_dir;
sbit idata5_RLY_dir at DIO5_dir;
sbit idata6_RLY_dir at DIO6_dir;
sbit idata7_RLY_dir at DIO7_dir;
sbit idata8_RLY_dir at DIO10_dir;
sbit clk_RLY_dir at DIO12_dir;
sbit load_RLY at DIO11;
sbit idata1_RLY at DIO1;
sbit idata2_RLY at DIO2;
sbit idata3_RLY at DIO3;
sbit idata4_RLY at DIO4;
sbit idata5_RLY at DIO5;
sbit idata6_RLY at DIO6;
sbit idata7_RLY at DIO7;
sbit idata8_RLY at DIO10;
sbit clk_RLY at DIO12;


///////////HC165 DIPSWICTH - DIGITAL INPUT
sbit latch_DINPUT_dir at DIO27_dir;
sbit qdata_DINPUT_dir at DIO29_dir;
sbit clk_DINPUT_dir at DIO28_dir;
sbit latch_DINPUT at DIO27;
sbit qdata_DINPUT at DIO29;
sbit clk_DINPUT at DIO28;

extern bit CS1,CS2,CS3,CS4,CS5,CS6,CS7,CS8;
extern bit CS9,CS10,CS11,CS12,CS13,CS14,CS15,CS16;
extern bit CS17,CS18,CS19,CS20,CS21,CS22,CS23,CS24;
extern bit CS25,CS26,CS27,LED1,LED2,LED3,LED4,ACIL_RLY;

////////////HC595 CHIP SELECT PINLER
sbit load_CS_dir at DIO13_dir;
sbit idata_CS_dir at DIO14_dir;
sbit clk_CS_dir at DIO26_dir;
sbit load_CS at DIO13;
sbit idata_CS at DIO14;
sbit clk_CS at DIO26;

/////////////4-20 - VOLTAJ - ANALOG INPUT - SPI1 PINLER
sbit slot_spi_miso_dir at DIO22_dir;
sbit slot_spi_mosi_dir at DIO21_dir;
sbit slot_spi_sck_dir at DIO20_dir;
sbit slot_spi_miso at DIO22;
sbit slot_spi_mosi at DIO21;
sbit slot_spi_sck at DIO20;

/////////////PWM - EEPROM - I2C2 PINLER
sbit slot_i2c_sda2_dir at DIO16_dir;
sbit slot_i2c_scl2_dir at DIO17_dir;
sbit slot_i2c_sda2 at DIO16;
sbit slot_i2c_scl2 at DIO17;
////////////PWM - ADC CHIP SELECT PINLER

///////////VOLTAGE - ADC CHIP SELECT PINLER
sbit CS_DAC1 at CS27;
sbit CS_DAC2 at CS26;
sbit CS_DAC3 at CS25;
sbit CS_DAC4 at CS24;
sbit CS_DAC5 at CS23;
sbit CS_DAC6 at CS22;
sbit CS_DAC7 at CS21;
sbit CS_DAC8 at CS20;
sbit SHDN_DACS at CS19;

//////////4-20 - ADC CHIP SELECT PINLER
sbit CS_420_1 at CS17;
sbit CS_420_2 at CS16;
sbit CS_420_3 at CS15;
sbit CS_420_4 at CS14;
sbit CS_420_5 at CS13;
sbit CS_420_6 at CS12;
sbit CS_420_7 at CS11;
sbit CS_420_8 at CS10;

////////////EMNÝYET RÖLESÝ
sbit emniyet_rolesi_dir at DIO32_dir;
sbit emniyet_rolesi at LATE5_BIT;

/////////MCU DÝPSWÝTCH PÝNLERÝ
sbit switchdata_dir at DIO33_dir;
sbit switch_stcp_dir at DIO34_dir;
sbit switch_shcp_dir at DIO35_dir;
sbit switchdata at DIO33;
sbit switch_stcp at DIO34;
sbit switch_shcp at DIO35;

/////////////////////////CANBUS PINLERI/////////////////////////////////////////
/*sbit CanSpi_CS            at  LATD0_bit;                                        //E7 RMF 1 için       //D0 FRM2 için
sbit CanSpi_CS_Direction  at  TRISD0_bit;
sbit CanSpi_Rst           at  LATC13_bit;                                       //B5 RFM1 için        //C13 RFM2 için
sbit CanSpi_Rst_Direction at  TRISC13_bit;*/
/*sbit SDI3_dir at TRISG6_bit;                                                  //rfm1
sbit SDO3_dir at TRISG7_bit;
sbit SCK3_dir at TRISG8_bit;*/
/*sbit SDI3_dir at TRISD8_bit;                                                    //rfm2
sbit SDO3_dir at TRISD9_bit;
sbit SCK3_dir at TRISD10_bit;*/