initialization
initializeWidgets 

	self instantiateModels: #(
		instVarName 	TextInputFieldModel
		classChooser	DropListModel
		ok 				ButtonModel ).
					
	self instVarName 
		ghostText: 'name';
		entryCompletion: nil;
		autoAccept: true;
		acceptBlock: [:t | self ok enabled: t isEmpty not ].
		
	self classChooser items: self buildClassItems.
	
	self ok 
		label: 'create';
		state: false;
		enabled: false;
		action: [ self transform ]