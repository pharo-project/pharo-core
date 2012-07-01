instance creation
forMethod: aMethod "<CompiledMethod>"
	"Answer a DebuggerMethodMap suitable for debugging activations of aMethod.
	 Answer an existing instance from the cache if it exists, cacheing a new one if required."
	^MapCache
		at: aMethod
		ifAbsent: [self
					cacheDebugMap:
						(self
							forMethod: aMethod
							methodNode: aMethod methodNode)
					forMethod: aMethod]