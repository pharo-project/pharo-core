Events-Classes
classRedefinitionEvent: event 
	
	self addSingleEvent: event.
	self 
		checkEvent: event
		kind: #Modified
		item: generatedTestClass
		itemKind: AbstractEvent classKind.