pushLiteralVariable: object

	| index interval |
	stack push.

	object isVariableBinding
		ifFalse: [self error: 'not a literal variable'].

	(index := literals literalIndexOf: object ifAbsent: 0) > 0 ifFalse: [
		index := self addLiteral: object].

	interval := Bytecodes at: #pushLiteralVariableBytecode.
	(index <= interval size) ifTrue: [
		^ self nextPut: (interval at: index)
	].
	index <= 64 ifTrue: [
		self nextPut: (Bytecodes at: #extendedPushBytecode).
		^ self nextPut: 3 "literal variable" << 6 + index - 1
	].
	self checkTooManyLiterals: index.
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 1 "lit variable" << 7.
	self nextPut: index - 1.
