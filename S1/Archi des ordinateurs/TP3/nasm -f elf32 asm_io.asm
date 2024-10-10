nasm -f elf32 asm_io.asm
nasm -f elf32 E6.asm
ld -o E6 -melf_i386 -e main E6.o asm_io.o