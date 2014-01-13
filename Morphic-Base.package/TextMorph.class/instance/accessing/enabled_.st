enabled: aBoolean

	aBoolean 
		ifTrue: [ text makeAllColor: self defaultColor ]
		ifFalse: [ text makeAllColor: Color lightGray ].
		
	self changed