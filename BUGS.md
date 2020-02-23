Here is a list of all the bugs:

1. Gnome says "Invalid *arch-dependent* ELF magic."
  * We do not know the origin/source of this bug but it has not been fixed yet.
  * Main culprits: build.sh, bootloader.asm, os.c
2. Restart loop bug. (If you get it to boot.)
  * When running GEMS there is a bug that causes the OS to loop.  
  * We do not know the origin/source of this bug but it has not been fixed yet.
  * Main culprit: os.c
