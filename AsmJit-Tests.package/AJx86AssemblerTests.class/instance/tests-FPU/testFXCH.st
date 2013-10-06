testFXCH

	self 
		assert: [ :a|
		a fxch "the same as: asm fxch: asm ST1" ]
		bytes: #[	2r11011001 2r11001001 ]
	