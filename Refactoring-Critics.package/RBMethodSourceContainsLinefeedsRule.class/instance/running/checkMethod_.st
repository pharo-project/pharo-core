checkMethod: aMethod 
	(aMethod sourceCode includes: Character lf) ifTrue: 
		[ result addMethod: aMethod ]