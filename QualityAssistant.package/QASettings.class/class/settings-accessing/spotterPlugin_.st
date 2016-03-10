spotterPlugin: aBoolean 
	
	self spotterExtMethods do: [ :m |
		aBoolean
			ifTrue:  [
				GTSpotterExtensionSettings enableProcessorDefinedInMethod: m ]
			ifFalse: [ 
			 [ GTSpotterExtensionSettings disableProcessorDefinedInMethod: m ]
				on: NotFound
				do: [  ] ] ]