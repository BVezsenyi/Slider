COMPILER_PREFIX:=

TARGET_DIR=./TARGET/
TARGET_NAME:=simulator
EXE_FILE = $(TARGET_DIR)$(TARGET_NAME).elf

CURR_DIR:=./SIMULATOR/

GENERAL_SRC_LIST+=$(CURR_DIR)SRC/sim_api.c \
$(CURR_DIR)SRC/sim_init.c \
$(CURR_DIR)SRC/sim_led_handler.c

INCLUDE+=-I./SIMULATOR/HEADER/

C_FLAGS+= \
-std=gnu99 \
-g \
-Wall \

CP_FLAGS:= \
CP_FORMAT:= \

