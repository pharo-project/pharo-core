instance creation
referencesToClassVariable: aSymbol in: aClass 
	^ self 
		on: RBBrowserEnvironment new
		referencesToClassVariable: aSymbol
		in: aClass