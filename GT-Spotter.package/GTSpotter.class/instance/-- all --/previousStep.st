previousStep
	
	^ self steps size > 1 
		ifTrue: [ self steps reversed second ]