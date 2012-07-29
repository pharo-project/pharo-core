announcer handling
initializeAnnouncers
	oldMCAnnouncer := SystemAnnouncer uniqueInstance.
	oldPrivateAnnouncer := SystemAnnouncer privateAnnouncer.
	SystemAnnouncer announcer: (announcerForTest := SystemAnnouncer new).
	SystemAnnouncer privateAnnouncer: (privateAnnouncerForTest := SystemAnnouncer new).