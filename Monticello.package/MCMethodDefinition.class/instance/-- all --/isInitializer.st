isInitializer
	^ selector = #initialize and: [classIsMeta]
	