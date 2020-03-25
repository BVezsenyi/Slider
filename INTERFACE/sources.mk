CURR_DIR := ./INTERFACE/

SRC_LIST = \
main_ifc.c \
init_ifc.c \
led_handler_ifc.c \

GENERAL_SRC_LIST := $(GENERAL_SRC_LIST) \
$(addprefix $(CURR_DIR)SRC/,$(SRC_LIST))

INCLUDE := $(INCLUDE) \
-I$(CURR_DIR)HEADER/