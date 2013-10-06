includes: anObject

	anObject ifNil: [ ^includesNil ].
	^(array at: (anObject largeIdentityHash + 1))
		ifNil: [ false ]
		ifNotNil: [ :list | list fuelPointsTo: anObject ]