message category list
messageCategoryList
	"Answer the selected category of messages."

	classListIndex = 0
		ifTrue: [^ Array new]
		ifFalse: [^ self classOrMetaClassOrganizer categoriesSorted ]