stop
	running := false.
	notifying := false.
	SystemAnnouncer uniqueInstance	unsubscribe: self.
	Job jobAnnouncer unsubscribe: self.