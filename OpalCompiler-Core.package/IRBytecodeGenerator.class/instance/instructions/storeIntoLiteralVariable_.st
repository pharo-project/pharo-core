storeIntoLiteralVariable: object

	| index |
	
	index := self addLiteral: object.   

	index <= 64 ifTrue: [
		self nextPut: (Bytecodes at: #extendedStoreBytecode).
		^ self nextPut: (3 "instVar" << 6) + index - 1.
	].
	index <= 256 ifFalse: [self error: 'can''t reference more than 256 inst vars'].
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 7 "storeLiteralVar" << 5.
	self nextPut: index - 1.
