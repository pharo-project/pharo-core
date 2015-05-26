activate
	[ self manageFiles ]
		on: Error
		do: [ :ex | ^ self exitFailure: ex description ].
	
	(self commandLine hasOption: 'save') ifTrue: [
		Smalltalk saveSession ].
	
	self exitSuccess.
	
	Smalltalk
		snapshot: false
		andQuit: (self commandLine hasOption: 'quit')