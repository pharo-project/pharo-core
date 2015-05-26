checkMethod: aMethod 
	aMethod methodClass isMeta 
		ifTrue: [ ^ self ].
	(matcher executeTree: aMethod ast initialAnswer: false) 
		ifTrue: [ result addMethod: aMethod ]