private
initialize

	super initialize.
	cachedHierarchy := IdentityDictionary new.
	groupsSelection := Dictionary new.
	packagesSelection := Dictionary new.
	classesSelection := Dictionary new.
	shouldUpdateTitle := true.
	testSemaphore := Semaphore new.
			
	self registerToAnnouncements.