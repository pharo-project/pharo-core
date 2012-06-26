instance creation
instantiateModels: aCollectionOfPairs

	aCollectionOfPairs pairsDo: [ :k :v |
		self instVarNamed: k asString put: (self createInstanceFor: v)]