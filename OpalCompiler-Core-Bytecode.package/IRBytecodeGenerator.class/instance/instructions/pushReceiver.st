pushReceiver
	stack push.
	self nextPut: (Bytecodes at: #pushReceiverBytecode)