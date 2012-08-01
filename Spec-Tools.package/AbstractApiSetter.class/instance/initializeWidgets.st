initialize
initializeWidgets 
	
	self instantiateModels: #(
		selector 	LabelModel 
		choice 		DropListModel ).
				
	self selector text: ''.
	self choice items: (#(true false) collect: [:b | DropListItem 
													named: b printString
													do: [ self setValueTo: b ]]).