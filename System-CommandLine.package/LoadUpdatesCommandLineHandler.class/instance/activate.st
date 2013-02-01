activation
activate
	self activateHelp.
	self loadUpdates.
	Smalltalk snapshot: true andQuit: true.