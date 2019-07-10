extern printf
extern scanf

section .data
        m1: db "Enter the number: ",10,0
	m2: db "The Fibonacci is: : ",0
        x: dd 1 ,0
	y: dd 1 ,0
	z: dd 0 ,0
	integer: dd 0
	in: db "%d" ,0
	

section .text
	global main
	main:
	push ebp
	mov ebp, esp

	push m1
	call printf

	push integer
	push in
	call scanf

	mov eax, [x]
	fib:
	mov ebx,eax

	inc dword [z]
	mov edx, [z]
	mov ecx,[y]
	mov eax,[y]
	add ecx,ebx
	mov [y],ecx
	cmp edx, [integer]
	jne fib
	

	print:

	push m2
	call printf

	push ebx
	push in 
	call printf

	

	leave
	ret

