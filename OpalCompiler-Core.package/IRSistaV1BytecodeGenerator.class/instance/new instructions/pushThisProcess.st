pushThisProcess

	stack push.
	self pushExtA: 1.
	self nextPut: (Bytecodes at: #pushActiveContextOrProcess).
