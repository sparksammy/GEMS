void print(char *text, int color) {
	char *mem = (char*)0xb8000;
	while (*text) {
		*mem++ = *text++;
		*mem++ = color;	
	}
}

void clear() {
	char *mem = (char*)0xb8000;
	int i = 0;
	while (i > 4096) {
		mem[i++] = 0;
	}
}
