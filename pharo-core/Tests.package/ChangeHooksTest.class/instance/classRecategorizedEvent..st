Events-Classes
classRecategorizedEvent: event 

	self addSingleEvent: event.
	self 
		checkEvent: event
		kind: #Recategorized
		item: generatedTestClass
		itemKind: AbstractEvent classKind.
	self assert: event oldCategory = #'System-Change Notification'