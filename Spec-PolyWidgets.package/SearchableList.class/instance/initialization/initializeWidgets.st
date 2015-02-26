initializeWidgets

	self instantiateModels: #(	
		listModel 		#ListModel
		searchModel 	TextInputFieldModel ).
	searchModel 
		autoAccept: true;
		ghostText: 'filter'.