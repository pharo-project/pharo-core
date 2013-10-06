testJumps

	self 
		assert: [:a|
			a 
				label: #label1;
				nop;
				nop;
				nop;
				jz: #label1.
		] bytes: #[144 144 144 16r74 251 "-5 asByte"].
	
	
	
	asm 
		reset; noStackFrame;
		label: #label1.
		126 timesRepeat: [ asm nop ].
		asm jz: #label1.
	self assert: (asm bytes size = 128).


	self 
		assert: [:a |
			a
				reset; noStackFrame;
				label: #label1;
				nop;
				nop;
				nop;
				jmp: #label1.
		] bytes: #[144 144 144 235 251 ].
	
	self 
		assert: [:a |
			a 
				reset; noStackFrame;
				jmp: #label1;
				label: #label1.
		] bytes: #[ 16rEB 0 ].
		
