visitTouchTwoFingersScrollEndEvent: anEvent
	self ifCurrentGestureAllows: self scroll
		then: [ 
			eventHandler visitTouchTwoFingersScrollEndEvent: anEvent.
			self endGesture: self scroll ]