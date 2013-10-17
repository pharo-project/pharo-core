shutDown: quitting 

	(current notNil and: [self clearCacheOnShutdown])
		ifTrue:[self current removeAll]