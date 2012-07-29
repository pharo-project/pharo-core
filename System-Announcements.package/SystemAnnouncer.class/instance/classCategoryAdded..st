system triggers
classCategoryAdded: aClassCategoryName

	self trigger: (AddedEvent
					classCategory: aClassCategoryName)