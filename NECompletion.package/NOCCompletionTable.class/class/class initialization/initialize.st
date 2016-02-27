initialize
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		when: MethodAdded, MethodModified 
			send: #methodChanged: 
			to: self.
			
	SessionManager default
		registerToolClassNamed: self name