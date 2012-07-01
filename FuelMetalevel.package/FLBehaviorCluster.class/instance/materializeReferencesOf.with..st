serialize/materialize
materializeReferencesOf: aClassOrTrait with: aDecoder

	aClassOrTrait methodDictionary: aDecoder nextEncodedReference.
	aClassOrTrait organization: aDecoder nextEncodedReference.
	aClassOrTrait basicLocalSelectors: aDecoder nextEncodedReference.
	aClassOrTrait traitComposition: aDecoder nextEncodedReference.