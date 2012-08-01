system triggers
classCategoryAdded: aClassCategoryName

	self announce: (AddedEvent
					classCategory: aClassCategoryName)