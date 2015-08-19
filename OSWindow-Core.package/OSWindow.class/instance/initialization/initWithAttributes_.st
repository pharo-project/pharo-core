initWithAttributes: attributes
	initialAttributes := attributes.
	
	self animated: attributes animated.
	self createWindow.
	self registerWindow.
	self initialize