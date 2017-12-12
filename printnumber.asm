

 extern printf
 
 section .text
 
 global main
  main:
       push ebp
       mov ebp,esp
       
   loop:
       push DWORD[i]
       push msg
       call printf
       add esp, 8
       inc DWORD[i]
       cmp DWORD[i],10
       jle loop
   
        
    leave 
    ret
  
  section .data
   i : dd 1
  msg db "%d", 10,0
   
