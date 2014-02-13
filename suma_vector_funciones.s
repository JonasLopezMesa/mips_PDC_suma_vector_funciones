size = 4
			.data
vector1:	.word	2,3,5,6,8,1,3,2,5,9
s:			.word	0

			.text
main:
			la		$a0, vector1
			li		$a1, 0
			jal		suma
			sw		$v0, s
			
			
			li		$v0, 10
			syscall
			
			
#FIN DEL PROGRAMA PRINCIPAL

suma:		li $t3, 36
			
			
			move	$s0, $a0
			move	$s1, $a1
			move	$t1, $zero
						
			paso1:		lw		$s2, vector1($t1)
						addu	$s1, $s2, $s1
						addi	$t1, $t1, 4
						
						ble		$t1, $t3, paso1
						
						move	$v0, $s1
						jr		$ra