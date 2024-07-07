.section .data
	#       0123456790123456789

msg:
	.string "Privet, mir"
	.byte 0

.section .text

.globl _start

_start:

	mov $1, %rax  # 1 = write
	mov $1, %rdi  # syscall arg0 1 = stdout
	mov $msg, %rsi # syscall arg1
	mov $12, %rdx # syscall arg2 string len 
	syscall
	mov $60, %rax # 60 = exit
	mov $0, %rdi # arg1 exit code
	syscall

	# spqcivitatum user variant:
	#mov $4, %eax
	#mov $1, %ebx
	#mov msg, %ecx
	#mov $12, %rdx
	#int $0x80
