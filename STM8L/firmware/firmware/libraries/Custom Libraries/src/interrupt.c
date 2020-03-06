#include "config.h"

extern bool Contact1;
extern bool Contact2;
extern bool Charging;
extern bool Full_Charge;

volatile bool prevState = FALSE;
volatile bool nextState = FALSE;

/**
* @brief  Interrupt Handler for Charging Pin
* @param  None
* @retval None
*/
INTERRUPT_HANDLER(EXTI7_IRQHandler, 15)
{
  EXTI_ClearITPendingBit( EXTI_IT_Pin7 );
  if(GPIO_ReadInputDataBit(CHG_STAT_PORT, CHG_STAT_PIN))
  {
    Full_Charge = TRUE;
  }
  else Full_Charge = FALSE;
}

INTERRUPT_HANDLER(EXTI1_IRQHandler, 9)
{
  EXTI_ClearITPendingBit( EXTI_IT_Pin1 );
  if(GPIO_ReadInputDataBit(CHG_STAT_PORT, CHG_STAT_PIN))
  {
    Charging = FALSE;
  }
  else
  {
    Charging = TRUE;
  }
}

/**
* @brief  Interrupt Handler for Contact 1 input
* @param  None
* @retval None
*/

INTERRUPT_HANDLER(EXTI4_IRQHandler, 12)
{
  EXTI_ClearITPendingBit( EXTI_IT_Pin4 );
  
  if(!GPIO_ReadInputDataBit(CONTACT1_PORT, CONTACT1_PIN))
  {
    nextState = FALSE;
  } 
  else
  {
    nextState = TRUE;
  }
  
  if(prevState != nextState)
    Contact1 = TRUE;

  prevState = nextState;
}

/**
* @brief  Interrupt Handler for Contact 2 input
* @param  None
* @retval None
*/
INTERRUPT_HANDLER(EXTI5_IRQHandler, 13)
{
  EXTI_ClearITPendingBit( EXTI_IT_Pin5 );
  Contact2 = TRUE;
}