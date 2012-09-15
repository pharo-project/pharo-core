as yet unclassified
initialize
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		on: MethodAdded, MethodModified 
			send: #methodChanged: 
			to: self.
	self initializeTable.