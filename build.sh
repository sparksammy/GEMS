echo "Setting target as 32bit ELF"
export TARGET=i386-elf
echo "Making directories"
mkdir builds
mkdir builds/blocks
mkdir builds/iso
mkdir builds/iso/boot
mkdir builds/iso/boot/grub
echo "Building bootloader"
nasm -f elf32 -o builds/blocks/bl.elf bootloader.asm
echo "Building OS"
/opt/cross/bin/i386-elf-gcc os.c -g -c -ffreestanding -m32 -o builds/blocks/os.elf -I/usr/include -I"lua/src" -I/usr/include/lua5.1/ -I/usr/include/x86_64-linux-gnu/ -ldl -llua50
echo "Transforming ELF files to HEX"
objcopy builds/blocks/bl.elf -O ihex builds/blocks/bl.elf.hex
objcopy builds/blocks/os.elf -O ihex builds/blocks/os.elf.hex
echo "Combining HEX"
cat builds/blocks/bl.elf.hex builds/blocks/os.elf.hex > builds/blocks/combined.elf.hex
echo "Transforming HEX back into ELF"
objcopy -I ihex builds/blocks/combined.elf.hex -O elf32-i386 builds/iso/gems.elf
echo "Creating GRUB config"
echo "set default=0" > builds/iso/boot/grub/grub.cfg
echo "set timeout=0" >> builds/iso/boot/grub/grub.cfg
echo 'menuentry "GEMS" {' >> builds/iso/boot/grub/grub.cfg
echo "  multiboot /gems.elf" >> builds/iso/boot/grub/grub.cfg
echo "  boot" >> builds/iso/boot/grub/grub.cfg
echo "}" >> builds/iso/boot/grub/grub.cfg
echo "Creating ISO"
grub-mkrescue -d /usr/lib/grub/i386-pc -o builds/gems.iso builds/iso
