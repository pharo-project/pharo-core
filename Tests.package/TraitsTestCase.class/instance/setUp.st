running
setUp

	super setUp.
	oldAnnouncer := SystemAnnouncer announcer.
	SystemAnnouncer announcer: nil.
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer. 
	SystemAnnouncer privateAnnouncer: nil.
