updateMethodSelection: aMethod

	model ui categoryWidget
		resetCategoryCache;
		resetCategoriesListSelection.
	model ui categoryWidget
		categoriesSelection at: aMethod category put: true.
	model ui methodWidget 
		resetMethodCache;
		resetMethodsListSelection.
	model ui methodWidget 
		methodsSelection at: aMethod category put: true.

	model ui resetClassesListSelection.
	model ui classWidget selectClass: aMethod methodClass.
	model  package: model selectedPackage class: aMethod methodClass category: aMethod category method: aMethod method.
	
	model ui update.
	model ui updateClassView.