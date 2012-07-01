as yet unclassified
registry

	^ Registry isNil
		ifTrue: [Registry := IdentityDictionary new]
		ifFalse: [Registry].
