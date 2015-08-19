visitTouchThreeFingersSwipeBeginEvent: anEvent
	self ifCurrentGestureAllows: self swipe 
		then: [ currentGestureSymbol := self swipe.
			eventHandler visitTouchThreeFingersSwipeBeginEvent: anEvent ]