
#Afisati numarul  de divizori ai unui numar intreg stpcat in memorie si apoi o lista cu acestia(”Num˘arul 6 are 4 divizori: 1, 2, 3, 6”).
.data
    numar: .word        
main:
    # Încarcă numărul din memorie
    la t0, numar
    lw s0, 0(t0)        # s0 = numărul dat
    
    # Contorizează divizorii
    li s1, 0            # s1 = contor divizori
    li t1, 1            # t1 = divizor curent
    
contor_loop:
    bgt t1, s0, afisare    # Dacă t1 > numar, termina numărarea
    
    # Verifică dacă t1 este divizor
    rem t2, s0, t1     
    bnez t2, 8          # Dacă rest != 0, sare peste incrementare
    
    
    addi s1, s1, 1
    
    addi t1, t1, 1      # Urmatorul divizor
    j contor_loop

afisare:
    # Afișează numărul de divizori
    mv a0, s1
    li a7, 1
    ecall
    

    li a7, 10
    ecall
