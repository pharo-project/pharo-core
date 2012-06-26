serialize/materialize
serializeInstance: anAssociation with: anEncoder

	anEncoder 
		encodeReferenceTo: (classOwnerByAssociation at: anAssociation);
		encodeReferenceTo: anAssociation key