.data

	print1 :	.asciiz "Digite o numero PI: "
	zerof :	.float 0.0

.text

	lwc1 $f4, zerof
	
	# exibe uma mensagem
	la $a0, print1
	li $v0, 4
	syscall

	# le a entrada do usuario
	li $v0, 6
	syscall
	
	# exibe o valor digitado
	la $v0, 2
	add.s $f12, $f0, $f4
	syscall
	
  	
