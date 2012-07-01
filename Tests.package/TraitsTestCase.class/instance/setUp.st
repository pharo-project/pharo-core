running
setUp

     super setUp.
    oldAnnouncer := SystemAnnouncer announcer.
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer. 
	SystemAnnouncer announcer: nil.
	SystemAnnouncer privateAnnouncer: nil.
