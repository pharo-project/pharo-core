initialize
initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		TextInputFieldModel  ).
				
	self selector text: ''.
	self choice
			autoAccept: true;
			entryCompletion: nil;
			ghostText: 'new value';
			acceptBlock: [:t | self setValueTo: t ].