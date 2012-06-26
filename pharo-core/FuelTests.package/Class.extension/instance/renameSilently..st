*FuelTests
renameSilently: aName
	SystemChangeNotifier uniqueInstance doSilently: [
		self rename: aName.
	]