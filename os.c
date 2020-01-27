#include <stdio.h> //needed for delay and DiamondFS
#include <stdlib.h> //needed for delay
#include <time.h> //Time since Jan. 1st 1970
#include "standard_io.h" //I think this might have an issue. Not sure.
//#include "crashhand.h" //Comming Soon(TM)
#include "sticky.h"
//#include "diamondfs.h" //BORKED - USE AT YOUR OWN RISK
void kern() {
	//extern bootloader();
	//bootloader();
	clear();
	print("GEMS OK", 0x10);
	stick(); //stick when we need it, so we can stick
	print("CRASH", 0x0f); //This needs to be here and not below because C i guess. This is outter boundries anyways.
}
//and we all *shut* down...
