checkMethod: aMethod 

	self badSelectors do: [ :badSelector | 
		(aMethod sendsSelector: badSelector)
			 ifTrue: [
				result
					addMethod: aMethod;
					searchStrings: self badSelectors ] ]
	