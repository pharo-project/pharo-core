*FuelPackageLoader
classifySilently: element under: heading suppressIfDefault: aBoolean

	SystemChangeNotifier uniqueInstance doSilently: [
		super classify: element under: heading suppressIfDefault: aBoolean
	].
