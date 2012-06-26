testing
includesMethodCategory: categoryName ofClassNamed: aClass
	^ (self isYourClassExtension: categoryName)
		or: [(self includesClassNamed: aClass)
				and: [(self isForeignClassExtension: categoryName) not]]