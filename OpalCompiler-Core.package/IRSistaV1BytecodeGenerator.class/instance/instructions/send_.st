send: selector

	| index nArgs |
	
	nArgs := selector numArgs.
	stack pop: nArgs.

	SpecialSelectors at: selector ifPresent: [:i |
		^ self nextPut: (Bytecodes at: #sendArithmeticSelector) first + i].

	index := self addLiteral: selector.
	(index <= 16 and: [nArgs <= 2]) ifTrue: [
		"short send"
		^ self nextPut: (Bytecodes at: #sendLiteralSelector) first + (nArgs * 16) + index - 1
	].
	
	index <= 65536 ifFalse: [self tooManyVars: 'literals'].
	nArgs > 15 ifTrue: [ self tooManyVars: 'arguments' ].
	self pushExtA: index - 1 // 32.
	self pushExtA: nArgs // 8.
	self nextPut: (Bytecodes at: #extendedSend).
	self nextPut: (index - 1 \\ 32) * 8 + (nArgs \\ 8).
