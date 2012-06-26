serialize/materialize
serializeReferencesOf: aClass with: anEncoder

	super serializeReferencesOf: aClass with: anEncoder.

	anEncoder encodeReferenceTo: aClass basicClassPool. 
	anEncoder encodeReferenceTo: aClass basicSharedPools. 
	anEncoder encodeReferenceTo: aClass basicEnvironment.
	anEncoder encodeReferenceTo: aClass basicSubclasses.
 
	Class class instSize + 1 to: aClass class instSize 
		do: [ :index | anEncoder encodeReferenceTo: (aClass instVarAt: index) ]