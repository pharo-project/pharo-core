error handling
parseErrorNode: aMessageString
	| token sourceString |
	sourceString := source copyFrom: self errorPosition to: source size.
	token := RBValueToken value: sourceString start: self errorPosition.
	^ RBParseErrorNode 
		errorMessage: aMessageString token: token