#include "config.h"

bool Contact1 = FALSE;
bool Contact2 = FALSE;
bool Charging = FALSE;
bool Full_Charge = FALSE;
float battery_voltage = 0;

/**
* @brief  Initialises all required peripherals
* @param  None
* @retval None
*/
void init_peripherals()
{
  init_clock();
  setup_Timer3();
  init_gpio();
  init_pwm();
  init_adc();
  enableInterrupts();
}

/**
* @brief  Main functionality
* @param  None
* @retval None
*/
void main( void )
{
  init_peripherals();
  hardware_check();
  while(1)                                                                      //Main Loop
  {
    battery_voltage = get_battery_voltage();
    if(battery_voltage <= DISCHARGED_BATTERY_VOLTAGE)                           //Battery is discharged
    {
      indicate_low_battery();
      Contact1 = FALSE;
      Contact2 = FALSE;
    }
    else
    {
      if(Contact1)                                                              //Contact 1 available
      {     
        delay_ms(DEBOUNCING_DELAY);
        if(GPIO_ReadInputDataBit(CONTACT1_PORT, CONTACT1_PIN))
        {
            Contact1 = FALSE;
            toggle_led_pwm();
        }
      }
      else if (Contact2)                                                        //Contact 2 available
      {
        //Behaviour not defined
        Contact2 = FALSE;
      }

      else if (Charging)                                                        //Charging going on
      {
        if(Full_Charge)
        {
          GPIO_WriteBit(LED_PORT, LED_PIN, 0);
        }
        else indicate_charging();
      }

      else                                                                      //Nothing to do, go to Low Power
      {
        
        //Low Power
        config_low_power();
        halt();                                                                 //Low Power command
        init_peripherals();                                                     //Initialise peripheral on wakeup
      }
    }
  }
}
