announcer handling
initializeAnnouncers
	oldMCAnnouncer := SystemAnnouncer announcer.
	SystemAnnouncer announcer: SystemAnnouncer new.