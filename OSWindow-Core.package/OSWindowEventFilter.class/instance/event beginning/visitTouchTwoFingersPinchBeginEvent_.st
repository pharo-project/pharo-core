visitTouchTwoFingersPinchBeginEvent: anEvent
	self ifCurrentGestureAllows: self pinch  
		then: [ currentGestureSymbol := self pinch .
			eventHandler visitTouchTwoFingersPinchBeginEvent: anEvent ]