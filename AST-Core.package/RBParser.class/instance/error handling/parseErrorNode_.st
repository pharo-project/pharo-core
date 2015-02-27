parseErrorNode: aMessageString
	| token sourceString |
	currentToken isError 
		ifTrue: [ ^ RBParseErrorNode errorMessage: currentToken cause value: currentToken value at: currentToken start ].
	sourceString := source copyFrom: self errorPosition to: source size.
	token := RBValueToken value: sourceString start: self errorPosition.
	^ RBParseErrorNode
		errorMessage: aMessageString value: token value at: token start