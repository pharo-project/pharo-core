analyzing
referencesOf: aClassOrTrait do: aBlock

	aBlock value: aClassOrTrait methodDictionary.
	aBlock value: aClassOrTrait organization.
	aBlock value: aClassOrTrait traitComposition.
	aBlock value: aClassOrTrait basicLocalSelectors.