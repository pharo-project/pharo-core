initialization
initializeWidgets
	
	self instantiateModels: #( listModel ListComposableModel ).
	listModel displayBlock: [ :item | item ].
	