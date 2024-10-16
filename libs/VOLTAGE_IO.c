#include "voltage_io.h"
#include "_4x8_cs.h"
/////////////////////////*DEÐÝÞKENLER*//////////////////////////////////////////
float VFB[17];
float err[17];
float set[17];
float outputDAC[17];
float katsayi[17];
unsigned int limit;
unsigned int carpan[17];
unsigned int gelen[17];
unsigned int rampa[17];
unsigned int tolerans[17];
unsigned int AN1=0,AN2=0,AN3=0,AN4=0,AN5=0,AN6=0,AN7=0,AN8=0;
unsigned int Feedback_Voltaj[17];

/////////////////////////*PINLER*///////////////////////////////////////////////
extern sbit CS_DAC1;
extern sbit CS_DAC2;
extern sbit CS_DAC3;
extern sbit CS_DAC4;
extern sbit CS_DAC5;
extern sbit CS_DAC6;
extern sbit CS_DAC7;
extern sbit CS_DAC8;
extern sbit CS3;
extern sbit CS4;
extern sbit CS7;
extern sbit SHDN_DACS;
////////////////////////////////////////////////////////////////////////////////
/////////////////////////*FONKSIYONLAR*/////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
void DAC_SEC22(unsigned char kanal)
{
          if(kanal==1){CS_DAC1=0;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==2){CS_DAC1=0;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==3){CS_DAC1=1;CS_DAC2=0;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==4){CS_DAC1=1;CS_DAC2=0;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==5){CS_DAC1=1;CS_DAC2=1;CS_DAC3=0;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==6){CS_DAC1=1;CS_DAC2=1;CS_DAC3=0;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==7){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=0;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==8){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=0;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==9){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=0;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==10){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=0;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==11){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=0;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==12){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=0;CS_DAC7=1;CS_DAC8=1;}
     else if(kanal==13){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=0;CS_DAC8=1;}
     else if(kanal==14){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=0;CS_DAC8=1;}
     else if(kanal==15){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=0;}
     else if(kanal==16){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=0;}
     else if(kanal==0){CS_DAC1=1;CS_DAC2=1;CS_DAC3=1;CS_DAC4=1;CS_DAC5=1;CS_DAC6=1;CS_DAC7=1;CS_DAC8=1;}
}

void DAC_AORB(unsigned char kanal)
{
     unsigned char temp=0;

     if(kanal%2==0)temp |= 0x30;
     else temp |= 0xB0;
}

void MCP_4922(int valueDAC, unsigned char kanal)
{
     unsigned char temp=0;

     DAC_SEC22(kanal);
     slot_CS();
     temp = (valueDAC>>8)&0x0F;                                                 //8 bitlik için
     //DAC_AORB(kanal);

     if(kanal%2==0)temp |= 0xB0;
     else temp |= 0x30;

     SPI1_Write(temp);
     temp = valueDAC;
     SPI1_Write(temp);
     //temp = valueDAC;temp |= 0x3000;                                          //16 bitlik için
     DAC_SEC22(0);
     slot_CS();
}

unsigned int MCP_3208V(unsigned short channel,unsigned char chip)
{
     unsigned int temp;

          if(chip==3) {CS3 = 0;CS4 = 1;CS7 = 1; }
     else if(chip==4) {CS3 = 1;CS4 = 0;CS7 = 1; }
     else if(chip==7) {CS3 = 1;CS4 = 1;CS7 = 0; }
     else             {CS3 = 1;CS4 = 1;CS7 = 1; }

     slot_CS();

     if (channel<4) SPI1_Write(0x06);                                           // Kanal seç
     else SPI1_Write(0x07);

     channel = channel << 6;
     temp = SPI1_Read(channel) & 0x0F;
     temp = temp << 8;
     temp = temp | SPI1_Read(0);

     CS3=CS4=CS7= 1;
     slot_CS();
     return temp;
}

void Analog_OkuV(unsigned char kanal)
{
          if(kanal==1){VFB[kanal]=MCP_3208V(0,3);}
     else if(kanal==2){VFB[kanal]=MCP_3208V(1,3);}
     else if(kanal==3){VFB[kanal]=MCP_3208V(2,3);}
     else if(kanal==4){VFB[kanal]=MCP_3208V(3,3);}
     else if(kanal==5){VFB[kanal]=MCP_3208V(4,3);}
     else if(kanal==6){VFB[kanal]=MCP_3208V(5,3);}
     else if(kanal==7){VFB[kanal]=MCP_3208V(6,3);}
     else if(kanal==8){VFB[kanal]=MCP_3208V(7,3);}
     else if(kanal==9){VFB[kanal]=MCP_3208V(0,4);}
     else if(kanal==10){VFB[kanal]=MCP_3208V(1,4);}
     else if(kanal==11){VFB[kanal]=MCP_3208V(2,4);}
     else if(kanal==12){VFB[kanal]=MCP_3208V(3,4);}
     else if(kanal==13){VFB[kanal]=MCP_3208V(4,4);}
     else if(kanal==14){VFB[kanal]=MCP_3208V(5,4);}
     else if(kanal==15){VFB[kanal]=MCP_3208V(6,4);}
     else if(kanal==16){VFB[kanal]=MCP_3208V(7,4);}
     else if(kanal==0)
     {
          AN1=MCP_3208V(0,7);
          AN2=MCP_3208V(1,7);
          AN3=MCP_3208V(2,7);
          AN4=MCP_3208V(3,7);
          AN5=MCP_3208V(4,7);
          AN6=MCP_3208V(5,7);
          AN7=MCP_3208V(6,7);
          AN8=MCP_3208V(7,7);
     }
}

void Oransal_Cikis(unsigned int deger, unsigned char kanal)                     //Rampalý 6-12-18 Çýkýþ Fonksiyonu.
{
     Analog_OkuV(kanal);

     rampa[kanal]=1000;

     rampa[kanal]=rampa[kanal]*0.25;
     if(rampa[kanal]<100)rampa[kanal]=100;
     rampa[kanal]=rampa[kanal]*0.1;

     carpan[kanal]=10000-rampa[kanal];limit=4090;
     set[kanal]=deger;  //set[kanal]=gelen[kanal];
     err[kanal]=set[kanal]-VFB[kanal];
     katsayi[kanal]=err[kanal]*rampa[kanal];
     katsayi[kanal]=katsayi[kanal]*0.01;
     outputDAC[kanal]=outputDAC[kanal]+katsayi[kanal];
     outputDAC[kanal]=outputDAC[kanal]*(carpan[kanal]-tolerans[kanal]);
     outputDAC[kanal]=outputDAC[kanal]*0.0001;
     if(outputDAC[kanal]>limit) outputDAC[kanal]= limit;
     MCP_4922(outputDAC[kanal],kanal);
}

void Oransal_Reset()                                                            //6-12-18 ORANSAL ÇIKIÞI 12 V a getirir.
{
     unsigned char i=0;

     for(i=1;i<17;i++)
     {
          outputDAC[i]=2400;
          MCP_4922(&outputDAC[i],i);
     }
}

void Dogrusal_Cikis(unsigned int deger,unsigned char kanal)                     //Rampasýz Doðrusal Çýkýþ
{
     MCP_4922(deger,kanal);
}

void Voltaj_Cikisi(unsigned char kanal,unsigned int deger,unsigned char type)   //Voltaj Türünü Belirleme
{
          if(type==0){Dogrusal_Cikis(deger,kanal);}
     else if(type==1){Oransal_Cikis(deger,kanal);}
}

void Voltaj_Girisi()                                                            //Analog Giriþleri Okuma.
{
     Analog_okuV(0);
}

void Diagnostik_Voltaj()                                                        //Voltaj Çýkýþlarýný Okuyup kaydetme
{
     unsigned int i;

     for (i=1;i<17;i++)
     {
          Analog_OkuV(i);
          Feedback_Voltaj[i]=VFB;
     }
}