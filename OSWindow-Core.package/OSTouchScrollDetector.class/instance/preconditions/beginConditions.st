beginConditions
	^ super beginConditions
		and: [ self isKeepingDirection ]