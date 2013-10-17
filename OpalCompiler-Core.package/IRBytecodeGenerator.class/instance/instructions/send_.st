send: selector

	| index nArgs |
	
	nArgs := selector numArgs.
	stack pop: nArgs.

	SpecialSelectors at: selector ifPresent: [:i |
		^ self nextPut: (Bytecodes at: #bytecodePrimAdd) + i].

	index := self addLiteral: selector.
	(index <= 16 and: [nArgs <= 2]) ifTrue: [
		"short send"
		^ self nextPut: (Bytecodes at: #sendLiteralSelectorBytecode) first + (nArgs * 16) + index - 1
	].
	(index <= 32 and: [nArgs <= 7]) ifTrue: [
		"extended (2-byte) send"
		self nextPut: (Bytecodes at: #singleExtendedSendBytecode).
		^ self nextPut: nArgs * 32 + index - 1
	].
	(index <= 64 and: [nArgs <= 3]) ifTrue: [
		"new extended (2-byte)"
		self nextPut: (Bytecodes at: #secondExtendedSendBytecode).
		^ self nextPut: nArgs * 64 + index - 1
	].
	"long (3-byte) send"
	self nextPut: (Bytecodes at: #doubleExtendedDoAnythingBytecode).
	self nextPut: nArgs.
	self nextPut: index - 1.
