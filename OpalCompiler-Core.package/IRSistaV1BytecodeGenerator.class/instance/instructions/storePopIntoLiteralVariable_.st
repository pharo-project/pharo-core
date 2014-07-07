storePopIntoLiteralVariable: assoc

	| index |
	
	assoc isVariableBinding
		ifFalse: [self error: 'not a literal variable'].
	
	index := self addLiteral: assoc.

	"extended push"
	index <= 65536 ifFalse: [self tooManyVars: 'literals'].
	self pushExtA: index - 1 // 256.
	self nextPut: (Bytecodes at: #extendedStorePopLiteralVariable).
	self nextPut: index - 1 \\ 256.

	self popTop