initialize
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		when: MethodAdded, MethodModified 
			send: #methodChanged: 
			to: self.
	Smalltalk addToShutDownList: self.