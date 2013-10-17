checkMethod: aContext 
	| method |
	method := aContext compiledMethod.
	((method refersToLiteral: trueBinding) or: [ method refersToLiteral: falseBinding ]) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector.
		result searchStrings: #('True' 'False' ) ]