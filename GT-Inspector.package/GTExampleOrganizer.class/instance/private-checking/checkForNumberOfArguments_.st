checkForNumberOfArguments: aCompiledMethod
	self notifying ifFalse: [ ^ self ].

	[ aCompiledMethod gtExamples do: [ :example | 
		example arguments size = aCompiledMethod numArgs 
			ifFalse: [ self notifyForNumberOfArguments: example ] ] ]
		on: Error
		do: [ :exception | " ignore " ]