#include <stdio.h>

void open(char file) {
	fp = fopen("file.txt", "w+");
}

void fprint(char text) {
	fprintf(fp, "%s %s %s %d", text);
}

void close() {
	fclose(fp);
}
