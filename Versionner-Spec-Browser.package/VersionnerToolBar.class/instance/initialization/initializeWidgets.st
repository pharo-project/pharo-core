initializeWidgets
	newButton := (self instantiate: ButtonModel)
		label: 'New project';
		help: 'Create a new project (configuration). Once created, double-click on the projet to edit it';
		yourself.
	
	loadButton := (self instantiate: ButtonModel)
		label: 'Load project';
		help: 'Load an existing project (only its configuration) into the image';
		yourself.
