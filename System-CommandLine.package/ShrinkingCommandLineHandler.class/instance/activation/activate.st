activate

	self activateHelp
		ifTrue: [  ^ self ].
	
	(self hasOption: 'keep')
		ifTrue: [ 
			Smalltalk shrinkToKernelWith: self arguments.
			^ self exitSuccess ].
		
	self hasArguments
		ifFalse: [ 
			Smalltalk shrinkToKernel.
			^ self exitSuccess ].		
	
	self printHelp.
	^ self exitFailure
