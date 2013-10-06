initializeWidgets

	self instantiateModels: #(
		listModel ListComposableModel
		textModel TextModel
		toolbarModel MethodToolbar ).
	
	self focusOrder
		add: listModel;
		add: toolbarModel;
		add: textModel.
	
	textModel aboutToStyle: true.