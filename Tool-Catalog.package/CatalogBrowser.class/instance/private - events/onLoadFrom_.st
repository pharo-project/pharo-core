onLoadFrom: presenter

	self loadConfiguration: presenter selection
		  onSuccess: [ presenter update ]