testInterpret
	|foo bar|
	
	"will fail : goal"
	<expectedFailure>
	
	foo := 1.
	foo := foo + 1.
	self assert: foo = 2.
	self assert: (thisContext copy isKindOf: Context).
	Smalltalk switchInterpreterTo: thisContext copy asASTInterpreterContext.
	foo := foo + 2.
	self assert: foo = 4.
	self assert: (thisContext copy isKindOf: AIContext).