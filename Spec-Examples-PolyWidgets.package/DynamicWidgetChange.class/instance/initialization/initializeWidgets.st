initializeWidgets

	self instantiateModels: #(
		button ButtonModel
		bottom ListComposableModel ).
		
	button 
		label: 'Change';
		action: [ self change ];
		state: false.
		
	bottom 
		items: (1 to: 10) asOrderedCollection.