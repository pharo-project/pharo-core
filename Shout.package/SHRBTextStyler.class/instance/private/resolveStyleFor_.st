resolveStyleFor: aVariableNode

	aVariableNode binding ifNil: [^#default].
	aVariableNode isArg ifTrue: [ ^#methodArg].
	aVariableNode isTemp ifTrue: [ ^#tempVar].
	aVariableNode isInstance ifTrue: [ ^#instVar]. 
	aVariableNode isUndeclared ifTrue: [ ^#invalid]. 
	self flag: 'todo: see if its incompleteIdentifier'.
	^#invalid.