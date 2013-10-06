justify: anObject
	anObject isNumber
		ifTrue:[ justify := anObject]
		ifFalse:[
			anObject
				ifTrue:[ justify := 1 ]
				ifFalse:[ justify := 0 ] ].