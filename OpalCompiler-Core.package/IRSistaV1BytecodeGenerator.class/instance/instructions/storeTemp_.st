storeTemp: index

	index <= 64 ifFalse: [self tooManyVars: 'temps (>64)'].
	self nextPut: (Bytecodes at: #extendedStoreTemporaryVariable).
	self nextPut: index - 1.
