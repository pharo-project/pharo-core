*FuelPackageLoader
removeCategorySilently: aCategory

	SystemChangeNotifier uniqueInstance doSilently: [ self removeCategory: aCategory ]