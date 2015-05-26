model: anObject
	
	model value ifNotNil: [:m | m removeDependent: self ].
	anObject ifNotNil: [anObject addDependent: self ].

	model value: anObject