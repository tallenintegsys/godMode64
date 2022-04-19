section .data
hello:		db 'Hello world!',10    ; string \n not NULL terminated
helloLen:	equ $-hello             ; Length of the string

	global _start
	section .text

_start:
	mov	eax, payload
payload:
	bound	eax, [eax*2+2735736667]
;	mov	eax, 4		; The system call sys_write
;	mov	ebx, 1		; 1 = STDOUT
;	mov	ecx, hello	; ptr to string
;	mov	edx, helloLen	; len (it's a constant not a ptr)
;	int 	0x80		; Call the kernel
;
;
;	mov	eax, 1		; The system call for exit (sys_exit)
;	mov	edx, 0		; Exit with return code of 0 (no error)
;	int 	0x80		; Call the kernel

