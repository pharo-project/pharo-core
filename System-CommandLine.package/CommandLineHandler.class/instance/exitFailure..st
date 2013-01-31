utility
exitFailure: aMessage 
	Smalltalk isInteractive 
		ifTrue: [ Error signal: aMessage ]
		ifFalse: [ Smalltalk exitFailure ].