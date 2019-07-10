extern printf
extern scanf


section	.data
   
   msg :db "Enter the numbers:",10,0
   integer1: dd 0
   integer2: dd 0
   in: db "%d",10,0
   out: db "%s",10,0


section .text

   global main  
   main:	
   push ebp
   mov ebp,esp


   push msg
   push out
   call printf

   push integer1
   push in
   call scanf

   push integer2
   push in
   call scanf
    
  
   mov eax,[integer1]
   mov ebx,[integer2]
   add eax,ebx
   push eax
   push in
   call printf

   leave
   ret



