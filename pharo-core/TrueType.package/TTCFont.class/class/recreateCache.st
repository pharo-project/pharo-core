other
recreateCache
"
	self recreateCache.
"
	self allSubInstances do: [:inst | inst flushCache].
	Smalltalk garbageCollect.
