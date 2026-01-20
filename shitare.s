#Se dau 4 numere a, b, c s , i d. S˘a se calculeze rezultatul operatiei (((a + b + 5) ∗2) ≪c)|d) si sa se afiseze pe ecran.
.data
    a: .word            
    b: .word           
    c: .word            
    d: .word           

.text
.globl main

main:
  
    la t0, a
    lw t1, 0(t0)        
    
    la t0, b
    lw t2, 0(t0)        
    
    la t0, c
    lw t3, 0(t0)       
    
    la t0, d
    lw t4, 0(t0)       
    
    # Calculează (a + b + 5)
    add t5, t1, t2     
    addi t5, t5, 5      
    
   
    slli t5, t5, 1      # t5 = (a + b + 5) * 2 (shift left cu 1 = * 2)
    
   
    sll t5, t5, t3      # t5 = ((a + b + 5) * 2) << c
    
    # OR cu d: ((((a + b + 5) * 2) << c) | d)
    or t5, t5, t4       
    
    
    mv a0, t5          
    li a7, 1            
    ecall
    
    
    li a7, 10           
    ecall
