beginConditions
	^ super beginConditions and: [ self isBrinkAngleOverwhelmed ]