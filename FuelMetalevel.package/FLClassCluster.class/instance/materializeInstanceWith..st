serialize/materialize
materializeInstanceWith: aDecoder

	| aMetaclass |
	aMetaclass := aDecoder nextEncodedReference.
	^aMetaclass new