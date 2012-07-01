Events-Classes
classCommentedEvent: event 

	self addSingleEvent: event.
	self assert: generatedTestClass comment = self commentStringForTesting.
	self 
		checkEvent: event
		kind: #Commented
		item: generatedTestClass
		itemKind: AbstractEvent classKind