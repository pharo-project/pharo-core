spotterPlugin: aBoolean 

	self spotterExtMethods do: [ :m |
		aBoolean
			ifTrue:  [
			 [ GTSpotterExtensionSettings enableProcessorDefinedInMethod: m ]
					on: NotFound
					do: [  ] ]
			ifFalse: [ 
				GTSpotterExtensionSettings disableProcessorDefinedInMethod: m ] ]