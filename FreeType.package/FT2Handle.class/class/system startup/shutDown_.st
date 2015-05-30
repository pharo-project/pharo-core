shutDown: quitting
	quitting ifFalse: [ ^ self ].
	self clearRegistry