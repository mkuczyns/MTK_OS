# Compiling the Kernel

1. arm-none-eabi-gcc -mcpu=cortex-a53 -fpic -ffreestanding -c boot.S -o boot.o
2. arm-none-eabi-gcc -mcpu=cortex-a53 -fpic -ffreestanding -std=gnu99 -c kernel.c -o kernel.o -O2 -Wall -Wextra
3. arm-none-eabi-gcc -T linker.ld -o myos.elf -ffreestanding -O2 -nostdlib boot.o kernel.o