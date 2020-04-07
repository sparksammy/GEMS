# <img src="gems.png" alt="Logo" width="5%"/> GEMS
GEMS - GEMS is ESSENTIALLY MAYBE SPINEL
*Note: This is not Spinel, we are just trying to be better. ;)*
Note: GEMS is in *really early development*, and will probably be that way for ***quite a while.***

Seriously... You can only boot to GRUB and we are trying to fix that...

However, here are the dependencies (in ubuntu) in case you *want* to compile this

~~sudo apt install -y libc6-dev-i386 grub-common nasm gcc liblua5.1-0-dev liblua50:i386 liblua50-dev:i386 libc-dev:i386 linux-libc-dev:i386 libc6-dev:i386 qemu-system-i386 grub-pc-bin lua-socket xorriso gcc-9-multilib libc6-dev-i386 libc6-x32 gcc-multilib libc6-dev-x32 libc6-dev linux-libc-dev~~

Update: You might want to install these and build LUA from source:
sudo apt install -y build-essential grub-common nasm gcc git liblua50:i386 liblua5.1-0-dev qemu-system-i386 grub-pc-bin lua-socket xorriso gcc-8-multilib gcc-arm-none-eabi libgcc-7-dev-i386-cross lua50

(Hint, download LUA 5.0 source here: https://www.lua.org/ftp/lua-5.0.tar.gz)

*(Yes, we are using grub and lua. No I, Sparksammy, don't really care; the source code is in a different place afterall, so it should be compliant with our licenses. Please don't sue if it is, just fork and send a pull request to remove the offending code, and fixing the current code that relies on current libraries.)*

# Other files

BUGS.md is for listing all the different bugs and their origins/source and status.

NOTES.md is for listing everything we have learned so far.
