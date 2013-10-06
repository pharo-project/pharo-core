flushCachesFor: aClass 
	selectorCache isNil ifTrue: [ ^ self] .
	aClass theNonMetaClass withAllSubclasses do: [ :each | 
		selectorCache
			removeKey: each ifAbsent: [];
			removeKey: each class ifAbsent: [] ]