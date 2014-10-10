checkMethod: aMethod 
	aMethod methodClass isMeta 
		ifTrue: [ ^ self ].
	(matcher executeTree: aMethod parseTree initialAnswer: false) 
		ifTrue: [ result addMethod: aMethod ]