checkMethod: aMethod 
	(matcher executeTree: aMethod ast initialAnswer: 0) >= self longMethodSize 
		ifTrue: [ result addMethod: aMethod ]