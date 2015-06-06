initializePresenter
	self wirePackages.
	self wireClasses.
	self wireProtocols.
	self wireSelectors.
	
	showClassSide stateHolder 
		whenChangedDo: [ self refreshClasses: self packages selectedItem ].