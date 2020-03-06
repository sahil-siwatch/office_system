#include "config.h"

extern bool Contact1;

/**
* @brief  Enables clock for Timer 2
* @param  None
* @retval None
*/
void timer2_clock_config()
{
  CLK_PeripheralClockConfig( CLK_Peripheral_TIM2, ENABLE );
  /* Enables the TIM2 internal Clock */
  TIM2_InternalClockConfig();
}

/**
* @brief  Initialise PWM and set PWM output state
* @param  None
* @retval None
*/
void init_pwm()
{
  timer2_clock_config();
  
  TIM2_TimeBaseInit(TIM2_Prescaler_1, TIM2_CounterMode_Down, COUNT);
  
  TIM2_OC1Init(TIM2_OCMode_PWM2, TIM2_OutputState_Enable, COUNT, TIM2_OCPolarity_High, TIM2_OCIdleState_Reset);
  TIM2_OC1PreloadConfig(ENABLE);
  
  /* TIM2 Main Output Enable */
  TIM2_CtrlPWMOutputs(ENABLE);
  
  /* TIM2 counter enable */
  TIM2_Cmd(ENABLE);
}

/**
* @brief  Uninitialises PWM and disable Timer 2 clock
* @param  None
* @retval None
*/
void uninit_pwm()
{
  TIM2_OC1Init(TIM2_OCMode_Inactive, TIM2_OutputState_Disable, COUNT, TIM2_OCPolarity_High, TIM2_OCIdleState_Reset);
  CLK_PeripheralClockConfig( CLK_Peripheral_TIM2, DISABLE );
  TIM2_CtrlPWMOutputs(DISABLE);
  TIM2_Cmd(DISABLE);
}

/**
* @brief  Set the duty cycle for PWM pulse
* @param  duty_cycle    The duty cycle value (0-100) in percentage.
* @retval None
*/
void set_duty_cycle(uint8_t duty_cycle)
{
  uint32_t compare;
  if(duty_cycle == 0)
  {
    TIM2_SetCompare1(COUNT);
    return;
  }
  compare = ((uint32_t)(100 - duty_cycle) * COUNT)/100;
  TIM2_SetCompare1(compare);
}

/**
* @brief  Turn High Brighntess LED On with specified duty cycle
* @param  duty    The duty cycle value (0-100) in percentage.
* @retval None
*/
void led_on(uint8_t duty)
{
  init_pwm();
  set_duty_cycle(duty);
}

/**
* @brief  Uninitialise PWM and turn LED Off
* @param  duty    The duty cycle value (0-100) in percentage.
* @retval None
*/
void led_off()
{
  uninit_pwm();
  //GPIO_Init(PWM_PORT, PWM_PIN, GPIO_Mode_Out_PP_Low_Fast);
  //GPIO_Write(PWM_PORT, 0x00);
}

/**
* @brief  Toggles the High Brightness LED 
* @param  None
* @retval None
*/
void toggle_led_pwm()
{
  uint8_t blink_count = 34;
  while(blink_count)
  {
    if(Contact1 == TRUE)
    {
      delay_ms(DEBOUNCING_DELAY);
      if(GPIO_ReadInputDataBit(CONTACT1_PORT, CONTACT1_PIN))
      {
        Contact1 = FALSE;
        return;
      }
    }
    led_on(PWM_PERCENTAGE);
    delay_ms(ON_TIME);
    led_off();
    delay_ms(OFF_TIME);
    blink_count--;
  }
  Contact1 = FALSE;
}