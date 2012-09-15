history
history: aDictionary

	history := aDictionary.
	TestAnnouncer uniqueInstance announce: (TestSuiteEnded result: self)