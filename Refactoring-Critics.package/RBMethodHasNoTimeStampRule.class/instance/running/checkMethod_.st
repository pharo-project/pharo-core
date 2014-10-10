checkMethod: aMethod 
	aMethod timeStamp isEmpty ifTrue: 
		[ result addMethod: aMethod ]