accessing
activateAnnouncerForSystemChanges
	SystemAnnouncer uniqueInstance 
		unsubscribe: self;
		on: SystemAnnouncement send: #announceFromEvent: to: self.
