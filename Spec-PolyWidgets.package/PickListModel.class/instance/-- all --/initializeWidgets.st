initializeWidgets
	
	self instantiateModels: #( listModel #ListModel ).
	listModel displayBlock: [ :item | item ].
	self focusOrder add: listModel