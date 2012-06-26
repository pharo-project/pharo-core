ansi gettable
skipTo: anObject
	
	| result |
	[self atEnd or: [result := (self next = anObject)]] whileFalse.
	^ result