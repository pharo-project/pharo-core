load
	RPackageSet withCacheDo: [   
		| version |
		version := versions first. 
		self ensurePackage: version package.
		self loadWithNameLike: version info name ].