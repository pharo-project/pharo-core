serializeReferencesOf: anObject with: anEncoder
	anEncoder encodePositiveInteger: anObject size.
	anObject keysAndValuesDo: [ :key :value |
		anEncoder encodeReferenceTo: key.
		anEncoder encodeReferenceTo: value.
	]
	