#
# Copyright © 2024 inpyjama.com. All Rights Reserved.
# Author: Piyush Itankar <piyush@inpyjama.com>
#

# Variables for utilities
GCC       = arm-none-eabi-gcc
LD        = arm-none-eabi-ld
READELF   = arm-none-eabi-readelf

TARGET = main

# variable for linker scrtip, map file and the readelf output
LD_SCRIPT   = $(TARGET).ld
LD_MAP      = $(TARGET).map
READELF_OUT = $(TARGET).txt

# object files our exploration depends on
OBJ = main.o

# this is executed on running `make`
all: $(READELF_OUT)
	@

# generates the log
$(READELF_OUT): $(TARGET).elf
	$(READELF) -a $^ > $@

# output file
main.elf: $(OBJ) $(LD_SCRIPT)
	$(LD) -s -Bsymbolic -gc-sections -T$(LD_SCRIPT) -static -Map=$(LD_MAP) -o $@ $(OBJ)

%.o: %.c
	$(GCC) -Wall -nostdlib -fno-builtin -ffreestanding -c $<

clean:
	rm -f *.o *.elf *.txt *.map *.log
