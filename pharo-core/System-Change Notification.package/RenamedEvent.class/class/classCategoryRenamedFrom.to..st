instance creation
classCategoryRenamedFrom: anOldClassCategoryName to: aNewClassCategoryName

	^(self classCategory: anOldClassCategoryName) oldName: anOldClassCategoryName; newName: aNewClassCategoryName