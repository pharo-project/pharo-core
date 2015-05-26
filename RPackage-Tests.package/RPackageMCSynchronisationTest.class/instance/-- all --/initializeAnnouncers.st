initializeAnnouncers
	super initializeAnnouncers.
	
	oldAnnouncer := MCWorkingCopy announcer.
	MCWorkingCopy announcer: announcerForTest.