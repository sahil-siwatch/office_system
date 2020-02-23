#include "stm8l15x.h"
#include "stm8l15x_it.h"

<<<<<<< HEAD
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
=======
void Delay(long);
void configure_gpio(void);
void configure_interrupt(void);

int main()
{
	configure_gpio();
	configure_interrupt();
	while(1)
	{
           GPIO_WriteBit(GPIOE, GPIO_Pin_7, 1);
           Delay(10000);
           GPIO_WriteBit(GPIOE, GPIO_Pin_7, 0);
           Delay(10000);
	}
}

void configure_gpio(void)
{
  GPIO_DeInit(GPIOE);
  GPIO_DeInit(GPIOC);
  
  GPIO_Init(GPIOC, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
  GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
  GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_IT);
/*
	PE_ODR = 0;
	PE_DDR_DDR7 = 1;
	PC_DDR_DDR1 = 0;

  PE_CR1_C17 = 1;  // output as push pull
  PE_CR2_C27 = 1; // output speed upto 10MHz
  
  PC_CR1_C11 = 1;  // input with pull-up
  PC_CR2_C21 = 1; // external interrupt enabled

  EXTI_SetPinSensitivity(EXTI_Pin_TypeDef EXTI_Pin, EXTI_Trigger_TypeDef EXTI_Trigger);
*/
}

void configure_interrupt(void)
{
	EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Falling);
	enableInterrupts();
}

void Delay(long nCount)
{
  while (nCount != 0)
  {
    nCount--;
  }
}
>>>>>>> 2cd9e854199093e3972eb0af145f5afebcddd605
