checkMethod: aMethod 
	(aMethod methodClass organization categoryOfElement: aMethod selector) = Protocol unclassified ifTrue: 
		[ result addMethod: aMethod ]