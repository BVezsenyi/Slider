#ifndef _LED_HANDLER_H_
#define _LED_HANDLER_H_

#include "common_defines.h"
#include "stm32f3xx_hal.h"

void led_init    ( void );
void led_on      ( LED_ID );
void led_off     ( LED_ID );

#endif /* _LED_HANDLER_H_ */