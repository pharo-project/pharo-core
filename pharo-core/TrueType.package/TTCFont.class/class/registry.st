other
registry

	^ Registry isNil
		ifTrue: [Registry := IdentityDictionary new]
		ifFalse: [Registry].
