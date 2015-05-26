testForwardJumps
	
	asm
		jmp: #label1;
		label: #label1.

	self assert: asm bytes =  #(16rEB 0 ) asByteArray.
		
