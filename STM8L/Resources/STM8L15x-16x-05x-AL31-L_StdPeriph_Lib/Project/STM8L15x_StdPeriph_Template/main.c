#include "stm8l15x.h"
#include "stm8l15x_it.h"

void CLK_CONFIG_16MHZ_HSI(void);

void main()
{
	CLK_CONFIG_16MHZ_HSI();
	GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);

	TIM2_TimeBaseInit(TIM2_Prescaler_128, TIM2_CounterMode_Up, 62499); // 500ms
	TIM2_ClearFlag(TIM2_FLAG_Update);
	TIM2_ITConfig(TIM2_IT_Update, ENABLE);

	enableInterrupts();
	TIM2_Cmd(ENABLE);

	while(1)
	{

	}
}

void CLK_CONFIG_16MHZ_HSI(void){
	CLK_DeInit();

  /* High speed internal clock prescaler: 1 */
  CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);

  /* Select HSE as system clock source */
  CLK_SYSCLKSourceSwitchCmd(ENABLE);
  CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);

  while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)
  {}

  /* Enable TIM2 CLK */
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
}