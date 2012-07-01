*Kernel-Classes
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' Super: ';
		print: self isSuperclassModified;
		nextPutAll: ' TraitComposition: ';
		print: self isTraitCompositionModified;
		nextPutAll: ' InstVars: ';
		print: self areInstVarsModified;
		nextPutAll: ' ClassVars: ';
		print: self areClassVarsModified;
		nextPutAll: ' SharedPools: ';
		print: self areSharedPoolsModified.