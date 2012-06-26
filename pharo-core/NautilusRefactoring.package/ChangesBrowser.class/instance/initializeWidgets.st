initialization
initializeWidgets

	self instantiateModels:  #(
		cancelButton 	ButtonModel
		acceptButton 	ButtonModel
		pickList 		PickListModel
		textArea 		TextModel ).

	self initializeAcceptButton.
	self initializeCancelButton.
	self initializePickList.
	self setFocus.