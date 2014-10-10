checkMethod: aMethod 
	(matcher executeTree: aMethod parseTree initialAnswer: 0) >= self longMethodSize 
		ifTrue: [ result addMethod: aMethod ]