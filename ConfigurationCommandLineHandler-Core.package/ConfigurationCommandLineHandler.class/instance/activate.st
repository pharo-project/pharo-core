activation
activate
	self activateHelp.
	
	(self hasOption: 'install')
		ifFalse: [ ^ self list ].
		
	self installConfiguration.
		