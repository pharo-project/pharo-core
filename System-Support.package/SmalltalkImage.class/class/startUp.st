initialization
startUp
	SystemAnnouncer uniqueInstance
		unsubscribe: ChangesLog default;
		on: SystemAnnouncement send: #logAnnouncement: to: ChangesLog default.
	Smalltalk openSourceFiles