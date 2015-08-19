createEventDuringMove
	| pinchMoveClass dDist |
	dDist := self dDist.
	pinchMoveClass := 
		dDist < 0.0 ifTrue: [ OSTouchTwoFingersPinchInMoveEvent ]
					  ifFalse: [ OSTouchTwoFingersPinchOutMoveEvent ].
	^ pinchMoveClass new
		timestamp: eventHandler lastUpdateTimestamp;
		deviceId: deviceId;
		position: self centerOfAllFingers;
		dDist: dDist;
		yourself