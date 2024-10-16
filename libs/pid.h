
typedef struct
{
  float Kp; // Constant Proportional
  float Ki; // Constant Integral
  float Kd; // Constant Derivative
  
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