activation
activate
	self activateHelp.
	
	((self hasOption: 'delete-old') 
		ifTrue: [ self arguments size = 2 ]
		ifFalse: [ self arguments size = 1])
			ifFalse: [ ^ self exitFailure: 'Invalid Arguments' ].
		
	self saveImage.
		