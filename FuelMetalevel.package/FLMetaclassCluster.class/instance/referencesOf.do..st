analyzing
referencesOf: aMetaclass do: aBlock

	super referencesOf: aMetaclass do: aBlock.
	
	aBlock value: aMetaclass superclass.