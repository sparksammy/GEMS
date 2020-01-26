echo "Making directories"
mkdir builds
mkdir builds/blocks
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl.o bootloader.asm
echo "Building OS"
gcc os.c -g -c -ffreestanding -m32 -o builds/blocks/os.o -nostdlib -nostartfiles -nodefaultlibs
echo "Finalizing Compiling"
ld -T linker.ld -m elf_i386 -o builds/gems.bin builds/blocks/bl.o builds/blocks/os.o
