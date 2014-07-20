noteSelectionIndex: anInteger for: aSymbol
	aSymbol == #systemCategoryList
		ifTrue:
			[systemCategoryListIndex := anInteger].
	aSymbol == #classList
		ifTrue:
			[classListIndex := anInteger].
	aSymbol == #messageCategoryList
		ifTrue:
			[messageCategoryListIndex := anInteger].
	aSymbol == #messageList
		ifTrue:
			[messageListIndex := anInteger].