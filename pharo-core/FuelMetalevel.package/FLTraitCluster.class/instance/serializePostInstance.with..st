serialize/materialize
serializePostInstance: aTrait with: anEncoder

	anEncoder encodeReferenceTo: aTrait classSide.
	anEncoder encodeReferenceTo: aTrait basicCategory.
	anEncoder encodeReferenceTo: aTrait name.
	anEncoder encodeReferenceTo: aTrait basicEnvironment.
