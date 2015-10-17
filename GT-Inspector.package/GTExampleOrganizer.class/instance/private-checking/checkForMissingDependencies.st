checkForMissingDependencies
	self notifying ifFalse: [ ^ self ].

	[ self cachedExamplesDo: [ :example | 
		example arguments do: [ :dependency | 
			dependency exists 
				ifFalse: [ self notifyForMissingDependency: dependency example: example ] ] ] ]
		on: Error
		do: [ :exception | " ignore " ]