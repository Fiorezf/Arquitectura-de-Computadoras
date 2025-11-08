.data 
A: .word 3
B: .word 2
S: .word 0
P: .word 0
D: . word 0

.code 
ld $t0, A($zero)
ld $t1. B($zero)
dadd $t2, $t0, $t1 
sd $t2, S($zero)
dmul $t3, $t0, $t1 
daddi $t4, $t3, 2
sd $t4, P($zero) 
dmul $t5, $t0, $t0
ddiv $t6, $t5, $t1 
sd $t6, D(zero)
halt 