enabled: aBoolean

	aBoolean 
		ifTrue: [ self color: self defaultColor ]
		ifFalse: [ self color: Color lightGray ]