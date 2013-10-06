checkMethod: aContext 
	aContext compiledMethod literals do: 
		[ :literal | 
		(literal isVariableBinding and: [ literal key notNil ]) ifTrue: 
			[ ((Smalltalk globals 
				associationAt: literal key
				ifAbsent: [  ]) == literal or: 
				[ (Undeclared 
					associationAt: literal key
					ifAbsent: [  ]) == literal ]) ifFalse: 
				[ (aContext selectedClass bindingOf: literal key) == literal ifFalse: 
					[ result 
						addClass: aContext selectedClass
						selector: aContext selector.
					result addSearchString: literal key ] ] ] ]