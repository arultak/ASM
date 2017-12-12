

 extern printf
 section .text
 global main
  main:
       push ebp
       mov ebp,esp
       mov eax, 10
       mov ebx, 20
       add eax,ebx
       push eax
       push msg
       call printf
       add esp,8
            
    leave 
    ret
  
  section .data
  msg db "Value = %d", 0xa
       
   
