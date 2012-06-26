serialize/materialize
materializeInstanceWith: aDecoder

	| keyName ownerClass |
	ownerClass := aDecoder nextEncodedReference.
	keyName := aDecoder nextEncodedReference.
	^ownerClass classPool associationAt: keyName