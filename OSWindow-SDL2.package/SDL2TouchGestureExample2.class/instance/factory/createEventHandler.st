createEventHandler
	^ OSWindowGestureEventHandler new
			touchExample: self;
			registerGesture: OSTouchTwoFingersScroll new;
			registerGesture: OSTouchTwoFingersPinch new;
			registerGesture: OSTouchThreeFingersSwipe new;
			registerGesture: OSTouchTwoFingersRotation new;
			registerGesture: OSTouchOneFingerDoubleTap new;
			yourself