basicCheck: aMethod 

	^ self badSelectors anySatisfy: [ :badSelector | 
		aMethod sendsSelector: badSelector ]