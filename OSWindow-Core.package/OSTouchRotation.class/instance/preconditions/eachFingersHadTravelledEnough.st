eachFingersHadTravelledEnough
	^ modeActivated
		or: [ self distanceTravelledForEachFingers 
			anySatisfy: [ :distance | distance > minDistanceBeforeDetection ] ]