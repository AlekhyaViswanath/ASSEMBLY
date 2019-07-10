extern printf
extern scanf

section .data
        m1: db "Enter the number ",0
        m2: db "Enter the factor",0
        m3: db "Multiplication Table of " ,0
	integer: dd 0
        factor: dd  0
	in: dd "%d" ,10,0  
        out: db "%s" ,10,0   
        x: db "X" ,0 
        y: db "=" ,0   
        char1: db "" ,10,0                                               
	char2: db "" ,10,0
	
	
	
	
section .text
	global main
	main:
	push ebp
	mov ebp, esp

        push m1
        push out
        call printf
      
        push m2
        push out
        call printf

        push integer
        push in
        call scanf

        push factor
        push in
        call scanf

	mov edx, [factor]
	mov ebx, [integer]

	table1:

	push char1
	push out
	call printf

	push m3 
	push out
	call printf

	push dword [integer]
	push in
	call printf

	push char2
	push out
	call printf

	
	multiply:
	mov edx, [factor]
	mov ebx, [integer]
	imul ebx,edx 

	table2:

	push dword [integer]
	push in
	call printf

	push x
	call printf

	push dword [factor]
	push in
	call printf

	push y
	call printf

	push ebx
	push in
	call printf

	push char1
	push out
	call printf

	inc dword [factor]
	mov edx, [factor] 
	mov ebx, [integer]
	cmp edx, 10 
	jle multiply

	updation:
	
	inc dword [integer]
	mov edx, 1
	mov [factor],edx
	mov ebx, [integer]
	cmp ebx, 12
	jle table1

	leave
	ret
