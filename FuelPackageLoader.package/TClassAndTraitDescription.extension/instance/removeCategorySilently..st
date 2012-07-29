*FuelPackageLoader
removeCategorySilently: aCategory

	SystemAnnouncer uniqueInstance doSilently: [ self removeCategory: aCategory ]