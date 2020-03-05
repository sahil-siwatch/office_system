#include "config.h"

/**
* @brief  Initialise ADC to check battery level
* @param  None
* @retval None
*/
void init_adc()
{
  ADC_DeInit(ADC1);
  
  CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);
  
  ADC_Init(ADC1, ADC_ConversionMode_Single, ADC_RESOLUTION, ADC_Prescaler_2);
  
  ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_384Cycles);
}

/**
* @brief  Uninitialise ADC
* @param  None
* @retval None
*/
void uninit_adc()
{
  ADC_DeInit(ADC1);
  
  CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, DISABLE);
}

/**
* @brief  Check ADC value and convert into battery voltage
* @param  None
* @retval None
*/
float get_battery_voltage()
{
  uint16_t adc_result = 0;
  int i = 0;
  float volt = 0.0;
  
  
  ADC_ChannelCmd(ADC1, BAT_STAT_CHANNEL, ENABLE);                                    // enable the channel
  
  ADC_Cmd(ADC1, ENABLE);                                                             // enable ADC
  delay_ms(100);
  for(i=0; i<20; i++)
  {
    ADC_SoftwareStartConv(ADC1);
    while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
    adc_result += ADC_GetConversionValue(ADC1);
  }
  
  ADC_ChannelCmd(ADC1, BAT_STAT_CHANNEL, DISABLE);                                    // disable the channel
  ADC_Cmd(ADC1, DISABLE);
  ADC_DeInit(ADC1);
  
  adc_result = adc_result/i;
  
  /*TODO: Convert adc_result to battery voltage*/
  volt = ((float)adc_result/4096.0)*2.8*2;
  
  return volt;
}