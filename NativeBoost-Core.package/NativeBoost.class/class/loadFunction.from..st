retrieving symbols
loadFunction: fnName from: aModuleName

	^ self forCurrentPlatform 
		loadFunction: fnName from: aModuleName