system triggers
classCategoryRenamedFrom: anOldClassCategoryName to: aNewClassCategoryName

	self announce: (RenamedEvent
					classCategoryRenamedFrom: anOldClassCategoryName 
					to: aNewClassCategoryName)