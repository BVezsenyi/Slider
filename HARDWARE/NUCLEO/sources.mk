TARGET_DIR=./TARGET/
TARGET_NAME:=nucleo
HEX_FILE:= $(TARGET_DIR)$(TARGET_NAME).hex
EXE_FILE = $(TARGET_DIR)$(TARGET_NAME).elf

CURR_DIR:=./HARDWARE/NUCLEO/

STARTUP:=startup_stm32f303xe.s

GENERAL_ASM_LIST:= \
$(CURR_DIR)SRC/$(STARTUP) \

SRC_LIST = \
init.c \
led_handler.c \
time_handler.c \
system_stm32f3xx.c \
stm32f3xx_hal_gpio.c \
stm32f3xx_hal_rcc.c \
stm32f3xx_hal_rcc_ex.c \
stm32f3xx_hal.c \
stm32f3xx_hal_cortex.c \
stm32f3xx_hal_flash.c \
stm32f3xx_hal_flash_ex.c \
stm32f3xx_it.c \

GENERAL_SRC_LIST := $(GENERAL_SRC_LIST) \
$(addprefix $(CURR_DIR)SRC/,$(SRC_LIST))

INCLUDE+=-I$(CURR_DIR)HEADER/

CPU:= -mcpu=cortex-m4

C_FLAGS+= \
-std=gnu99 \
-g \
-O2 \
-Wall \
-mlittle-endian \
-mthumb \
-mthumb-interwork \
$(CPU) \
-fsingle-precision-constant \
-Wdouble-promotion \
--specs=nosys.specs \
-DSTM32F303xE= \
-DUSE_HAL_DRIVER= 

LD_SCRIPT:= -T$(CURR_DIR)STM32F303RETx_FLASH.ld

LD_FLAGS:=

CP_FLAGS:= \

CP_FORMAT:= \
binary