Events-Expression
methodDoItEvent1: event 

	self addSingleEvent: event.
	self 
		checkEvent: event
		kind: #DoIt
		item: doItExpression
		itemKind: AbstractEvent expressionKind.
	self assert: event context isNil.