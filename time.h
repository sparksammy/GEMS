//Made to create time at 1 MHZ (Microseconds)
//by Sparksammy
int time = 1;

void count() {
	while(1 == 1) {
		time++;
	}
}

void wait(int microseconds) {
	int futureTime = microseconds + time;
	while(1 == 1) {
		if (futureTime <= time) {
			break;
		}
	}
}

int getTime() {
	return time;
}

int setTime(int sec) {
	time = sec;
}
