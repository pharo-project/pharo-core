private-parsing
parseTemps
	| args |
	args := OrderedCollection new.
	self useVariable: RBTemporaryNode during: [
		[currentToken isIdentifier] whileTrue: [args add: self parseVariableNode]].
	^args