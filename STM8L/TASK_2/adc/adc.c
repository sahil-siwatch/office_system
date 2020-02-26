#include "stm8l15x.h"
#include <stdio.h>
#include <math.h>

void adc_init(void);
void Delay(long);
void CLK_CONFIG_16MHZ_HSI(void);
void serial_init(void);
void tx_string(char* adc_data);
void voltage(uint16_t);

void main()
{
   uint16_t adcVal;
   CLK_CONFIG_16MHZ_HSI();
   adc_init();
   serial_init();
   char adcString[150];
   int str_len;
   float measuredVol;  

   while(1)
   {
      ADC_SoftwareStartConv(ADC1);
     // Delay(10000);
      while((ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))==RESET);
      adcVal = ADC_GetConversionValue(ADC1);
      //voltage(adcVal);
      measuredVol = (adcVal*2.93)/4096.0;  
      str_len = sprintf(adcString, "The measured Voltage is %d , %f.\n", adcVal, measuredVol);
      tx_string(adcString);
      ADC_ClearFlag(ADC1, ADC_FLAG_EOC);
      Delay(500000);
          adc_init();

     // tx_string("sahil\n");
   }
}

void voltage(uint16_t adcVal){
   float measuredVol;  
   int str_len;
   char adcString[150];
   
   measuredVol = (adcVal*3.3)/4095;
   str_len = sprintf(adcString, "The measured Voltage is %f V, %d\n", measuredVol, adcVal);
   tx_string(adcString);
   
}
void Delay(long nCount)
{
  while (nCount != 0)
  {
    nCount--;
  }
}

void serial_init(void)
{
   CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
   GPIO_ExternalPullUpConfig(GPIOC, GPIO_Pin_3, ENABLE);

   USART_DeInit(USART1);
   USART_Init(USART1, 115200, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, USART_Mode_Tx);
   USART_Cmd(USART1, ENABLE);
}

void adc_init(void)
{
  ADC_DeInit(ADC1);
        GPIO_Init(GPIOF, GPIO_Pin_0, GPIO_Mode_In_FL_No_IT);
	
	ADC_Init(ADC1, ADC_ConversionMode_Single, ADC_Resolution_12Bit, ADC_Prescaler_1);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_FastChannels, ADC_SamplingTime_384Cycles);
	ADC_Cmd(ADC1, ENABLE);
        ADC_ChannelCmd(ADC1, ADC_Channel_24, ENABLE);

}

void tx_string(char* adc_data){
  
  while(*adc_data)
  {
    USART_SendData8(USART1, *adc_data);
    while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
    adc_data++;
  }
}

void CLK_CONFIG_16MHZ_HSI(void){
  CLK_DeInit();
  /* High speed internal clock prescaler: 1 */
  CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);

  /* Select HSE as system clock source */
  CLK_SYSCLKSourceSwitchCmd(ENABLE);
  CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);

  while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)
  {}
  
  CLK_PeripheralClockConfig(CLK_Peripheral_ADC1, ENABLE);

}