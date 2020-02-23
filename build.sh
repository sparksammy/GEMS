echo "Making directories"
mkdir builds
mkdir builds/blocks
mkdir builds/iso
mkdir builds/iso/boot
mkdir builds/iso/boot/grub
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl.bin bootloader.asm
echo "Building OS"
gcc os.c -g -c -ffreestanding -m32 -o builds/blocks/os.bin -I/home/$USER/lua/src -I/usr/include/lua5.1/ -I/usr/include/x86_64-linux-gnu/ -ldl -llua5.1
echo "Finalizing OS Compile"
wine cmd /c 'copy /b "builds/blocks/bl.bin" + "builds/blocks/os.bin" "builds/iso/gems.bin"'
echo "multiboot /gems.bin" > builds/iso/boot/grub/grub.cfg
echo "boot" >> builds/iso/boot/grub/grub.cfg
grub-mkrescue -d /usr/lib/grub/i386-pc -o builds/gems.iso builds/iso
