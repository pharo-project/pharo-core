configuring-migration
migrateClassNamed: aSymbol variables: aDictionary 

	self 
		migrateClassNamed: aSymbol 
		toClass: (Smalltalk globals at: aSymbol)
		variables: aDictionary