caching
cachePackages
	^ cachePackages ifNil: [ cachePackages := IdentityDictionary new ]