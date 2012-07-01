analyzing
referencesOf: anAssociation do: aBlock

	aBlock 
		value: (classOwnerByAssociation at: anAssociation);
		value: anAssociation key