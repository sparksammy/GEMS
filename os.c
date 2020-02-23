//GEMS BY SPARKSAMMY
#include <stdio.h> //needed for delay and DiamondFS
#include <stdlib.h> //needed for delay
#include "time.h" //Microsecond time.
#include "standard_io.h" //I think this might have an issue. Not sure.
#include <string.h> 
#include "Lualibs/lua.h"
#include "Lualibs/lauxlib.h"
#include "Lualibs/lualib.h"
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

void halt() {
	//do nothing... :)
}

void os() {
        lua_State *L = luaL_newstate();
        luaL_openlibs(L);
        luaL_dofile(L, "os.lua");
}

void kern() {
	//extern bootloader();
	//bootloader();
	clear();
	print("GEMS OK, WAITING 10 SECONDS TO TEST TIME...", "\x1B[0m");
	wait(10000000);
	print("TIME OK. STARTING TIME SERVICE...", "\x1B[32m");
	count();
        print("Starting OS...", "\x1B[32m");
	os();
	print("CRASH", 0x0f); //This needs to be here and not below because C i guess. This is outter boundries anyways.
	while (1 == 1) {
		halt();
	}
}
void main() {
	kern();
}
//and we all *shut* down...
