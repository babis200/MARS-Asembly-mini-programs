#Tmhma Dedomenon
.data
str: .asciiz "stay safe\n"
number: .word 10

# Tmhma Kodika
.text
.globl main

main:
li $v0, 4  #print string
la $a0, str
syscall

la $t0,number	# fortose sto t0 th dieythinsi tou number
lw $s1, 0($t0)	# fortose sto s1 ta dedomena sto addres tou t0 + offset(0 se auth th periptvsh)
addi $t2,$s1,10	# t2 = s1 + 10
sw $t2, 0($t0)	#apothikeysh sto addres tou t0 + offset(0 se auth th periptvsh)
syscall

#Termatismos Programmatos

li $v0, 10
syscall