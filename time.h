//Made to create time at 1 MHZ (Microseconds)
//by Sparksammy
int time = 1;

void count() {
	static long long int i; 
	static int state = 0; 
		switch (state) 
		{ 
		case 0: /* start of function */
		while (1 == 1) {
			//do nothing
		}
		/* Returns control */
		case 1:; /* resume control straight 
		after the return */
		}
		state = 0; 
		return 0; 
	
}

void wait(int secs) {
	while (time < secs) {
		//do nothing
	}
}

