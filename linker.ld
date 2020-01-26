ENTRY (_start)
SECTIONS {
	. = 0x00100000;
	.text ALIGN(0x10) : {
		*.text
	}
	.bss ALIGN(0x10) : {
		*.bss
	}
	.rodata ALIGN(0x10) : {
		*.rodata
	}
	.data ALIGN(0x10) : {
		*.data
	}
}
