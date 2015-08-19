visitTouchThreeFingersSwipeMoveEvent: anEvent
	self ifCurrentGestureAllows: self swipe 
		then: [ eventHandler visitTouchThreeFingersSwipeMoveEvent: anEvent ]
	