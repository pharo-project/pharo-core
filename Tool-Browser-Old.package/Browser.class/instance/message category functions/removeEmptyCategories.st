removeEmptyCategories
	self okToChange ifFalse: [^ self].
	self selectedClassOrMetaClass organization removeEmptyCategories.
	self changed: #messageCategoryList
