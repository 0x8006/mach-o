.global _main
.align 4

_main:
	mov X0, #1 // stdout
	adr X1, output
	mov X2, len
	mov X3, X2
	mov X16, #4
	svc #0x80   // 

	mov X0, #0
	mov X16, #1
	svc #0x80

output: .ascii "hello, hello, hello\n" // store 

len = . - output // calcutlate 
