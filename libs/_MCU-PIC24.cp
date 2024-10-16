#line 1 "C:/Users/omer/Desktop/PID deneme/libs/_MCU-PIC24.c"
#line 1 "c:/users/omer/desktop/pid deneme/libs/mcu_pic24.h"
#line 5 "C:/Users/omer/Desktop/PID deneme/libs/_MCU-PIC24.c"
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


sbit rs_485_RX_direction at TRISG7_bit;
sbit rx_485_rxtx_pin_direction at TRISG9_bit;
sbit rs_485_TX_direction at TRISG8_bit;
sbit rs_485_RX at RG7_bit;
sbit rs_485_rxtx_pin at LATG9_bit;
sbit rs_485_TX at LATG8_bit;


sbit load_RLY_dir at  TRISB2_BIT ;
sbit idata1_RLY_dir at  TRISB3_BIT ;
sbit idata2_RLY_dir at  TRISB15_BIT ;
sbit idata3_RLY_dir at  TRISB6_BIT ;
sbit idata4_RLY_dir at  TRISB7_BIT ;
sbit idata5_RLY_dir at  TRISB8_BIT ;
sbit idata6_RLY_dir at  TRISB9_BIT ;
sbit idata7_RLY_dir at  TRISB10_BIT ;
sbit idata8_RLY_dir at  TRISB4_BIT ;
sbit clk_RLY_dir at  TRISB11_BIT ;
sbit load_RLY at  RB2_BIT ;
sbit idata1_RLY at  RB3_BIT ;
sbit idata2_RLY at  RB15_BIT ;
sbit idata3_RLY at  RB6_BIT ;
sbit idata4_RLY at  RB7_BIT ;
sbit idata5_RLY at  RB8_BIT ;
sbit idata6_RLY at  RB9_BIT ;
sbit idata7_RLY at  RB10_BIT ;
sbit idata8_RLY at  RB4_BIT ;
sbit clk_RLY at  RB11_BIT ;



sbit latch_DINPUT_dir at  TRISE2_BIT ;
sbit qdata_DINPUT_dir at  TRISE4_BIT ;
sbit clk_DINPUT_dir at  TRISE3_BIT ;
sbit latch_DINPUT at  RE2_BIT ;
sbit qdata_DINPUT at  RE4_BIT ;
sbit clk_DINPUT at  RE3_BIT ;

extern bit CS1,CS2,CS3,CS4,CS5,CS6,CS7,CS8;
extern bit CS9,CS10,CS11,CS12,CS13,CS14,CS15,CS16;
extern bit CS17,CS18,CS19,CS20,CS21,CS22,CS23,CS24;
extern bit CS25,CS26,CS27,LED1,LED2,LED3,LED4,ACIL_RLY;


sbit load_CS_dir at  TRISB12_BIT ;
sbit idata_CS_dir at  TRISB13_BIT ;
sbit clk_CS_dir at  TRISE1_BIT ;
sbit load_CS at  RB12_BIT ;
sbit idata_CS at  RB13_BIT ;
sbit clk_CS at  RE1_BIT ;


sbit slot_spi_miso_dir at  TRISD3_BIT ;
sbit slot_spi_mosi_dir at  TRISD2_BIT ;
sbit slot_spi_sck_dir at  TRISD1_BIT ;
sbit slot_spi_miso at  RD3_BIT ;
sbit slot_spi_mosi at  RD2_BIT ;
sbit slot_spi_sck at  RD1_BIT ;


sbit slot_i2c_sda2_dir at  TRISF4_BIT ;
sbit slot_i2c_scl2_dir at  TRISF5_BIT ;
sbit slot_i2c_sda2 at  RF4_BIT ;
sbit slot_i2c_scl2 at  RF5_BIT ;



sbit CS_DAC1 at CS27;
sbit CS_DAC2 at CS26;
sbit CS_DAC3 at CS25;
sbit CS_DAC4 at CS24;
sbit CS_DAC5 at CS23;
sbit CS_DAC6 at CS22;
sbit CS_DAC7 at CS21;
sbit CS_DAC8 at CS20;
sbit SHDN_DACS at CS19;


sbit CS_420_1 at CS17;
sbit CS_420_2 at CS16;
sbit CS_420_3 at CS15;
sbit CS_420_4 at CS14;
sbit CS_420_5 at CS13;
sbit CS_420_6 at CS12;
sbit CS_420_7 at CS11;
sbit CS_420_8 at CS10;


sbit emniyet_rolesi_dir at  TRISE5_BIT ;
sbit emniyet_rolesi at LATE5_BIT;


sbit switchdata_dir at  TRISE6_BIT ;
sbit switch_stcp_dir at  TRISE7_BIT ;
sbit switch_shcp_dir at  TRISG6_BIT ;
sbit switchdata at  RE6_BIT ;
sbit switch_stcp at  RE7_BIT ;
sbit switch_shcp at  RG6_BIT ;
