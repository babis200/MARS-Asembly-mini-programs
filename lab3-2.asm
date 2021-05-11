.data

str: .asciiz "hello"


.text
.globl main
main:

la $t0, str
lb $s1, 2($t0)
li $v0, 11
syscall

li $v0, 10
syscall