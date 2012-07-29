instance creation
release
	SystemAnnouncer uniqueInstance 
		noMoreNotificationsFor: self.
	self uniqueInstance release