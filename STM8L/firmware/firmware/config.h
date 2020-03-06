#include "stm8l15x.h"
#include "stm8l15x_gpio.h"
#include "stm8l15x_adc.h"
#include "stm8l15x_tim2.h"
#include "stm8l15x_tim3.h"
#include "stm8l15x_exti.h"
#include "stm8l15x_clk.h"
#include "gpio.h"
#include "adc.h"
#include "pwm.h"
#include "clock.h"
#include "timer.h"

/******************* Configuration Parameters *******************/
#define PWM_PERCENTAGE          100                                               //PWM Percentage for LED (0-100)

#define DEBOUNCING_DELAY        500                                            //Debouncing Delay for button press

#define ON_TIME                 20                                            //ON Time for LED Blink
#define OFF_TIME                300                                             //OFF Time for LED Blink


/******************* Do Not Change Below This *******************/
#define CONTACT1_PIN            GPIO_Pin_4
#define CONTACT1_EXTI_PIN       EXTI_Pin_4
#define CONTACT1_PORT           GPIOB

#define CONTACT2_PIN            GPIO_Pin_5
#define CONTACT2_EXTI_PIN       EXTI_Pin_5
#define CONTACT2_PORT           GPIOB

#define CHG_STAT_PIN            GPIO_Pin_1
#define CHG_STAT_PORT           GPIOB

#define FULL_CHARGE_STAT_PIN    GPIO_Pin_7    // Newly added (delete comment after testing)
#define FULL_CHARGE_STAT_PORT   GPIOB         // Newly added (delete comment after testing)

#define BAT_STAT_PIN            GPIO_Pin_2
#define BAT_STAT_PORT           GPIOB
#define BAT_STAT_CHANNEL        ADC_Channel_16

#define PWM_PIN                 GPIO_Pin_0
#define PWM_PORT                GPIOB

#define LED_PIN                 GPIO_Pin_6
#define LED_PORT                GPIOB

#define ADC_RESOLUTION          ADC_Resolution_12Bit  

#define DISCHARGED_BATTERY_VOLTAGE 3.2                                          //3.2V is considered Low Battery
#define FULLCHARGED_BATTERY_VOLTAGE 4.2

#define COUNT                   16000                                           //16MHz clock, 16K count => 1KHz frequency
