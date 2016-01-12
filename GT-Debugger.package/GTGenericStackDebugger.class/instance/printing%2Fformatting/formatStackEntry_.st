formatStackEntry: aContext

	^ Text 
		string: (self printStackEntry: aContext )
		attributes: (self textAttributesForStackEntry: aContext) 
	 