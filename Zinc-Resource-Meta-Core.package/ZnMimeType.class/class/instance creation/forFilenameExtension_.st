forFilenameExtension: extension
	^ ExtensionsMap 
		at: extension 
		ifAbsent: [ self default ]