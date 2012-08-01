system triggers
classCategoryRemoved: aClassCategoryName

	self announce: (RemovedEvent
					classCategory: aClassCategoryName)