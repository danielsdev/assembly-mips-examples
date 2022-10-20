.text

main:
	# solicita ao usuario um numero
	la $a0, print1
	li $v0, 4
	syscall

	# le um numero do buffer de entrada
	li $v0, 5
	syscall
	move $t0, $v0
	
	# imprime o inteiro
	move $a0, $t0
	li $v0, 1
	syscall
	
	# finaliza o programa
	li $v0, 10
	syscall
	
.data
print1 :	.asciiz "Digite um numero inteiro: "        

