caching
isCacheActive
	^ cacheActive ifNil: [ cacheActive := false ]