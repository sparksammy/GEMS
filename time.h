//Made to create time at 1 MHZ (Microseconds)
//by Sparksammy
int time = 1;

void count() {
	while(1) {
		time++;
	}
}

void wait(int microseconds) {
	int futureTime = microseconds + time;
	while(futureTime > time) {
		//do nothing
	}
}

int getTime() {
	return time;
}

int setTime(int sec) {
	time = sec;
}
