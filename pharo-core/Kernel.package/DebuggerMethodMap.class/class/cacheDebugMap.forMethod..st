debugger support
cacheDebugMap: aDebuggerMethodMap forMethod: aCompiledMethod
	MapCache finalizeValues.
	[MapCache size >= MapCacheEntries] whileTrue:
		[| mapsByAge |
		 mapsByAge := MapCache keys asSortedCollection:
							[:m1 :m2|
							(MapCache at: m1) timestamp
							< (MapCache at: m2) timestamp].
		mapsByAge notEmpty ifTrue: "There be race conditions and reentrancy issues here"
			[MapCache removeKey: mapsByAge last]].

	^MapCache
		at: aCompiledMethod
		put: aDebuggerMethodMap