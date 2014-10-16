storePopIntoLiteralVariable: assoc

	| index |
	
	index := self addLiteral: assoc.
	
	index <= 64 ifTrue: [
		stack pop.
		self nextPut: (Bytecodes at: #extendedStoreAndPopBytecode).
		^ self nextPut: (3 "temp" << 6) + index - 1.
	].
	self checkTooManyLiterals: index.
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 7 "storeLiteralVar" << 5.
	self nextPut: index - 1.
	self popTop
