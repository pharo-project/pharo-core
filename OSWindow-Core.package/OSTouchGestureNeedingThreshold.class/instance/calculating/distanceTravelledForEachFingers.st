distanceTravelledForEachFingers
	^ activeFingers
			collect: [ :finger | finger distanceTravelled ]