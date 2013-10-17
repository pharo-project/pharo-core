installLayoutVariable
	(ClassDescription allInstVarNames includes: #layout) ifTrue: [ ^ self ].
	ClassDescription addInstVarNamed: #layout.