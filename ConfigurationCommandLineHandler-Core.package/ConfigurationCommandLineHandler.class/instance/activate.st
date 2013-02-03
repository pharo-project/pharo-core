activation
activate
	self activateHelp ifTrue: [ ^ self ].
	
	(self hasOption: 'install')
		ifFalse: [ ^ self list ].
		
	self installConfiguration.
		