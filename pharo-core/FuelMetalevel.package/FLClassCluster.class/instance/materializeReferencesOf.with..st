serialize/materialize
materializeReferencesOf: aClass with: aDecoder

	super materializeReferencesOf: aClass with: aDecoder.

	aClass classPool: aDecoder nextEncodedReference.
	aClass sharedPools: aDecoder nextEncodedReference.
	aClass environment: aDecoder nextEncodedReference.
	aClass basicSubclasses: aDecoder nextEncodedReference.
	
	Class class instSize + 1 to: aClass class instSize 
		do: [ :index | aClass instVarAt: index put: aDecoder nextEncodedReference ]