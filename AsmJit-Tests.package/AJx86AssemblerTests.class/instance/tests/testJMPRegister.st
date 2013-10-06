testJMPRegister
	
	self 
		assert: [  :assembler |
			assembler jmp: assembler EAX ]
		bytes: #[ 16rFF 2r11100000 ].
		
	self 
		assert: [  :assembler |
			assembler jmp: assembler ECX ]
		bytes: #[ 16rFF 2r11100001 ].
		
	self 
		assert: [  :assembler |
			assembler jmp: assembler EDX ]
		bytes: #[ 16rFF 2r11100010 ]