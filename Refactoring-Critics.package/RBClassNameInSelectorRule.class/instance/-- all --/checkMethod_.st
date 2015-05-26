checkMethod: aMethod 
	(aMethod methodClass isMeta and: 
		[ (aMethod selector 
			indexOfSubCollection: aMethod methodClass soleInstance name
			startingAt: 1) > 0 ]) ifTrue: 
		[ result addMethod: aMethod ]