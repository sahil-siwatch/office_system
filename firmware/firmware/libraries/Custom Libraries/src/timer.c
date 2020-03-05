#include "config.h"

/**
* @brief  Enables Timer 3 clock
* @param  None
* @retval None
*/
void timer3_clock_config()
{
  CLK_PeripheralClockConfig( CLK_Peripheral_TIM3, ENABLE );
  /* Enables the TIM3 internal Clock */
  TIM3_InternalClockConfig();
}

/**
* @brief  Initialise Timer 3
* @param  None
* @retval None
*/
void timer3_init()
{
  TIM3_TimeBaseInit( TIM3_Prescaler_16, TIM3_CounterMode_Up, 1 );
  TIM3_PrescalerConfig( TIM3_Prescaler_16, TIM3_PSCReloadMode_Immediate );
  TIM3_ARRPreloadConfig( DISABLE );
}

/**
* @brief  Deinitialise Timer 3
* @param  None
* @retval None
*/
void timer3_deinit()
{
  CLK_PeripheralClockConfig( CLK_Peripheral_TIM3, DISABLE );
  TIM3_DeInit();
}

/**
* @brief  Setup Timer 3 clock and initialise the Timer
* @param  None
* @retval None
*/
void setup_Timer3()
{
  timer3_clock_config();
  timer3_init();
}

/**
* @brief  Provides a delay for the ms value given
* @param  ms    The ms value for which delay is required
* @retval None
*/
void delay_ms(uint16_t ms)
{
  uint16_t i = 0;
  for(i=0; i<ms; i++)
  {
    delay_us( 1000 );
  }
}

/**
* @brief  Provides a delay for the us value given
* @param  us    The us value for which delay is required
* @retval None
*/
void delay_us(uint16_t us)
{
  if( us > 1000 )
  {
    delay_ms( us / 1000 );
    if( !( us = us % 1000 ) )
      return;
  }
  
  TIM3_SetAutoreload( us );
  
  TIM3_Cmd( ENABLE );
  
  while( TIM3_GetFlagStatus( TIM3_FLAG_Update ) == RESET);
  TIM3_ClearFlag( TIM3_FLAG_Update );
  
  TIM3_Cmd( DISABLE );
}