#line 1 "C:/Users/omer/Desktop/PID deneme/main/PID_Deneme.c"
#line 1 "c:/users/omer/desktop/pid deneme/libs/_4x8_cs.h"
void clockCS();
void slot_CS();
void clock_DINPUT();
void okuma_DINPUT();
void mcu_switch_konum();
#line 1 "c:/users/omer/desktop/pid deneme/libs/mcu_pic24.h"
#line 1 "c:/users/omer/desktop/pid deneme/libs/uygulama.h"
void Timer1Interrupt();
void init_timer();
void sifirla();
void acilis();
void AliciVeriYorumla();
void analogOku();
void init_timer_2();
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
#line 1 "c:/users/omer/desktop/pid deneme/libs/pid.h"

typedef struct
{
 float Kp;
 float Ki;
 float Kd;

 float Ut;

 float integral_sum;

 float integral;
 float derivative;

 float prevError;
 float prevMeasurement;

 float out;

}PID_TypeDef_t;

void PID_Init(PID_TypeDef_t *pid,float Kp,float Ki,float Kd);
float PID_Proccess(PID_TypeDef_t *pid,float setValue,float measurement);
#line 15 "C:/Users/omer/Desktop/PID deneme/main/PID_Deneme.c"
extern bit LED1,LED2,LED3,LED4,ACIL_RLY,RLY56;
extern sfr sbit emniyet_rolesi;
float Vdac=0;
extern unsigned int AN1;
float pid_out;
PID_TypeDef_t pid;
int voltaj_out = 0,analogValue = 0;










void main()
{

 asm CLRWDT;
 acilis();


 sifirla();
 slot_CS();
 Delay_ms(10);
 emniyet_rolesi=1;
 asm CLRWDT;
 Delay_ms(100);

 Vdac=186* 5 ;




 PID_Init(&pid ,  0.8f  ,  0.1f  ,  0.1f );




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
