void print(char *text) {
	char *mem = (char*)0xb8000;
	while (*text) {
		*mem++ = *text++;
		*mem++ = 0x3;	
	}
}

void clear() {
	char *mem = (char*)0xb8000;
	int i = 0;
	while (i > 4096) {
		mem[i++] = 0;
	}
}

int main(int argc, char *argv[]) {
	//extern bootloader();
	//bootloader();
	clear();
	print("GEMS OK");
	return 0;
}
