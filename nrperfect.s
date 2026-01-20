#Sa se defineasca procedura perfect(x), cu x numar natural. Un numar este perfect daca este egal cu suma divizorilor sai pana la jumatate. Exemplu: 6 = 1 + 2 + 3; 28 = 1 + 2+ 4 + 7 + 14;
.data
.main

    mov  eax, x
    mov  ecx, eax
    shr  ecx, 1          # ecx = x / 2

    xor  esi, esi        
    mov  ebx, 1          

loop:
    cmp  ebx, ecx
    jg   finish

    mov  eax, x
    xor  edx, edx
    div  ebx            

    cmp  edx, 0
    jne  next

    add  esi, ebx        

next_i:
    inc  ebx
    jmp  loop

finish:
    mov  eax, 0
    cmp  esi, x
    jne  exit

    mov  eax, 1          # numar perfect

exit:
    ret
