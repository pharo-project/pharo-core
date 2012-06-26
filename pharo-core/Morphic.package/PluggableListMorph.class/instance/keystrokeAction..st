model access
keystrokeAction: event 
	| args returnValue |
	
	keystrokeSelector ifNil: [ ^ nil ].

	returnValue := model 
						perform: keystrokeSelector
						withEnoughArguments: { event. self }.
	
	^ returnValue = true