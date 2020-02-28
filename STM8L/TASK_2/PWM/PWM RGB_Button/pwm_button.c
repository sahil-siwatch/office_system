// controlling 3 rgbs using PWM 
#include "stm8l15x.h"

#define TIM1_PERIOD             1000
#define TIM1_PRESCALER              1
#define TIM1_REPTETION_COUNTER      0


uint16_t CCR1_Val = 75;
uint16_t CCR2_Val = 75;
uint16_t CCR3_Val = 75;

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
  int intensity, button_press = 0;
  
  while (1)
  {	
     if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 0))  // red
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 0));
           TIM1_SetCompare1(0);
           TIM1_SetCompare2(1000);
           TIM1_SetCompare3(1000);
           button_press = 1;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 1))  //green
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 1));
           TIM1_SetCompare1(1000);
           TIM1_SetCompare2(0);
           TIM1_SetCompare3(1000);
           button_press = 2;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 2))   // blue
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 2));
           TIM1_SetCompare1(1000);
           TIM1_SetCompare2(1000);
           TIM1_SetCompare3(0);
           button_press = 3;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 3))   // white
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 3));
           TIM1_SetCompare1(650);
           TIM1_SetCompare2(450);
           TIM1_SetCompare3(0);
           button_press = 4;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 4)) // purple
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 4));
           TIM1_SetCompare1(500);
           TIM1_SetCompare2(500);
           TIM1_SetCompare3(250);
           button_press = 5;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 5))   //yellow
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 5));
           TIM1_SetCompare1(500);
           TIM1_SetCompare2(250);
           TIM1_SetCompare3(500);
           button_press = 6;
        }  
     else if((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 6)) // orange
        {
          while((GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)&&(button_press == 6));
           TIM1_SetCompare1(600);
           TIM1_SetCompare2(500);
           TIM1_SetCompare3(500);
           button_press = 0;
        }
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

 GPIO_Init(GPIOD, GPIO_Pin_2|GPIO_Pin_4|GPIO_Pin_5, GPIO_Mode_Out_PP_Low_Fast);
 GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_No_IT);
}


static void TIM1_Config(void)
{ int ccr1Value = percentage(CCR1_Val);
  int ccr2Value = percentage(CCR2_Val);
  int ccr3Value = percentage(CCR3_Val);
  TIM1_TimeBaseInit(TIM1_PRESCALER, TIM1_CounterMode_Up, TIM1_PERIOD, TIM1_REPTETION_COUNTER);

  TIM1_OC1Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Enable,
               0, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,
               TIM1_OCNIdleState_Set);
  TIM1_OC1PreloadConfig(ENABLE);
  
    TIM1_OC2Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Enable,
               0, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,
               TIM1_OCNIdleState_Set);
  TIM1_OC2PreloadConfig(ENABLE);
  
    TIM1_OC3Init(TIM1_OCMode_PWM2, TIM1_OutputState_Enable, TIM1_OutputNState_Enable,
               0, TIM1_OCPolarity_Low, TIM1_OCNPolarity_Low, TIM1_OCIdleState_Set,
               TIM1_OCNIdleState_Set);
  TIM1_OC3PreloadConfig(ENABLE);


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
