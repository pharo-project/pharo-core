initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		ColorEditor ).
				
	self selector text: ''.
	self choice whenColorChangedDo: [:c | self setValueTo: c ]