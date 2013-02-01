class initialization
initialize
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		on: MethodAdded, MethodModified 
			send: #methodChanged: 
			to: self.
	Smalltalk addToShutDownList: self.