message category list
messageCategoryList
	"Answer the selected category of messages."

	classListIndex = 0
		ifTrue: [^ Array new]
		ifFalse: [^ (Array with: ClassOrganizer allCategory), self classOrMetaClassOrganizer categories]