CROSS-CC=aarch64-elf-gcc
CROSS-AS=aarch64-elf-as
CROSS-LD=aarch64-elf-ld

all: kernel.elf

kernel.elf: my_main.o writestr.o start.o bare.ld
	$(CROSS-LD) -T bare.ld -o kernel.elf start.o writestr.o my_main.o

my_main.o: my_main.c
	$(CROSS-CC) -O0 -fno-stack-protector -c -o my_main.o my_main.c

writestr.o: writestr.s
	$(CROSS-AS) -o writestr.o writestr.s

start.o: start.s
	$(CROSS-AS) -o start.o start.s

clean:
	rm -f kernel.elf my_main.o writestr.o start.o

.PHONY: all clean
