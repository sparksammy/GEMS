ENTRY(loader)
SECTIONS {
	. = 0x10;
	.text : { *(.text) }
	
}
