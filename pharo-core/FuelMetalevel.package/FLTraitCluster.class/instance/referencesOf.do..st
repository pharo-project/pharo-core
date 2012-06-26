analyzing
referencesOf: aTrait do: aBlock

	super referencesOf: aTrait do: aBlock.

	aBlock value: aTrait classSide.
	aBlock value: aTrait basicEnvironment.
	aBlock value: aTrait basicCategory.
	aBlock value: aTrait name.
