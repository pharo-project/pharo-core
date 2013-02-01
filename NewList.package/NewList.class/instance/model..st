accessing
model: anObject
	
	model contents ifNotNil: [:m | m removeDependent: self ].
	anObject ifNotNil: [anObject addDependent: self ].

	model contents: anObject