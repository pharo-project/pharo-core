checkForDependenciesUsing: aCompiledMethod
	self notifying ifFalse: [ ^ self ].
	
	[ self cachedExamplesDo: [ :example |
		example arguments do: [ :dependency |
			(dependency exists not and: [ dependency matchesMethod: aCompiledMethod ]) 
				ifTrue: [ self notifyForDependencyUsing: aCompiledMethod example: example ] ] ] ]
		on: Error
		do: [ :exception | " ignore " ]