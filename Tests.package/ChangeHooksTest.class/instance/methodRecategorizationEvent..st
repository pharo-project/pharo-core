Events-Methods
methodRecategorizationEvent: event

	| methodCreated |
	self addSingleEvent: event.
	self shouldnt: [methodCreated := generatedTestClass >> createdMethodName]
		raise: Error.
	self assert: ((generatedTestClass organization categoryOfElement: createdMethodName) = #newCategory).
	self assert: event oldCategory = #testing.
	self 
		checkEvent: event
		kind: #Recategorized
		item: methodCreated
		itemKind: AbstractEvent methodKind.