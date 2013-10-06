storeTemp: index

	index <= 64 ifFalse: [self error: 'too many temps (>64)'].
	self nextPut: (Bytecodes at: #extendedStoreBytecode).
	self nextPut: (1 "temp" << 6) + index - 1.
