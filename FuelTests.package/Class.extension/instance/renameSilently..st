*FuelTests
renameSilently: aName
	SystemAnnouncer uniqueInstance doSilently: [
		self rename: aName.
	]