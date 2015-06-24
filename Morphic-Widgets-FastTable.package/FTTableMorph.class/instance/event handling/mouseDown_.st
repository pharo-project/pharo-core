mouseDown: event
	self wantsKeyboardFocus 
		ifTrue: [ self takeKeyboardFocus ].
		
	event hand waitForClicksOrDrag: self event: event