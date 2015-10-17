methodAdded: anAnnouncement
	self withCleanupDo: [
		self checkForMissingDependencies: anAnnouncement method.
		self checkForNumberOfArguments: anAnnouncement method.
		self checkForMissingClasses: anAnnouncement method.
		GTExampleNautilus methodChanged: anAnnouncement method ]