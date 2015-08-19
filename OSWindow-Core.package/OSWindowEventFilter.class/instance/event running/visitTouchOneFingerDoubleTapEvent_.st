visitTouchOneFingerDoubleTapEvent: anEvent
	self ifCurrentGestureAllows: self doubleTap 
		then: [ eventHandler visitTouchOneFingerDoubleTapEvent: anEvent ]