beginConditions
	^ super beginConditions and: [ self eachFingersHadTravelledEnough ]