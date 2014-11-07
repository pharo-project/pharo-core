cacheDirectory
	^ cacheDirectory 
		ifNil: [cacheDirectory := self defaultCacheDirectory]
		ifNotNil: [ cacheDirectory exists 
			ifTrue: [ cacheDirectory ]
			ifFalse: [ cacheDirectory := self defaultCacheDirectory ] ]