visitTouchTwoFingersRotationBeginEvent: anEvent
	self ifCurrentGestureAllows: self rotation 
		then: [ currentGestureSymbol := self rotation.
			eventHandler visitTouchTwoFingersRotationBeginEvent: anEvent ]