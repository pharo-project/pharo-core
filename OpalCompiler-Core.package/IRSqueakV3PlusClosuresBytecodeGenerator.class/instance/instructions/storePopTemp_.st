storePopTemp: index

	| interval |
	stack pop.

	interval := Bytecodes at: #storeAndPopTemporaryVariableBytecode.
	index <= interval size ifTrue: [
		^ self nextPut: (interval at: index )
	].
	index <= 64 ifTrue: [
		self nextPut: (Bytecodes at: #extendedStoreAndPopBytecode).
		^ self nextPut: (1 "temp" << 6) + index - 1.
	].
	self tooManyVars: 'temps (>64)'