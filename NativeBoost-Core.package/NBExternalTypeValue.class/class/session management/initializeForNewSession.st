initializeForNewSession

	self allSubclassesDo: [ :each | each updateValueSize ].