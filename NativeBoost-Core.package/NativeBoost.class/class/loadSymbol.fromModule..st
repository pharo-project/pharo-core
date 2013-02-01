retrieving symbols
loadSymbol: aSymbolName fromModule: moduleName
	^ self forCurrentPlatform 
		loadSymbol: aSymbolName fromModule: moduleName