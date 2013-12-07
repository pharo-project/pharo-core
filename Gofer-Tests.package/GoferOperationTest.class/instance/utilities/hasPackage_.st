hasPackage: aString
	^ self allManagers anySatisfy: [ :package | package packageName = aString ]