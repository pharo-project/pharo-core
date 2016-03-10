spotterPlugin
	
	^ self spotterExtMethods anySatisfy: [ :m |
		(GTSpotterExtensionSettings shouldSpotterIgnoreProcessorDefinedInMethod: m) not ]
	