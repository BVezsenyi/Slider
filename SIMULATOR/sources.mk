CURR_DIR := ./SIMULATOR/

TARGET_DIR=./TARGET/
TARGET_NAME:=simulator
EXE_FILE = $(TARGET_DIR)$(TARGET_NAME).elf

SRC_LIST = \
init.c \
led_handler.c \

GENERAL_SRC_LIST := $(GENERAL_SRC_LIST) \
$(addprefix $(CURR_DIR)SRC/,$(SRC_LIST))


INCLUDE := $(INCLUDE) \
-I$(CURR_DIR)HEADER/

C_FLAGS+= \
-std=gnu99 \
-g \
-Wall \

CP_FLAGS:= \
CP_FORMAT:= \

