initializeWidgets

	self instantiateModels: #(	
		listModel 		ListComposableModel
		searchModel 	TextInputFieldModel ).
	searchModel 
		autoAccept: true;
		ghostText: 'filter'.