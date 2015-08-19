visitTouchTwoFingersPinchOutMoveEvent: anEvent
	self ifCurrentGestureAllows: self pinch 
		then: [ eventHandler visitTouchTwoFingersPinchOutMoveEvent: anEvent ]