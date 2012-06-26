system triggers
classCategoryRenamedFrom: anOldClassCategoryName to: aNewClassCategoryName

	self trigger: (RenamedEvent
					classCategoryRenamedFrom: anOldClassCategoryName 
					to: aNewClassCategoryName)