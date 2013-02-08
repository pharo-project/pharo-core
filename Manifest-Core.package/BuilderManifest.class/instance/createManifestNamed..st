manifest
createManifestNamed: packageName


	 manifestClass := Object subclass: (self class manifestTag, packageName onlyLetters) asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: packageName.
	
	manifestClass class 
		compile: (self class rejectClassesTag, Character cr asString, '^ #()')
		classified: 'meta data'.
	
	manifestClass class compile: 
		(self class rejectRulesTag, Character cr asString, '^ #()')
		classified: 'meta data'.		
	
	
	^ manifestClass