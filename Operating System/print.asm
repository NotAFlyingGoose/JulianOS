; function for printing strings
; usage:
; mov bx, MyString
; call PrintString
; %include "print.asm"
; MyString:
; 	db 'Hello World', 0

PrintString:
	mov ah, 0x0e
	.Loop:
		cmp [bx], byte 0
		je .Exit
		mov al, [bx]
		int 0x10
		inc bx
		jmp .Loop
	.Exit:
		ret