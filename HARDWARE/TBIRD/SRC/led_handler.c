#include <stdio.h>
#include "led_handler.h"


void led_init( void )
{
    DDRD=0xF0;
}

void led_on( LED_ID led_id )
{
    PORTD = 0xF0;
}

void led_off( LED_ID led_id )
{
    PORTD = 0x00;
}

