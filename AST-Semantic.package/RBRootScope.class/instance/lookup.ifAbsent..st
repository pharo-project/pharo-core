querying
lookup: aString ifAbsent: aBlock
	^ bindings at: aString ifAbsent: aBlock