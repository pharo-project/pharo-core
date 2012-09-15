event registration
registerForNotifications
	"self registerForNotifications"
	<systemEventRegistration>
	
	SystemAnnouncer uniqueInstance unsubscribe: self.
	self registerInterestOnSystemChangesOnAnnouncer: SystemAnnouncer uniqueInstance.