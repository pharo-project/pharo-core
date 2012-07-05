accessing
default
	self checkCacheDirectory.
	^ default ifNil: [default := self new directory: self defaultCacheDirectory]