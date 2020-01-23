mkdir builds
mkdir builds/blocks
fasm bl1.asm builds/blocks/bl1.img
gcc os.c -o builds/blocks/os.img
fasm bl2.asm builds/blocks/bl2.img

cat builds/blocks/bl1.img builds/blocks/os.img builds/blocks/bl2.img > builds/gems.img
