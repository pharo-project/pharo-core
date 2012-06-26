as yet unclassified
basicStoreVersion: aVersion
	(aVersion isCacheable and: [self includesFileNamed: aVersion fileName])
		ifFalse: [super basicStoreVersion: aVersion]
