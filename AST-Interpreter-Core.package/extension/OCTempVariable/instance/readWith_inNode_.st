readWith: anInterpreter inNode: aVariableNode
	self isArg ifTrue: [ 
		| definingScope argIndex |
		definingScope := aVariableNode binding definingScope.
		argIndex := definingScope node argumentNames indexOf: name.
		^ anInterpreter readArgumentAt: argIndex node: aVariableNode
	].
	"If it is not an arg, it is a normal temporary"
	^ anInterpreter readTemporaryAt: -1 named: name