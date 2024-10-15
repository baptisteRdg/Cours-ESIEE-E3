nasm -f elf32 asm_io.asm
nasm -f elf32 E10.asm
ld -o E10 -melf_i386 -e main E10.o asm_io.o
