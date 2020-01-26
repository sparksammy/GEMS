void print(char *text) {
	char *mem = (char*)0xb80;
	while (*text) {
		*mem++ = *text++;
		*mem++ = 0x3000;	
	}
}

void clear() {
	char *mem = (char*)0xb80;
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
