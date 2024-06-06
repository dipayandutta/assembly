	global		_start

	section		.text

_start:	mov	rax,1		;system call for write
	mov	rdi,1		;file handle 1 is stdout
	mov 	rsi,message	;address of string to output
	mov	rdx,13		;number of bytes
	syscall			; invoke OS to do the write
	mov	rax,60		;system call for exit
	xor	rdi,rdi		;exit code 0
	syscall			; invoke OS to exit

	section	.data
message:	db	"Hello World", 10


;------------------------------------
;Command to Compile and run
;-----------------------------------
; apt install nasm
; nasm -felf64 HelloWrold.asm && ld HelloWorld.o && ./a.out
