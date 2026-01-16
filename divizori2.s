#Realizati o procedura divizori(int x) care realizeaza afisarea de mai sus si intoarce numarul de divizori.

.data
    numar: .word       

main:
    # Încarcă numărul din memorie
    la t0, numar
    lw a0, 0(t0)       
    
    
    jal ra, divizori
    
    li a7, 10
    ecall

divizori:
    # Salvează registrele pe stivă
    addi sp, sp, -16
    sw s0, 0(sp)
    sw s1, 4(sp)
    sw t1, 8(sp)
    sw t2, 12(sp)
    
    mv s0, a0           
    
    # Contorizează divizorii
    li s1, 0            
    li t1, 1            
    
    bgt t1, s0, divizori_afis
    
    # Verifică dacă t1 este divizor
    rem t2, s0, t1      
    bnez t2, 8         
    
   
    addi s1, s1, 1
    
    addi t1, t1, 1     
    j -20               
    
divizori_afis:
    # Afișează numărul de divizori
    mv a0, s1
    li a7, 1
    ecall
    
    mv a0, s1           # Return numărul de divizori în a0
    
    lw s0, 0(sp)
    lw s1, 4(sp)
    lw t1, 8(sp)
    lw t2, 12(sp)
    addi sp, sp, 16
  
