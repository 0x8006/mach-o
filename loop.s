.global _start
.align 2

_start:
	mov X8, #0x9
	mov X9, #0x0

_loop:
	cmp X8, X9
	b.eq _exit
	bl _asciiPrint
	add X9, X9, #0x1
	b _loop

_exit:
	bl _asciiPrint
	mov X0, #0x0
	mov X16, #0x1
	svc #0x80
	
_asciiPrint:
	add X11, X9, #0x30
	mov X10, #0xA
	lsl X10, X10, #8
	add X10, X10, X11
	str X10, [sp, #0x0]

	mov X0, #0x1
	mov X1, sp
	mov X2, #0x2
	mov X16, #0x4
	svc #0x80
	ret 

