storeInstVar: index

	(index <= 64 and: [forceLongForm not])  ifTrue: [
		self nextPut: (Bytecodes at: #extendedStoreBytecode).
		^ self nextPut: (0 "instVar" << 6) + index - 1.
	].
	index <= 256 ifFalse: [self error: 'can''t reference more than 256 inst vars'].
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 5 "storeInstVar" << 5.
	self nextPut: index - 1.
