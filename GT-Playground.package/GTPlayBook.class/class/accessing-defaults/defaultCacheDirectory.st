defaultCacheDirectory
	^ customDirectory ifNil: [ self defaultDirectory ]