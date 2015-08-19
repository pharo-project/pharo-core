checkConditions
	^ super checkConditions and: [ self eachFingersHadTravelledEnough ]