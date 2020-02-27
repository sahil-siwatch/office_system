#include "stm8l15x.h"

void TIM1_configure(void);
uint16_t Capture = 0;

uint16_t CCR1_Val = 0;

#define TIM1_PERIOD             65535
#define TIM1_PRESCALER              1
#define TIM1_REPTETION_COUNTER      0

void Delay(long nCount);


void main()
{
  int intensity = 0;
	CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);  // enables the clock for TIM1
	GPIO_Init(GPIOD, GPIO_Pin_2, GPIO_Mode_Out_PP_Low_Fast);  // PD2 as output
	TIM1_configure();
	
	while(1)
	{
          for(intensity = 0; intensity<65536; intensity++)
          {
                   Capture = TIM1_GetCapture1();
                   TIM1_SetCompare1(Capture + CCR1_Val);
                   Delay(10000);
          }
	}

}
void TIM1_configure(void)
{
	TIM1_TimeBaseInit(TIM1_PRESCALER, TIM1_CounterMode_Up , TIM1_PERIOD, TIM1_REPTETION_COUNTER);

	TIM1_OC1Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Disable, CCR1_Val, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,TIM1_OCNIdleState_Set);
	TIM1_OC2PreloadConfig(ENABLE); 
	TIM1_ARRPreloadConfig(ENABLE);

	TIM1_CtrlPWMOutputs(ENABLE);
	TIM1_Cmd(ENABLE);

}
void Delay(long nCount)
{
  /* Decrement nCount value */
  while (nCount != 0)
  {
    nCount--;
  }
}

	 //  TIM1_OC1Init(TIM1_OCMode_Toggle, TIM1_OutputState_Enable, TIM1_OutputNState_Disable, CCR1_Val, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set, TIM1_OCNIdleState_Set);
  // TIM1_OC1PreloadConfig(DISABLE);