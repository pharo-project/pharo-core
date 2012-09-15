*FuelTests
renameSilently: aName
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		self rename: aName.
	]