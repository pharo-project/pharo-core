activation
activate
	self arguments ifEmpty: [ ^ self evaluateStdIn ].
	self evaluateArguments.
	self quit.