// Using registers/////
/*#include "iostm8l152c6.h"


void Delay(long nCount);
int main( void )
{
  PE_DDR_DDR7 = 1;
  PC_DDR_DDR1 = 0;
  
  PE_CR1_C17 = 1;  // output as push pull
  PE_CR2_C27 = 1; // output speed upto 10MHz
  
  PC_CR1_C11 = 1;  // input with pull-up
  PC_CR2_C21 = 0; // external interrupt disabled
  
  while(1)
  {
    if(PC_IDR_IDR1 == 0){
      //while(!(PC_IDR&(1<<1))==0);
      PE_ODR_ODR7 = 1;
      Delay(10000);
     // PE_ODR_ODR7 = 0;
    }
    else PE_ODR_ODR7 = 0;
  }
 
}
void Delay(long nCount)
{

  while (nCount != 0)
  {
    nCount--;
  }
}
*/

// Using Library

#include "stm8l15x.h"
#include "stm8l15x_gpio.h"

void Delay(long nCount);

int main()
{
  GPIO_DeInit(GPIOE);
  GPIO_DeInit(GPIOC);
  
  GPIO_Init(GPIOE, GPIO_Pin_7, GPIO_Mode_Out_PP_Low_Fast);
  GPIO_Init(GPIOC, GPIO_Pin_1, GPIO_Mode_In_PU_No_IT);

  while (1)
  {
    if(GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1) == FALSE)
    {
      GPIO_WriteBit(GPIOE, GPIO_Pin_7, 1);
      Delay(10000);
      //GPIO_WriteBit(LED_GPIO_PORT, LED_GPIO_PINS, 0);
      //Delay(10000);
    }   
    else GPIO_WriteBit(GPIOE, GPIO_Pin_7, 0);

}
}
void Delay(long nCount)
{

  while (nCount != 0)
  {
    nCount--;
  }
}
