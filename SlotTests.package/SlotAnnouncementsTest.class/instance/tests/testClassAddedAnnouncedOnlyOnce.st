testClassAddedAnnouncedOnlyOnce
	self assertOnlyOneAnnouncementOf: ClassAdded within: [
		"We create a new class without slots"
		self makeWithLayout: FixedLayout.
	]