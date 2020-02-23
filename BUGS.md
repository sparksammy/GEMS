Here is a list of all the bugs:

1. Gnome says "Invalid *arch-dependent* ELF magic."
  * We do not know the origin/source of this bug but it has not been fixed yet.
  * Main culprits: build.sh, bootloader.asm, os.c
2. Restart loop bug. (If you get it to boot.)
  * When running GEMS there is a bug that causes the OS to loop.  
  * We do not know the origin/source of this bug but it has not been fixed yet.
  * Main culprit: os.c
  * Update: Potentially fixed in new bootloader.asm of all things, checked code before going to bed, saw the isse, and decided to fix it; learn more <a href="https://stackoverflow.com/questions/30682702/call-function-in-assembly">here.</a> (TLDR: forgot a call function. I, Sparksammy, am in fact stupid.)
