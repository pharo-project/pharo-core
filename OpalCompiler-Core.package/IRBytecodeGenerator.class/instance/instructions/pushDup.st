pushDup

	stack push.
	self nextPut: (Bytecodes at: #duplicateTopBytecode).
