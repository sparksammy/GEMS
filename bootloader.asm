MAGIC_NUMBER equ 0x1BADB002     ; define the magic number constant
FLAGS        equ 0x0            ; multiboot flags
CHECKSUM     equ -MAGIC_NUMBER  ; calculate the checksum
                                    ; (magic number + checksum + flags should equal 0)

section .text:                  ; start of the text (code) section
align 4                         ; the code must be 4 byte aligned
	dd MAGIC_NUMBER             ; write the magic number to the machine code,
        dd FLAGS                    ; the flags,
        dd CHECKSUM                 ; and the checksum
	
global exit
extern kern
mov ax, 9ch
mov ss, ax ;cannot be written directly
mov sp, 4094d
mov ax, 7c0h
mov ds, ax ;cannot be written directly
MODULEALIGN       equ     1<<0
MEMINFO           equ     1<<1


loader:
	call kern

exit:
	hlt
	jmp exit
times 510-($-$$) db 0
dw 0xAA55
