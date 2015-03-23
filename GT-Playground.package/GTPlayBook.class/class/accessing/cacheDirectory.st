cacheDirectory
	" lazy initialize the cache and always ensure its existence - especially while the image is running "
	
	cacheDirectory ifNil: [ cacheDirectory := self defaultCacheDirectory ].
	^ cacheDirectory exists
		ifTrue: [ cacheDirectory ]
		ifFalse: [ cacheDirectory ensureCreateDirectory ]