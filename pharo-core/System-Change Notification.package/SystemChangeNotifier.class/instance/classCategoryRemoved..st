system triggers
classCategoryRemoved: aClassCategoryName

	self trigger: (RemovedEvent
					classCategory: aClassCategoryName)