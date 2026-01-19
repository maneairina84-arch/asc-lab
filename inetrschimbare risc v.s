# Se dau doua numere naturale x si y. S˘a se scrie un program care sa realizeze interschimbarea
lor
.data
x:  .word 0     
y:  .word 0

    .text
    .globl main
main:
   
    lw t0, x       
    lw t1, y       

  
    mv t2, t0      
    mv t0, t1      
    mv t1, t2     

  
    sw t0, x       
    sw t1, y       


    li a7, 10     
    ecall
