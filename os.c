//GEMS BY SPARKSAMMY
#include <stdio.h> //needed for delay and DiamondFS
#include <stdlib.h> //needed for delay
#include "time.h" //Microsecond time.
#include "standard_io.h" //I think this might have an issue. Not sure.
#include <string.h> 
#include "lua/include/lua.h"
#include "lua/include/lauxlib.h"
#include "lua/include/lualib.h"
//#include "crashhand.h" //Comming Soon(TM)
//#include "sticky.h" //module deprecated. use new stick function and new function called delay.
//#include "diamondfs.h" //BORKED - USE AT YOUR OWN RISK
typedef struct mboot_memmap {
	unsigned int size;
	unsigned int base_addr_low,base_addr_high;
	unsigned int type;
} mboot_memmap_t;

typedef struct multiboot_info {
	unsigned int mmap_addr;
	unsigned int mmap_length;
} multiboot_info;


typedef mboot_memmap_t mmap_entry_t;

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
	lua_State *L;
        L = luaL_newstate();
        luaL_openlibs(L);
        lua_dofile(L, "os.lua");
}

void kern() {
	//extern bootloader();
	//bootloader();
	clear();
	print("GEMS OK, WAITING 10 SECONDS TO TEST TIME...", 0x10);
	wait(10000000);
	print("TIME OK. STARTING TIME SERVICE...", 0x10);
	count();
        print("Starting OS...", 0x10);
	os();
	print("CRASH", 0x0f); //This needs to be here and not below because C i guess. This is outter boundries anyways.
	while (1 == 1) {
		halt();
	}
}
int main(struct multiboot_info* mbd, unsigned int magic) {
	mmap_entry_t* entry = mbd->mmap_addr;
	while(entry < mbd->mmap_addr + mbd->mmap_length) {
		entry = (mmap_entry_t*) ((unsigned int) entry + entry->size + sizeof(entry->size));
	}
	kern();
}
//and we all *shut* down...
