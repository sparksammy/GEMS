echo "Making directories"
mkdir builds
mkdir builds/blocks
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl1.o bl1.asm
echo "Building OS"
gcc os.c -m32 -o builds/blocks/os.o -nostdlib -nostartfiles -nodefaultlibs
echo "Building bootloader part 2"
nasm -f elf32 -o builds/blocks/bl2.o bl2.asm
echo "Finalizing Compiling"
ld -T linker.ld -m elf_i386 -o builds/gems.img builds/blocks/bl1.o builds/blocks/os.o builds/blocks/bl2.o
