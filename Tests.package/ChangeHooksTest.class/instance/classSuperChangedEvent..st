Events-Classes
classSuperChangedEvent: event 

	self addSingleEvent: event.
	self 
		checkEvent: event
		kind: #Modified
		item: generatedTestClass
		itemKind: AbstractEvent classKind.
	self assert: generatedTestClass superclass = Model