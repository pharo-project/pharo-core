checkMethod: aMethod 
	(aMethod allLiterals anySatisfy: [ :each | self doesLiteralArrayContainComma: each ]) 
		ifTrue: [ result addMethod: aMethod ]