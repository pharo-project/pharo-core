forFilenameExtension: extension
	^ self 
		forFilenameExtension: extension 
		ifAbsent: [ self default ]