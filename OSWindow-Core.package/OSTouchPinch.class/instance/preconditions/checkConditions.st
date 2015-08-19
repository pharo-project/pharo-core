checkConditions
	^ super checkConditions 
		and: [ self areFingersLinesNotTooFarApart
		and: [ self doesFingersGoesInOppositeDirection ]]