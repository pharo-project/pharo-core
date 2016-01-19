startUp: resuming
	resuming ifFalse: [ ^ self ].
	self uniqueInstance checkPlatform	
