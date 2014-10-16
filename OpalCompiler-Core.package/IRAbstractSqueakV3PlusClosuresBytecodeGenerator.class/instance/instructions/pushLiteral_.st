pushLiteral: object

	| index interval |
	stack push.
	(index := SpecialConstants identityIndexOf: object ifAbsent: 0) > 0 ifTrue: [
		^ self nextPut: (Bytecodes at: #pushConstantTrueBytecode) + index - 1].

	(index := literals literalIndexOf: object ifAbsent: 0) > 0 ifFalse: [
		index := self addLiteral: object].

	interval := Bytecodes at: #pushLiteralConstantBytecode.
	(index <= interval size) ifTrue: [
		^ self nextPut: (interval at: index)
	].
	index <= 64 ifTrue: [
		self nextPut: (Bytecodes at: #extendedPushBytecode).
		^ self nextPut: 2 "lit constant" << 6 + index - 1
	].
	self checkTooManyLiterals: index.
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: 3 "lit constant" << 5.
	self nextPut: index - 1.
