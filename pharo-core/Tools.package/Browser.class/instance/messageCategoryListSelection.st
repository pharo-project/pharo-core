message category list
messageCategoryListSelection
	"Return the selected category name or nil."

	^ ((self messageCategoryList size = 0 
		or: [self messageCategoryListIndex = 0]) 
		or: [self messageCategoryList size < self messageCategoryListIndex])
			ifTrue: [nil]
			ifFalse: [self messageCategoryList at: (self messageCategoryListIndex max: 1)]