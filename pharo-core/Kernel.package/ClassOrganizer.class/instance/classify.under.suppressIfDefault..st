accessing
classify: element under: heading suppressIfDefault: aBoolean
	| oldCat newCat |
	oldCat := self categoryOfElement: element.
	SystemChangeNotifier uniqueInstance doSilently: [
		super classify: element under: heading suppressIfDefault: aBoolean].
	newCat := self categoryOfElement: element.
	self notifyOfChangedSelector: element from: oldCat to: newCat.