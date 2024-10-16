#line 1 "C:/Users/omer/Desktop/PID deneme/libs/pid.c"
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
#line 3 "C:/Users/omer/Desktop/PID deneme/libs/pid.c"
float error = 0;
float proportional = 0;
uint32_t timer = 0 ,prevTimer = 0;
uint32_t Ut=0;

void PID_Init(PID_TypeDef_t *pid,float Kp,float Ki,float Kd)
{
 pid->Kp = Kp;
 pid->Ki = Ki;
 pid->Kd = Kd;

 pid->integral_sum = 0;
 pid->integral = 0;
 pid->derivative = 0;
 pid->prevError = 0;
 pid->prevMeasurement = 0;

 pid->out = 0;
}

float PID_Proccess(PID_TypeDef_t *pid, float setValue, float measurement)
{

 timer++;
 if(timer < 999) Ut = timer - prevTimer;
 else Ut = 1.0;

 error = setValue - measurement;

 proportional = pid->Kp * error;


 pid->integral = pid->Ki * error *Ut;
 pid->integral_sum += pid->integral;



 pid->derivative = pid->Kd * ((measurement - pid->prevMeasurement) / Ut);


 pid->prevError = error;
 pid->prevMeasurement = measurement;
 prevTimer = timer;

 pid->out = proportional + pid->integral_sum + pid->derivative;

 return pid->out;

}
