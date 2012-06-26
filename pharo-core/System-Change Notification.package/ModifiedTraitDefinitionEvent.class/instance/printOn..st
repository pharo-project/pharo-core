printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' TraitComposition: ';
		print: self isTraitCompositionModified