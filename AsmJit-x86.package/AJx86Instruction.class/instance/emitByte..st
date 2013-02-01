code generation
emitByte: byte

	self assert: byte isByte.
	machineCode nextPut: byte 
