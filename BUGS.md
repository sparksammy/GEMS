Here is a list of all the bugs:

~~0. Linker error (Seems it can't find LUA)~~
  ~~* Does not say "llua not found" unless we do -llua~~
  ~~* We provide liblua via source for lua5.0 and it seems that it doesn't know the functions, even though we provided the functions via a library? What the fudge?~~
1. GRUB says "Invalid *arch-dependent* ELF magic." (STILL NOT FIXED :-1:)
  * We do not know the origin/source of this bug but it has not been fixed yet. (Might be due to how we compile)
  * Main culprits: build.sh, bootloader.asm, os.c
