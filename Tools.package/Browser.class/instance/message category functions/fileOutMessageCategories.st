fileOutMessageCategories
	"Print a description of the selected message category of the selected class 
	onto an external file."

Cursor write showWhile:
	[messageCategoryListIndex ~= 0
		ifTrue: 
			[self selectedClassOrMetaClass fileOutCategory: self selectedMessageCategoryName]]