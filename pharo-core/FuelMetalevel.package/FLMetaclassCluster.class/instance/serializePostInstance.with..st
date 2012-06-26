serialize/materialize
serializePostInstance: aMetaclass with: anEncoder

	anEncoder encodeReferenceTo: aMetaclass superclass.
	anEncoder encodeString: aMetaclass instanceVariablesString.
	anEncoder encodeUint16: aMetaclass format.
	