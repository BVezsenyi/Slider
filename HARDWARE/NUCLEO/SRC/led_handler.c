#include "led_handler.h"

void led_init( void )
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  __HAL_RCC_GPIOA_CLK_ENABLE();

  HAL_GPIO_WritePin( GPIOA, GPIO_PIN_5, GPIO_PIN_RESET);

  GPIO_InitStruct.Pin = GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

void led_on( LED_ID led_id )
{
    HAL_GPIO_WritePin( GPIOA, GPIO_PIN_5, GPIO_PIN_SET );
}

void led_off( LED_ID led_id )
{
    HAL_GPIO_WritePin( GPIOA, GPIO_PIN_5, GPIO_PIN_RESET );
}

