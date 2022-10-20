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
	
	# solicita ao usuario um numero
	la $a0, print2
	li $v0, 4
	syscall	
	
	# le um numero do buffer de entrada
	li $v0, 5
	syscall
	move $t1, $v0
	
	# soma os valores lidos
	add $t2, $t0, $t1
	
	# imprime o resultado da soma
	move $a0, $t2
	li $v0, 1
	syscall
	
	# finaliza o programa
	li $v0, 10
	syscall
	
.data
print1 :	.asciiz "Digite o primeiro numero: "
print2 :	.asciiz "Digite o segundo numero : "        

