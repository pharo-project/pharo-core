announcer handling
initializeAnnouncers
	super initializeAnnouncers.
	RMockSystemAnnouncer initialize.
	RMockSystemAnnouncer activateAnnouncerForSystemChanges.
	
	oldAnnouncer := MCWorkingCopy announcer.
	MCWorkingCopy announcer: RMockSystemAnnouncer current. 