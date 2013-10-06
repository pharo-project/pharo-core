referencesOf: anObject do: aBlock

	super referencesOf: anObject do: aBlock.
	self variablePartReferencesOf: anObject do: aBlock. 

