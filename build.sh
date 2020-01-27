echo "Making directories"
mkdir builds
mkdir builds/blocks
mkdir builds/iso
mkdir builds/iso/boot
mkdir builds/iso/boot/grub
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl.o bootloader.asm
echo "Building OS"
gcc os.c -g -c -ffreestanding -m32 -o builds/blocks/os.o -nostdlib -nostartfiles -nodefaultlibs
echo "Finalizing OS Compile"
ld -T linker.ld -m elf_i386 -o builds/iso/gems.bin builds/blocks/bl.o builds/blocks/os.o
echo "multiboot /gems.bin" > builds/iso/boot/grub/grub.cfg
echo "boot" >> builds/iso/boot/grub/grub.cfg
grub-mkrescue -o builds/gems.iso builds/iso
