checkConditions
	^ super checkConditions and: [ self isBrinkAngleOverwhelmed ]