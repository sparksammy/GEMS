echo "Making directories"
mkdir builds
mkdir builds/blocks
mkdir builds/iso
mkdir builds/iso/boot
mkdir builds/iso/boot/grub
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl.o bootloader.asm
dd if="linker.ld" > "builds/blocks/kernel.bin"
dd if="builds/blocks/bl.o" >> "builds/blocks/kernel.bin"
echo "Building OS"
gcc os.c -g -c -ffreestanding -m32 -o builds/blocks/os.bin -I/home/$USER/lua/src -I/usr/include/lua5.1/ -I/usr/include/x86_64-linux-gnu/ -ldl -llua5.1
echo "Finalizing OS Compile"
echo "" > "builds/iso/gems.bin"
dd if="builds/blocks/kernel.bin" >> "builds/iso/gems.bin"
dd if="builds/blocks/os.bin" >> "builds/iso/gems.bin"
objcopy --input-target=binary --output-target=elf32-i386  "builds/iso/gems.bin" "builds/iso/gems.elf"
echo "set default=0" > builds/iso/boot/grub/grub.cfg
echo "set timeout=0" >> builds/iso/boot/grub/grub.cfg
echo 'menuentry "GEMS" {' >> builds/iso/boot/grub/grub.cfg
echo "  multiboot /gems.elf" >> builds/iso/boot/grub/grub.cfg
echo "  boot" >> builds/iso/boot/grub/grub.cfg
echo "}" >> builds/iso/boot/grub/grub.cfg
grub-mkrescue -d /usr/lib/grub/i386-pc -o builds/gems.iso builds/iso
