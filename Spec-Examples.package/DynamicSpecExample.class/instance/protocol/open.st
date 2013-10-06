open

	object contents ifNil: [ ^ self openOnNil ].
	object contents isInteger ifTrue: [ ^ self openOnInteger ].
	object contents isString ifTrue: [ ^ self openOnString ]