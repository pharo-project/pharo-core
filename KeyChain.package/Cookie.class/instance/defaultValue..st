accessing
defaultValue: anObject

	contents = defaultValue ifTrue: [ contents := anObject ].
	defaultValue := anObject