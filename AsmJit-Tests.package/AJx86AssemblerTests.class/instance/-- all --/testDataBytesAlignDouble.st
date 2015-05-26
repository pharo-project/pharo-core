testDataBytesAlignDouble
	
	|data|
	data := self setUpDataBytesAlign: 4.
	
	self assert: asm bytes equals: #[144   0 0 0 16r12].