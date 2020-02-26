// USART transmit
#include "stm8l15x.h"
#include <stdio.h>
#include <math.h>

void serial_init(void);
void CLK_CONFIG_16MHZ_HSI(void);
void Delay(long);
void tx_string(char*);

void main(){
    CLK_CONFIG_16MHZ_HSI();
    serial_init();
    int str_len;
    uint16_t i = 256;
    char str[80];

   str_len = sprintf(str, "The value is %d\n", i);
    while(1)
    {
      str_len = sprintf(str, "The value is %d\n", i);
       tx_string(str);
       Delay(500000);
       i++;
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
void tx_string(char* name){
  
  while(*name)
  {
    USART_SendData8(USART1, *name);
    while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET);
    name++;
  }
}