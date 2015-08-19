visitTouchThreeFingersSwipeAbortEvent: anEvent
	self ifCurrentGestureAllows: self swipe
		then: [ 
			eventHandler visitTouchThreeFingersSwipeAbortEvent: anEvent.
			self endGesture: self swipe]
	