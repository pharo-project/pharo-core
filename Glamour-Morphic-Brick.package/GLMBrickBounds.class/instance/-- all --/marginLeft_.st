marginLeft: anInteger

	self translateX: anInteger - self marginLeft.
	self margin at: Left put: anInteger.
	self updateCache