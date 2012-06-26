as yet unclassified
initialize
	SystemAnnouncer unsubscribe: self.
	SystemAnnouncer current on: MethodAdded, MethodModified send: #methodChanged: to: self.
	self initializeTable.