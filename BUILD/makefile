OBJ_DIR=OBJ
SRC_DIR=SRC

AR:=$(COMPILER_PREFIX)ar
CC:=$(COMPILER_PREFIX)gcc
CP:=$(COMPILER_PREFIX)objcopy
SZ:=$(COMPILER_PREFIX)size

GENERAL_OBJ_LIST = $(foreach var, $(GENERAL_SRC_LIST), $(subst $(SRC_DIR),$(OBJ_DIR),$(var:.c=.o) ) )
GENERAL_ASM_OBJ_LIST = $(foreach var, $(GENERAL_ASM_LIST), $(subst $(SRC_DIR),$(OBJ_DIR),$(var:.s=.o) ) )

ifeq ($(EXE_FILE),)
EXE_FILE=default.exe
endif

DIR_GUARD=@mkdir -p $(@D)
PRINTER = echo "$(CC) $@"

#.SILENT:

.PHONY: clean $(VALID_TARGET_LIST)

clean: 
	rm -rf $(dir $(GENERAL_OBJ_LIST)) $(ADDITIONAL_CLEAN)

.SECONDEXPANSION:

$(GENERAL_OBJ_LIST): %.o: $$(subst $(OBJ_DIR),$(SRC_DIR),$$*).c
	$(PRINTER)
	$(DIR_GUARD)
	$(CC) $(INCLUDE)  $(C_FLAGS) -c $< -o $@

$(GENERAL_ASM_OBJ_LIST): %.o: $$(subst $(OBJ_DIR),$(SRC_DIR),$$*).s
	$(PRINTER)
	$(DIR_GUARD)
	$(CC) $(INCLUDE)  $(C_FLAGS) -c $< -o $@


$(EXE_FILE): $(GENERAL_OBJ_LIST) $(GENERAL_ASM_OBJ_LIST)
	$(PRINTER)
	$(DIR_GUARD)
	$(CC) $(C_FLAGS) $(LD_SCRIPT) $(LD_FLAGS) $^ -o $@
	$(SZ) $@

$(HEX_FILE): $(EXE_FILE)
	$(CP) $(CP_FLAGS) -O $(CP_FORMAT) $< $@

$(VALID_TARGET_LIST): $(EXE_FILE) $(HEX_FILE)