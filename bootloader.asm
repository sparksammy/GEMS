global sthrow
extern kern
mov ax, 9ch
mov ss, ax ;cannot be written directly
mov sp, 4094d
mov ax, 7c0h
mov ds, ax ;cannot be written directly
MODULEALIGN       equ     1<<0
MEMINFO           equ     1<<1
FLAGS             equ     MODULEALIGN | MEMINFO
MAGIK             equ     0x1BADB002
CHECKSUM          equ     -(MAGIK + FLAGS)
 
section .text

align 4
dd MAGIK
dd FLAGS
dd CHECKSUM

loader:
	call kern

exit:
	hlt
	jmp exit
times 510-($-$$) db 0
dw 0xAA55
