#include "config.h"

/**
* @brief  Configure Interrupt Pins(Contact1 and Contact2)
* @param  None
* @retval None
*/
void init_interrupt_pins()
{
  /* Initialise Contact Pins as pulled up input */
  GPIO_Init(CONTACT1_PORT, CONTACT1_PIN, GPIO_Mode_In_PU_IT);
  EXTI_SetPinSensitivity(EXTI_Pin_4, EXTI_Trigger_Rising );
  /*
  GPIO_Init(CONTACT2_PORT, CONTACT2_PIN, GPIO_Mode_In_PU_IT);
  EXTI_SetPinSensitivity((EXTI_Pin_TypeDef)CONTACT2_PIN, EXTI_Trigger_Rising_Falling );
  */
}

/**
* @brief  Configure PWM pin
* @param  None
* @retval None
*/
void init_pwm_pin()
{
  /* Initialise PWM Pin as fast output */
  GPIO_Init(PWM_PORT, PWM_PIN, GPIO_Mode_Out_PP_Low_Fast);
}

/**
* @brief  Configure ADC pin
* @param  None
* @retval None
*/
void init_adc_pin()
{
  /* Initialise Battery Pin as floating input */
  GPIO_Init(BAT_STAT_PORT, BAT_STAT_PIN, GPIO_Mode_In_FL_No_IT);
}

/**
* @brief  Blink Low LED on bootup 2 times
* @param  None
* @retval None
*/
void hardware_check()
{
  //GPIO_Init(PWM_PORT, PWM_PIN, GPIO_Mode_Out_PP_High_Slow);
  for(int i=0; i<4; i++)
  {
    GPIO_ToggleBits(LED_PORT, LED_PIN);
    delay_ms(100);
  }
  
}

/**
* @brief  Configure Charging Interrupt pin
* @param  None
* @retval None
*/
void init_charging_interrupt()
{
   /* Initialise Charging Pin as pulled up input */
  GPIO_Init(CHG_STAT_PORT, CHG_STAT_PIN, GPIO_Mode_In_FL_IT);
  EXTI_SetPinSensitivity(EXTI_Pin_1, EXTI_Trigger_Rising_Falling );
}

/**
* @brief  Configures all GPIO pins
* @param  None
* @retval None
*/
void init_gpio()
{
  init_interrupt_pins();
  init_pwm_pin();
  init_adc_pin();
  init_charging_interrupt();
 
  /* Initialise Power LED Pin as output */
  GPIO_Init(LED_PORT, LED_PIN, GPIO_Mode_Out_PP_High_Slow); 
}

/**
* @brief  Indicate Low Battery by blinking the Low Led once
* @param  None
* @retval None
*/
void indicate_low_battery()
{
  for(int i=0; i<2; i++)
  {
    GPIO_ToggleBits(LED_PORT, LED_PIN);
    delay_ms(300);
  }
}

/**
* @brief  Indicate charging by slow blinking Low LED 
* @param  None
* @retval None
*/
void indicate_charging()
{
  //GPIO_WriteBit(LED_PORT, LED_PIN, 1);
  GPIO_WriteBit(LED_PORT, LED_PIN, 1);
  delay_ms(1000);
  GPIO_WriteBit(LED_PORT, LED_PIN, 0);
  delay_ms(1000);  
}