#include "stm8l15x.h"

void TIM1_configure(void);
uint16_t Capture = 0;

void main()
{
	CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);  // enables the clock for TIM1
	//GPIO_Init(GPIOD, GPIO_Pin_2, GPIO_Mode_Out_PP_Low_Fast);  // PD2 as output
	TIM1_configure();
	
	while(1)
	{
       Capture = TIM1_GetCapture1();
       TIM1_SetCompare1(Capture + 32768);

	}

}
void TIM1_configure(void)
{
	void TIM1_TimeBaseInit(1, TIM1_CounterMode_Up , 65535, 0);

	TIM1_OC1Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Disable, 32768, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,TIM1_OCNIdleState_Set);
	TIM1_OC2PreloadConfig(ENABLE); 
	TIM1_ARRPreloadConfig(ENABLE);

	TIM1_CtrlPWMOutputs(ENABLE);
	TIM1_Cmd(ENABLE);

}
	 //  TIM1_OC1Init(TIM1_OCMode_Toggle, TIM1_OutputState_Enable, TIM1_OutputNState_Disable, CCR1_Val, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set, TIM1_OCNIdleState_Set);
  // TIM1_OC1PreloadConfig(DISABLE);