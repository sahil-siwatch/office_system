// USART transmit
#include "stm8l15x.h"

void USART_Init(void);
void CLK_CONFIG_16MHZ_HSI(void);
void Delay(long);

void main(){
    CLK_CONFIG_16MHZ_HSI();
    USART_Init();
    while()
    {
       USART_SendData8(USART1, "Hello World\n");
       Delay(500000);
    }
}

void USART_Init(void)
{
   CLK_PeripheralClockConfig(CLK_Peripheral_USART1, ENABLE);
   GPIO_ExternalPullUpConfig(GPIOA, GPIO_Pin_2, ENABLE);

   USART_DeInit(USART1);
   void USART_Init(USART1, 9600, USART_WordLength_8b, USART_StopBits_1, USART_Parity_No, USART_Mode_Tx);
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