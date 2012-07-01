as yet unclassified
storeDependencies: aVersion
	MCCacheRepository default cacheAllFileNamesDuring: 
		[self cacheAllFileNamesDuring: 
			[aVersion allAvailableDependenciesDo:
				[:dep |
					(self includesVersionNamed: dep info name)
						ifFalse: [self storeVersion: dep]]]]