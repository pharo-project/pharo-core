storeIntoLiteralVariable: object

	| index |
	index := self addLiteral: object.   
	index <= 65536 ifFalse: [self tooManyVars: 'literals'].
	self pushExtA: index - 1 // 256.
	self nextPut: (Bytecodes at: #extendedStoreLiteralVariable).
	self nextPut: index - 1 \\ 256.