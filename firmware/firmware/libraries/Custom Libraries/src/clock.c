#include "config.h"

/**
* @brief  Configures System Clock
* @param  None
* @retval None
*/
void init_clock()
{
  /* Clock configration */
  CLK_DeInit();
  CLK_HSICmd( ENABLE );
  CLK_LSICmd( ENABLE );
  CLK_SYSCLKSourceConfig( CLK_SYSCLKSource_HSI );
  CLK_SYSCLKDivConfig( CLK_SYSCLKDiv_1 );
  
  while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)
  {}
}

/**
* @brief  Configure Low Power Mode for Controller
* @param  None
* @retval None
*/
void config_low_power()
{
  GPIO_DeInit(GPIOA);
  GPIO_DeInit(GPIOB);
  GPIO_DeInit(GPIOC);
  GPIO_DeInit(GPIOD);
  EXTI_DeInit();
  
  GPIO_Init(GPIOB, GPIO_Pin_All ^ (CONTACT1_PIN | CHG_STAT_PIN | LED_PIN | BAT_STAT_PIN), GPIO_Mode_Out_PP_Low_Slow);
  GPIO_Init(BAT_STAT_PORT, BAT_STAT_PIN, GPIO_Mode_In_FL_No_IT);
  GPIO_Init(BAT_STAT_PORT, LED_PIN, GPIO_Mode_In_PU_No_IT);
  GPIO_Init(GPIOA, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
  GPIO_Init(GPIOC, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
  GPIO_Init(GPIOD, GPIO_Pin_All, GPIO_Mode_Out_PP_Low_Slow);
  
  CLK_DeInit();
  timer3_deinit();
  uninit_adc();
  init_interrupt_pins();
  init_charging_interrupt();
}