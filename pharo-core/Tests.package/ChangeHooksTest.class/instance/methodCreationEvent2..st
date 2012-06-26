Events-Methods
methodCreationEvent2: event 

	| methodCreated |
	self addSingleEvent: event.
	self shouldnt: [methodCreated := generatedTestClass >> createdMethodName]
		raise: Error.
	self 
		checkEvent: event
		kind: #Added
		item: methodCreated
		itemKind: AbstractEvent methodKind