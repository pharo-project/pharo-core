running
setUp

	super setUp.
	oldAnnouncer := SystemAnnouncer uniqueInstance.
	SystemAnnouncer announcer: nil.
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer. 
	SystemAnnouncer privateAnnouncer: nil.
