serialize/materialize
serializePostInstance: aClass with: anEncoder

	anEncoder encodeReferenceTo: aClass superclass.
	anEncoder encodeReferenceTo: aClass basicCategory.
	anEncoder encodeReferenceTo: aClass name.
	anEncoder encodeReferenceTo: aClass format.	
	anEncoder encodeString: aClass instanceVariablesString.
	self flag: #todo. "The array of variable names represents a circularity problem between clusters: if we encode the reference to such array, then the cluster for arrays should be before of Class cluster. But this would disable us to serialize an array of internal classes."
