+= anObject
	^anObject isNumber
		ifTrue:[self primAddScalar: anObject asFloat]
		ifFalse:[self primAddArray: anObject]