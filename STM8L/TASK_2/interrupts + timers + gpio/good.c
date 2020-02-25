#include "stm8l15x.h"
#include "stm8l15x_it.h"

void Delay(long);
void configure_gpio(void);
void configure_interrupt(void);
void CLK_CONFIG_16MHZ_HSI(void);
void timer_init(void);

int x = 0, y =0;

INTERRUPT_HANDLER(EXTI1_IRQHandler,9)
{    
     if(((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(y == 0)))
     {
       while(((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(y == 0)));
       TIM2_DeInit();
       GPIO_WriteBit(GPIOE, GPIO_Pin_7, 0);
       y = 1;
     }
     else if(((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(y == 1)))
     {
       while(((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(y == 1)));
       timer_init();
       y = 0;
     }
     EXTI_ClearITPendingBit(EXTI_IT_Pin1);
}

INTERRUPT_HANDLER(TIM2_UPD_OVF_TRG_BRK_USART2_TX_IRQHandler,19)
{
  if(TIM2_GetITStatus(TIM2_IT_Update))
  {
    GPIO_WriteReverse(GPIOE, GPIO_Pin_7);
    TIM2_ClearITPendingBit(TIM2_IT_Update);
  }
}

int main()
{
  CLK_CONFIG_16MHZ_HSI();
	configure_gpio();
	configure_interrupt();
        timer_init();
        enableInterrupts();
        
	while(1)
	{
            GPIO_WriteBit(GPIOC, GPIO_Pin_7, 1);
            Delay(100000);
            GPIO_WriteBit(GPIOC, GPIO_Pin_7, 0);
            Delay(100000);
	}
}

void configure_gpio(void)
{
  GPIO_DeInit(GPIOE);
  GPIO_DeInit(GPIOC);
  
  GPIO_Init(GPIOC, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
  GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
  GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_IT);
}

void configure_interrupt(void)
{
	EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Falling);
	//enableInterrupts();
}

void Delay(long nCount)
{
  while (nCount != 0)
  {
    nCount--;
  }
}
void timer_init(void)
{
        TIM2_DeInit();
       // if(x == 1)
         // return;
        CLK_CONFIG_16MHZ_HSI();
        TIM2_TimeBaseInit(TIM2_Prescaler_128, TIM2_CounterMode_Up, 62499); // 500ms
	TIM2_ClearFlag(TIM2_FLAG_Update);
	TIM2_ITConfig(TIM2_IT_Update, ENABLE);
        TIM2_Cmd(ENABLE);
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