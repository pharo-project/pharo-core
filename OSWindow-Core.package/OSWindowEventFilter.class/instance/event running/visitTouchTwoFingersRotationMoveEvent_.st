visitTouchTwoFingersRotationMoveEvent: anEvent
	self ifCurrentGestureAllows: self rotation 
		then: [ eventHandler visitTouchTwoFingersRotationMoveEvent: anEvent ]
	