Here is a list of all the bugs:

0. Linker error (Seems it can't find LUA)
  * Does not say "llua not found" unless we do -llua
  * We provide liblua via source for lua5.0 and it seems that it doesn't know the functions, even though we provided the functions via a library? What the fudge?
1. Gnome says "Invalid *arch-dependent* ELF magic." (Probably taken care of, status not known yet)
  * We do not know the origin/source of this bug but it has not been fixed yet. (Might be due to how we compile)
  * Main culprits: build.sh, bootloader.asm, os.c
2. Restart loop bug. (If you get it to boot.)
  * When running GEMS there is a bug that causes the OS to loop.  
  * We do not know the origin/source of this bug but it has not been fixed yet.
  * Main culprit: os.c
  * Update: Partially fixed in new bootloader.asm of all things, checked code before going to bed, saw the issue, and decided to fix it; learn more <a href="https://stackoverflow.com/questions/30682702/call-function-in-assembly" target="_blank">here.</a> (TLDR: forgot a call function. I, Sparksammy, am in fact stupid.)
