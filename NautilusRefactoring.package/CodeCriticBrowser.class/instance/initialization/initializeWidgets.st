initializeWidgets

	self instantiateModels: #(
		listModel1 	#ListModel
		listModel2 	#ListModel
		listModel3 	#ListModel
		textModel 	TextModel ).
	
	listModel1 displayBlock: [:rule | rule name ].
	listModel2 displayBlock: [:rule | rule name ].
	listModel3 displayBlock: [:rule | rule name ].