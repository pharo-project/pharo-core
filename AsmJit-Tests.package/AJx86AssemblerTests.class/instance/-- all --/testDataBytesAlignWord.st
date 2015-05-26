testDataBytesAlignWord
	
	|data|
	data := self setUpDataBytesAlign: 2.
	
	self assert: asm bytes equals: #[144   0 16r12].