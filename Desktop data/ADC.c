#include "stm8l15x.h"

void adc_init(void);
void Delay(long);
void my_func(char*);
void CLK_CONFIG_16MHZ_HSI(void);
void serial_init(void);

void main()
{
   uint16_t adcVal;
   CLK_CONFIG_16MHZ_HSI();
   adc_init();
   serial_init();

   while(1)
   {
      ADC_SoftwareStartConv(ADC1);
      while((ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))==RESET);
      adcVal = ADC_GetConversionValue(ADC1);

   }
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
	ADC_Init(ADC1, ADC_ConversionMode_Single, ADC_Resolution_12Bit, ADC_Prescaler_1);
	ADC_SamplingTimeConfig(ADC1, ADC_Group_SlowChannels, ADC_SamplingTime_4Cycles);
	ADC_Cmd(ADC1, ENABLE);
    ADC_ChannelCmd(ADC1, ADC_Channel_18, ENABLE);

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