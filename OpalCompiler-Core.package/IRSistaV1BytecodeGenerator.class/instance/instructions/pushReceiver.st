pushReceiver
	stack push.
	self nextPut: (Bytecodes at: #pushReceiver)