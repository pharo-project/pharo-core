instance variables
addInstVarNamed: aString
	| var |
	var:= self factory createInstanceVariableNamed: aString parent: self.
	self addVariable: var in: instanceVariables.
	^var