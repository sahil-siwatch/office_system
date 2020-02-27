#include "stm8l15x.h"

#define TIM1_PERIOD             1000
#define TIM1_PRESCALER              1
#define TIM1_REPTETION_COUNTER      0


uint16_t CCR1_Val = 75;

uint16_t Capture = 0;


void CLK_Config(void);
void GPIO_Config(void);
void TIM1_Config(void);
void Delay(long nCount);
int percentage(int);

void main(void)
{
   CLK_Config();
  GPIO_Config(); 
  TIM1_Config();
  int intensity;
  
  while (1)
  {	
      for(intensity = 0; intensity<101; intensity++)
      {
        TIM1_SetCompare1(percentage(intensity));
        Delay(10000);
      }
      TIM1_SetCompare1(percentage(0));
  }
}

int percentage(int per)
{
   return TIM1_PERIOD/100*per;
}

static void CLK_Config(void)
{

  CLK_PeripheralClockConfig(CLK_Peripheral_TIM1, ENABLE);
}

static void GPIO_Config(void)
{
 
 GPIO_Init(GPIOD, GPIO_Pin_2, GPIO_Mode_Out_PP_Low_Fast);
}


static void TIM1_Config(void)
{ int ccrValue = percentage(CCR1_Val);
  TIM1_TimeBaseInit(TIM1_PRESCALER, TIM1_CounterMode_Up, TIM1_PERIOD, TIM1_REPTETION_COUNTER);

  TIM1_OC1Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Enable,
               ccrValue, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,
               TIM1_OCNIdleState_Set);
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
