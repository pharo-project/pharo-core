*FuelPackageLoader
initializeOnLoad

	(self class includesSelector: #initialize)
		ifTrue: [self initialize]