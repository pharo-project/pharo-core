visitTouchTwoFingersPinchInMoveEvent: anEvent
	self ifCurrentGestureAllows: self pinch 
		then: [ eventHandler visitTouchTwoFingersPinchInMoveEvent: anEvent ]