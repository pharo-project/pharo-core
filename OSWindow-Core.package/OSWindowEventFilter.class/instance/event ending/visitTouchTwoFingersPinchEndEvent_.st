visitTouchTwoFingersPinchEndEvent: anEvent
	self ifCurrentGestureAllows: self pinch 
		then: [ eventHandler visitTouchTwoFingersPinchEndEvent: anEvent .
			self endGesture: self pinch ]