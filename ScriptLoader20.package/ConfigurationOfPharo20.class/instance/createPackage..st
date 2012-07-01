private creating
createPackage: nameString
	^self 
		createPackage: nameString 
		withRequirements: nil "(self requirementsFor: nameString)"