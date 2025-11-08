.data 
A: .word 5
B: .word 2
C: .word 0

.code 

ld $t0, A($zero)
ld $t1, B($zero)
beq $t0, $zero,fin
slt $t2, $t0, $t1
bnez $t2, else 
dmulti $t3, $t0, 2
sd $t3, C($zero)
else: daddi $t3, $t1, $zero 
st $t3, C($zero)
j termina 
fin: daddi $t3, $zero, $zero 
sd $t3, C($zero)
termina: halt 