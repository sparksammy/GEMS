#include <time.h>
int brk = 0;
void unstick() {
	brk = 0;
}

void delay(unsigned int s) {
	time_t g = s + time(NULL);
	while (g > time(NULL)); {
		//do nothing
	}
}

void stick() {
	brk = 1;
	while (brk < 0) {
		delay(2500);
	}
}
