send: selector toSuperOf: behavior

	| index nArgs |
	nArgs := selector numArgs.
	stack pop: nArgs.

	self addLastLiteral: behavior binding.  
	index := self addLiteral: selector.
	
	index <= 65536 ifFalse: [self tooManyVars: 'literals'].
	nArgs > 15 ifTrue: [ self tooManyVars: 'arguments' ].
	self pushExtA: index - 1 // 32.
	self pushExtA: nArgs // 8.
	self nextPut: (Bytecodes at: #extendedSuperSendVariable).
	self nextPut: (index - 1 \\ 32) * 8 + (nArgs \\ 8).