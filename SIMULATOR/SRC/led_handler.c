#include "stdio.h"
#include "led_handler.h"

void led_init( void )
{
    printf("I'm %s\n", __func__  );
}

void led_on( LED_ID led_id )
{
    printf("I'm %s\nMy Argument is: %d\n", __func__ , led_id );
}

void led_off( LED_ID led_id )
{
    printf("I'm %s\nMy Argument is: %d\n", __func__ , led_id );
}

