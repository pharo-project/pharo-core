testDataDouble
	
	| data|
	
	asm nop.
	data := asm dd: #[16r78 16r56 16r34 16r12].
	
	self assert: asm bytes equals: #[144   16r78 16r56 16r34 16r12].