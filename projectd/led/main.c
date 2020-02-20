#include "iostm8l152c6.h"

void Delay(long nCount)
{
  /* Decrement nCount value */
  while (nCount != 0)
  {
    nCount--;
  }
}


int main( void )
{
  PE_ODR = 0;
  PE_DDR_DDR7 = 1;
  PE_CR1_C17 = 1;
  PE_CR2_C27 = 1;
  
  
  while(1)
  {
    PE_ODR_bit.ODR7 = 1;
    Delay(200000);
    PE_ODR_bit.ODR7 = 0;
    Delay(200000);
  }
 
}
