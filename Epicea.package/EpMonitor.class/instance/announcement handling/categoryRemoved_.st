categoryRemoved: aPackageCategoryRemoved

	self handleAnyErrorDuring:[
		self addEvent: (EpCategoryRemoval named: aPackageCategoryRemoved categoryName) ]