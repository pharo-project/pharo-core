pushLiteralVariable: object

	| index interval |
	stack push.

	object isVariableBinding
		ifFalse: [self error: 'not a literal variable'].

	(index := literals literalIndexOf: object ifAbsent: 0) > 0 ifFalse: [
		index := self addLiteral: object].

	"single push"
	interval := Bytecodes at: #pushLiteralVariable.
	(index <= interval size) ifTrue: [
		^ self nextPut: (interval at: index)
	].

	"extended push"
	index <= 65536 ifFalse: [self tooManyVars: 'literals'].
	self pushExtA: index - 1 // 256.
	self nextPut: (Bytecodes at: #extendedPushLiteralVariable).
	self nextPut: index - 1 \\ 256.

