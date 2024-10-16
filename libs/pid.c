#include "pid.h"
#include <stdint.h>
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