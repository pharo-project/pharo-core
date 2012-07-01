mapping
mapAndTrace: anObject

	| aGlobalCluster |
	aGlobalCluster := 
		clusterByObject 
			at: anObject 
			ifAbsent: [ 
				"This is a hack to support correct behavior of globals for methods. This is just to avoid adding all 
				methods to the cache"
				(anObject class == CompiledMethod and: [self shouldConsdierMethodAsGlobal: anObject])
					ifTrue: [ globalCompiledMethodCluster  ]
					ifFalse: [^ next mapAndTrace: anObject ] 
				].

	(self 
		clusterInstanceOf: aGlobalCluster class
		keyInBucket: aGlobalCluster class name 
		factory: [ aGlobalCluster ])
		add: anObject traceWith: analysis
	