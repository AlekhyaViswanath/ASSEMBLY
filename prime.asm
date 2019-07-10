extern printf
extern scanf

section .data
	integer: dd 0
	in: db "%d" ,0
        out: db "%s",0
	m1: db "Enter the number ",10,0
	m2: db "The number is a prime no. ",0
	m3: db "The number is not a prime no. ",0

section .text
	global main
	main:
	push ebp
	mov ebp,esp

	push m1
        push out
	call printf

	push integer
	push in
	call scanf

	mov ecx,[integer]

	check:
	inc ecx
	mov edx,0
	mov eax, [integer]
	mov ebx, ecx
	div ebx

	cmp ebx,[integer]	
	jmp prime

	cmp edx, 0	
	jne check	
	jmp notprime


	prime:  

	push m2
        push out
	call printf
	jmp exit

	notprime:	

	push m3
        push out
	call printf

	exit:
	leave
	ret


