#include "stm8l15x.h"
#include "stm8l15x_it.h"

void Delay(long);
void configure_gpio(void);
void configure_interrupt(void);

unsigned int buttonPress = 0, tryBit;

INTERRUPT_HANDLER(EXTI1_IRQHandler, 9)
{
  if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(buttonPress == 0))
  {
    while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(buttonPress == 0));
    tryBit = 3;
    buttonPress = 1;
  }
  else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(buttonPress == 1))
  {
    while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(buttonPress == 1));
    tryBit = 4;
    buttonPress = 0;
  }
  
  EXTI_ClearITPendingBit(EXTI_IT_Pin1);
}


int main()
{
  int count;
	configure_gpio();
	configure_interrupt();
	while(1)
	{
          {
                 GPIO_WriteBit(GPIOE, GPIO_Pin_7, 1);
                 Delay(100000);
                 GPIO_WriteBit(GPIOE, GPIO_Pin_7, 0);
                 Delay(100000);             
          }
          if(tryBit == 3)
          {
            halt();
          }
	}
}

void configure_gpio()
{
  GPIO_DeInit(GPIOE);
  GPIO_DeInit(GPIOC);
  
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

void configure_interrupt()
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
