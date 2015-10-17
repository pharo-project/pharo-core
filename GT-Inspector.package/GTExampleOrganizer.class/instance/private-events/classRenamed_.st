classRenamed: anAnnouncement
	self withCleanupDo: [ 
		examples at: anAnnouncement oldName asSymbol ifPresent: [ :oldValue | 
			examples at: anAnnouncement newName asSymbol put: oldValue ].
		
		self checkForMissingDependencies ]