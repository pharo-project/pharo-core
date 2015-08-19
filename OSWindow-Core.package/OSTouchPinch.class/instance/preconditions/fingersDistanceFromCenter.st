fingersDistanceFromCenter
	| centerOfAllFingers |
	centerOfAllFingers := self centerOfAllFingers.
	^ (activeFingers
		collect: [ :each | centerOfAllFingers dist: each lastPosition ])
		sum