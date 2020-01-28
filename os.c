//GEMS BY SPARKSAMMY
#include <stdio.h> //needed for delay and DiamondFS
#include <stdlib.h> //needed for delay
#include "time.h" //Microsecond time.
#include "standard_io.h" //I think this might have an issue. Not sure.
//#include "crashhand.h" //Comming Soon(TM)
//#include "sticky.h" //module deprecated. use new stick function and new function called delay.
//#include "diamondfs.h" //BORKED - USE AT YOUR OWN RISK
int sticker = 0;

void stickB() {
	//do nothing
}

void stick() {
	sticker = 1;
	while(sticker > 0) {
		stickB();
	}
}

void unstick() {
	sticker = 0;
}

void kern() {
	//extern bootloader();
	//bootloader();
	clear();
	print("GEMS OK, WAITING 10 SECONDS TO TEST TIME...", 0x10);
	wait(10000000);
	print("TIME OK. STARTING TIME SERVICE...", 0x10);
	count();
	stick(); //stick when we need it, so we can stick
	print("CRASH", 0x0f); //This needs to be here and not below because C i guess. This is outter boundries anyways.
}

//and we all *shut* down...
