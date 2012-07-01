running
checkMethod: aContext 
	| literals |
	literals := matcher
		executeTree: aContext parseTree
		initialAnswer: Set new.
	literals do: [ :literal |
		(self checkLiteral: literal) do: [ :each |
			result
				addSearchString: each;
				addClass: aContext selectedClass selector: aContext selector ] ]