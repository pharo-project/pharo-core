initializeForNewSession

	self allSubclassesDo: [ :each | each updateFieldOffsets ]