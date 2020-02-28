#include "stm8l15x.h"

bool state = FALSE;
void GPIO_setup(void);
//void EXTI_setup(void);
void clock_setup(void);
void Delay(long);
void main(void)
{
       unsigned char i = 0;
       GPIO_setup();
       //EXTI_setup();
       clock_setup();
       for(i = 0; i <= 6; i++)
       {
              GPIO_WriteReverse(GPIOE, GPIO_Pin_7);
              Delay(100000);
       }
       wfi();
       while (TRUE)
       {
              for(i = 0; i < 4; i++)
              {
                     GPIO_WriteReverse(GPIOE, GPIO_Pin_7);
                     Delay(100000);
              }
              for(i = 0; i < 4; i++)
              {
                     GPIO_WriteReverse(GPIOE, GPIO_Pin_7);
                     Delay(100000);
              }
              halt();
       }
}
void Delay(long nCount)
{
  while (nCount != 0)
  {
    nCount--;
  }
}
void GPIO_setup(void)
{
       GPIO_DeInit(GPIOC);   
       GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_IT);
       GPIO_DeInit(GPIOE);
       GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
}
/*
void EXTI_setup(void)
{
       ITC_DeInit();
       ITC_SetSoftwarePriority(ITC_IRQ_PORTB, ITC_PRIORITYLEVEL_0);
       EXTI_DeInit();
       EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOB, EXTI_SENSITIVITY_FALL_ONLY);
       EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);
       rim();
}*/
void clock_setup(void)
{
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
       CLK_DeInit();
       CLK_LSICmd(DISABLE);
       CLK_HSICmd(ENABLE);
       while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
       CLK_SYSCLKSourceSwitchCmd(ENABLE);
       CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);
       CLK_PeripheralClockConfig(CLK_Peripheral_SPI1, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_I2C1, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
       CLK_PeripheralClockConfig(CLK_Peripheral_TIM3, ENABLE);
}