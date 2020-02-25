// USART transmit
#include "stm8l15x.h"

void serial_init(void);
void CLK_CONFIG_16MHZ_HSI(void);
void Delay(long);
void my_func(char*);

char* name = "sahil";

void main(){
    CLK_CONFIG_16MHZ_HSI();
    serial_init();
    while(1)
    {
       my_func(name);
       Delay(500000);
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

void CLK_CONFIG_16MHZ_HSI(void){
  CLK_DeInit();
  /* High speed internal clock prescaler: 1 */
  CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);

  /* Select HSE as system clock source */
  CLK_SYSCLKSourceSwitchCmd(ENABLE);
  CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);

  while (CLK_GetSYSCLKSource() != CLK_SYSCLKSource_HSI)
  {}
  
  CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);

}

void Delay(long nCount)
{
  while (nCount != 0)
  {
    nCount--;
  }
}
void my_func(char* name){
  uint8_t i = 0;
  while(i != '\0')
  {
    USART_SendData8(USART1, i);
    while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
    i++;
  }
}