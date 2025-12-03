.global _start

.section .data
msg: .ascii "this is a string.\n"
len = . - msg

.section .text
_start:
	mov X0, #0x1
	ldr x1, =msg // load address of the message
	mov X2, #len 
	mov X8, #64
	svc 0
	
	mov X8, #93
	svc 0

