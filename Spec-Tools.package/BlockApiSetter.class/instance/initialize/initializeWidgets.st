initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		BlockEditor ).
				
	self selector text: ''.
	self choice whenBlockChangedDo: [:b | self setValueTo: b ]