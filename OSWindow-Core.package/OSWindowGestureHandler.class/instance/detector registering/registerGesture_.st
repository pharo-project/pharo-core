registerGesture: aGesture
	registeredGestures add: aGesture.
	aGesture eventHandler: self