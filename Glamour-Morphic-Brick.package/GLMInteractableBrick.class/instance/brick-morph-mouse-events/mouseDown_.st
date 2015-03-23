mouseDown: evt
	|selectors|
	
	self isDoubleClickEnabled ifFalse: [
		super mouseDown: evt.
		^ self press ].
	
	selectors := Array
				with: #click:
				with: #doubleClick:
				with: nil
				with: nil.
				
	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: selectors
		threshold: 10.
