checkMethod: aMethod 
	aMethod parseTree allDefinedVariables do: 
		[ :each | 
		each first isLowercase ifFalse: 
			[ result
				addMethod: aMethod;
				addSearchString: each ] ]