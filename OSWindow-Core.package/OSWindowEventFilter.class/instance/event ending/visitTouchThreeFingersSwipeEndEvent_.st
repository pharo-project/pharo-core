visitTouchThreeFingersSwipeEndEvent: anEvent
	self ifCurrentGestureAllows: self swipe
		then: [ 
			eventHandler visitTouchThreeFingersSwipeEndEvent: anEvent.
			self endGesture: self swipe	]