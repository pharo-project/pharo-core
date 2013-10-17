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

	model ui listSelection2 removeAll.
	model ui listSelection2 at: aMethod methodClass put: true.
	model  package: model selectedPackage class: aMethod methodClass category: aMethod category method: aMethod method.
	
	model ui update.
	model ui updateClassView.