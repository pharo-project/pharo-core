event registration
registerForNotifications
	"self registerForNotifications"
	SystemAnnouncer current unsubscribe: self.
	self registerInterestOnSystemChangesOnAnnouncer: SystemAnnouncer uniqueInstance.