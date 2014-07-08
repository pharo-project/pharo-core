initializeWidgets 
	
	self instantiateModels: #(
		add ButtonModel
		edit ButtonModel
		remove ButtonModel
		users DropListModel ).
	
	self initializeButtons.
	
	users 
		displayBlock: [ :e | e label ].
	
	self initializeContainer.
	self focusOrder 
		add: users;
		add: add;
		add: edit;
		add: remove