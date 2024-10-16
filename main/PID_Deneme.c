#include "_4x8_cs.h"
#include "mcu_pic24.h"
#include "uygulama.h"
#include "voltage_io.h"
#include "pid.h"

/* Controller parameters */
#define PID_KP  0.8f
#define PID_KI  0.1f
#define PID_KD  0.1f

#define Vout          5


extern bit LED1,LED2,LED3,LED4,ACIL_RLY,RLY56;
extern sfr sbit emniyet_rolesi;
float Vdac=0;
extern unsigned int AN1;
float pid_out;
PID_TypeDef_t pid;
int voltaj_out = 0,analogValue = 0;






////////////////////////////////////////////////////////////////////////////////
//////////////////////////*****MAIN*****////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

void main()
{

     asm CLRWDT;
     acilis();
     //init_timer();
     //init_timer_2();
     sifirla();
     slot_CS();
     Delay_ms(10);
     emniyet_rolesi=1;
     asm CLRWDT;
     Delay_ms(100);
     //<!**** Vout degerine istenilen gerilim degerini giriniz.*******!>//
     Vdac=186*Vout;
     
     
     /* Initialize PID controller */

     PID_Init(&pid , PID_KP , PID_KI , PID_KD);

    

     //Asýl While
     while(1)
     {
      AN1 = MCP_3208V(0,7);
      analogValue = AN1/2;
      
      Delay_ms(100);
      
      pid_out = PID_Proccess(&pid , Vdac , analogValue);

      MCP_4922(1995,1);
      MCP_4922((int)pid_out,2);
      MCP_4922(1995,3);
      MCP_4922(1995,4);
      MCP_4922(Vdac,5);

      
      slot_CS();
      asm CLRWDT;
     
     }
}