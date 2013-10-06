initializeWidgets

	listModel := self newList.
	textModel1 := self newText.
	textModel2 := self newText.
	
	listModel beMultipleSelection.
	
	listModel items: Smalltalk allClasses.