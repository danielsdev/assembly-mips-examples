#sobrescreve um valor na memoria
.data
var1:	.word	23		# declara uma variavel chamada var1 com valor inicial 23

	.text
main:
	lw	$t0, var1	# carrega var1 para $t0
	li	$t1, 5		# $t1 = 5   ("load immediate")
	sw	$t1, var1	# armazena o valor de $t1 na memoria:  var1 = $t1