testing
isForeignClassExtension: categoryName
	^ categoryName first = $* and: [(self isYourClassExtension: categoryName) not]