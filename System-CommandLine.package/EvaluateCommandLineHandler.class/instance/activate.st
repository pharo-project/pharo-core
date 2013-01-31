activation
activate
	self activateHelp.
	self arguments ifEmpty: [ ^ self evaluateStdIn ].
	self evaluateArguments.
	self quit.