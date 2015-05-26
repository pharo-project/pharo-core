addPackage: aPackage

	(packages includes: aPackage)
		ifFalse: [ packages add: aPackage ]