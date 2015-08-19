checkConditions
	^ super checkConditions
		and: [ self allFingersGoesInTheSameDirection ]