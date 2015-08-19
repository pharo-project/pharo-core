eachFingersHadTravelledEnough
	^ modeActivated 
		or: [ self distanceTravelledForEachFingers allSatisfy: [ :each | each > minDistBeforeDetection ] ]