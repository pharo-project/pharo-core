storeArrayValuesOn: aStream

	self isTransparent ifTrue: [
		^ aStream space].
	super storeArrayValuesOn: aStream.

	aStream space.
	(self alpha roundTo: 0.001) storeOn: aStream.

