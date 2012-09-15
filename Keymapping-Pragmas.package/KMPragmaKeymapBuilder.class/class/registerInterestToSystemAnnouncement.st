system-events
registerInterestToSystemAnnouncement
	<systemEventRegistration>
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		on: MethodAdded, MethodModified, MethodRemoved 
			send: #event: 
			to: self.