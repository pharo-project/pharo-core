activation
activate
	self activateHelp.
	self arguments ifEmpty: [ ^ self evaluateStdIn ].
	self evaluateArguments.
	(self hasOption: 'save')
		ifTrue: [ Smalltalk snapshot: true andQuit: true ]
		ifFalse: [ self quit ]