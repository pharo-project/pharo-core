cleanUp
	AbstractNautilusUI resetIconCaches.
	Nautilus resetCachedLastClasses.
	RecentClasses := nil.
	self withAllSubclassesDo: #resetGroups.