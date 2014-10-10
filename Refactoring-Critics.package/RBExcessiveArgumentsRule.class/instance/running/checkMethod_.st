checkMethod: aMethod 
	aMethod numArgs >= self argumentsCount
		ifTrue: [ result addMethod: aMethod ]