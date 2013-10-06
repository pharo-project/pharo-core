testRegistersOf: asm

	| numRegs |
	numRegs := asm numGPRegisters.
	
	0 to: numRegs-1 do: [:i |
		self assert: (asm reg8: i) size = 1.
		self assert: (asm reg8: i) index = i.
		
		self assert: (asm reg16: i) size = 2.
		self assert: (asm reg16: i) index = i.
		
		self assert: (asm reg32: i) size = 4.
		self assert: (asm reg32: i) index = i.

		self assert: (asm isGPNRegister: (asm nReg: i)).
	
		asm is64BitMode ifTrue: [
			self assert: (asm reg64: i) size = 8.
			self assert: (asm reg64: i) index = i.
			]	
	].
	