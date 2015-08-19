createEventHandler
	^OSWindowGestureEventHandler new
				touchExample: self;
				registerGesture: OSTouchTwoFingersScroll new;
				registerGesture: OSTouchTwoFingersPinch new;
				yourself