visitTouchTwoFingersRotationEndEvent: anEvent
	self ifCurrentGestureAllows: self rotation 
		then: [ eventHandler visitTouchTwoFingersRotationEndEvent: anEvent .
			self endGesture: self rotation ]