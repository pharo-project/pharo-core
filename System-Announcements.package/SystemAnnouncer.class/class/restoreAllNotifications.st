utilities
restoreAllNotifications
	"self restoreAllNotifications"
	
	self reset.
	RPackageOrganizer registerInterestToSystemAnnouncement.
	MCPackageManager registerForNotifications.
	MCWorkingCopy registerForNotifications.

	