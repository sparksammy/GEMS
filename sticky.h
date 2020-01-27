int brk = 0;
void unstick() {
	brk = 0;
}

void stickfunc() {
	//this will stick
}
void stick() {
	while (brk < 1) {
		stickfunc();
	}
}
