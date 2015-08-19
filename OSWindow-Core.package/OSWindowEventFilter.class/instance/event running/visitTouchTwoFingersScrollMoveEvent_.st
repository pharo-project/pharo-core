visitTouchTwoFingersScrollMoveEvent: anEvent
	self ifCurrentGestureAllows: self scroll 
		then: [ eventHandler visitTouchTwoFingersScrollMoveEvent: anEvent ]