void Timer1Interrupt();
void init_timer();
void sifirla();
void acilis();
void AliciVeriYorumla();
void analogOku();
void init_timer_2();


#define Lo(param) ((char *)&param)[0]
#define Hi(param) ((char *)&param)[1]
#define T2IE_mask   7U
#define T2IF_mask   7U
#define T2IP_mask   12U