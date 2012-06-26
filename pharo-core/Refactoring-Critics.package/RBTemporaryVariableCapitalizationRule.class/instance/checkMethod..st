running
checkMethod: aContext 
	aContext parseTree allDefinedVariables do: 
		[ :each | 
		each first isLowercase ifFalse: 
			[ result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: each ] ]