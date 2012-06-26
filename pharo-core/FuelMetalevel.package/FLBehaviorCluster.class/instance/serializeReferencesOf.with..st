serialize/materialize
serializeReferencesOf: aClassOrTrait with: anEncoder

	anEncoder encodeReferenceTo: aClassOrTrait methodDictionary.
	anEncoder encodeReferenceTo: aClassOrTrait organization. 
	anEncoder encodeReferenceTo: aClassOrTrait basicLocalSelectors.
	anEncoder encodeReferenceTo: aClassOrTrait traitComposition.