*FuelMetalevel
identityIncludesAssociation: anAssociation
	^ (self   
	      associationAt: anAssociation key
	      ifAbsent: [ ^ false ]) == anAssociation
