 .data

.text
    .global main

factorial:
    push %ebp
    mov %esp, %ebp
    
    cmp $1, %eax
    jg $+6
    mov $1, %eax
    pop %ebp
    ret
    
    push %eax
    sub $1, %eax
    call factorial
    pop %ebx
    mull %ebx
    pop %ebp
    ret
