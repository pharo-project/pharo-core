checkConditions
	^ super checkConditions 
		and: [ self isKeepingDirection ]