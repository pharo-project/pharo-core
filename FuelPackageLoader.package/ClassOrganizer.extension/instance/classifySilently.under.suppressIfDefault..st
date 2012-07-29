*FuelPackageLoader
classifySilently: element under: heading suppressIfDefault: aBoolean

	SystemAnnouncer uniqueInstance doSilently: [
		super classify: element under: heading suppressIfDefault: aBoolean
	].
