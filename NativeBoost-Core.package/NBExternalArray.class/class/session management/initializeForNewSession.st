initializeForNewSession

	self allSubclassesDo: [ :each | each updateElementSize ]