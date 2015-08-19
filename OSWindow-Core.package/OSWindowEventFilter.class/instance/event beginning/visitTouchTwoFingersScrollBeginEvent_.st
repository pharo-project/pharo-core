visitTouchTwoFingersScrollBeginEvent: anEvent
	self ifCurrentGestureAllows: self scroll 
		then: [ currentGestureSymbol := self scroll.
			eventHandler visitTouchTwoFingersScrollBeginEvent: anEvent ]