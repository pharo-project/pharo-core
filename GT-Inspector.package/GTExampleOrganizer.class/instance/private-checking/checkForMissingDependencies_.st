checkForMissingDependencies: aCompiledMethod
	self notifying ifFalse: [ ^ self ].

	[ aCompiledMethod gtExamples do: [ :example | 
		example arguments do: [ :dependency | 
			dependency exists 
				ifFalse: [ self notifyForMissingDependency: dependency example: example ] ] ] ]
		on: Error
		do: [ :exception | " ignore " ]