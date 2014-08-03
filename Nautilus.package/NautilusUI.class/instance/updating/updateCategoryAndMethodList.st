updateCategoryAndMethodList

	categoryWidget resetCategoryCache.
	methodWidget 
		resetMethodCache;
		updateList.
	self changed: #getCategoryItem:.