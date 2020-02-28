// controlling 3 rgbs using PWM 
#include "stm8l15x.h"

#define TIM1_PERIOD                 100
#define TIM1_PRESCALER              1
#define TIM1_REPTETION_COUNTER      0

#define TIM2_PERIOD                 999
#define TIM2_PRESCALER              1


uint16_t Tim1_CCR1_Val = 50;
uint16_t Tim2_CCR1_Val = 60;

uint16_t Capture = 0;

void CLK_Config(void);
void GPIO_Config(void);
void TIM1_Config(void);
void Delay(long nCount);
void TIM2_Config(void);
int percentage(uint16_t, int);

void main(void)
{
  CLK_Config();
  GPIO_Config(); 
  TIM1_Config();
  TIM2_Config();
  int intensity, button_press = 0;
  
  while (1)
  {	
           TIM1_SetCompare1(percentage(TIM1_PERIOD, Tim1_CCR1_Val));
           TIM2_SetCompare1(percentage(TIM2_PERIOD, Tim2_CCR1_Val));
  }
}

int percentage(uint16_t TP, int per)
{
   return TP/100*per;
}

 void CLK_Config(void)
{

  CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);
  CLK_PeripheralClockConfig(CLK_Peripheral_TIM2, ENABLE);
}

 void GPIO_Config(void)
{

 GPIO_Init(GPIOD, GPIO_Pin_2, GPIO_Mode_Out_PP_Low_Fast);
 GPIO_Init(GPIOB, GPIO_Pin_0, GPIO_Mode_Out_PP_Low_Fast);
 GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_No_IT);
}

void TIM2_Config(void)
{
  int ccr1Val = percentage(TIM2_PERIOD, Tim2_CCR1_Val);
  
  TIM2_DeInit();
  TIM2_TimeBaseInit(TIM2_PRESCALER, TIM2_CounterMode_Up, TIM2_PERIOD);
  
  TIM2_OC1Init(TIM2_OCMode_PWM2, TIM2_OutputState_Enable, ccr1Val, TIM2_OCPolarity_Low, TIM2_OCIdleState_Set);
  TIM2_OC1PreloadConfig(ENABLE);
  
  TIM2_ARRPreloadConfig(ENABLE);
  TIM2_CtrlPWMOutputs(ENABLE);
  TIM2_Cmd(ENABLE);
}
 void TIM1_Config(void)
{ 
  int ccr1Val = percentage(TIM1_PERIOD, Tim1_CCR1_Val);
  
  TIM1_DeInit();
  TIM1_TimeBaseInit(TIM1_PRESCALER, TIM1_CounterMode_Up, TIM1_PERIOD, TIM1_REPTETION_COUNTER);

  TIM1_OC1Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Enable, ccr1Val, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set, TIM1_OCNIdleState_Set);
  TIM1_OC1PreloadConfig(ENABLE);
  
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

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {}
}
#endif

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
