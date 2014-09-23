checkMethod: aContext 

	self badSelectors do: [ :badSelector | 
		(aContext compiledMethod sendsSelector: badSelector)
			 ifTrue: [
				self halt.
				result
					addClass: aContext selectedClass
					selector: aContext selector;
					searchStrings: self badSelectors ] ]
	