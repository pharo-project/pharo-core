registerInterestToSystemAnnouncement
	<systemEventRegistration>
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		when: MethodAdded, MethodModified, MethodRemoved 
			send: #event: 
			to: self.