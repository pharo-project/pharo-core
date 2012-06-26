as yet unclassified
default
	self checkCacheDirectory.
	^ default ifNil: [default := self new directory: self cacheDirectory]