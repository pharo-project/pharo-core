as yet unclassified
allFileNames
	cacheFileNames == true ifFalse: [ ^ self loadAllFileNames ].
	^ allFileNames ifNil: [
			allFileNames := self loadAllFileNames]