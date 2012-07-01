Events-Methods
methodRemovedEvent1: event 

	self addSingleEvent: event.
	self should: [generatedTestClass >> createdMethodName] raise: Error.
	self 
		checkEvent: event
		kind: #Removed
		item: createdMethod
		itemKind: AbstractEvent methodKind.
	event itemClass = generatedTestClass.
	event itemMethod = createdMethodName.
	self assert: ((generatedTestClass organization categoryOfElement: createdMethodName) isNil).