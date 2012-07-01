initialization
initializeWidgets

	self instantiateModels: #(
		listModel ListComposableModel
		textModel1 TextModel
		textModel2 TextModel ).
	
	listModel beMultipleSelection.
	
	listModel items: Smalltalk allClasses.