#include "standard_io.h"
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
