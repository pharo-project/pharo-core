mouseDown: event
	|selectors|
	self isEnabled ifTrue: [ ^ super mouseDown: event ].
	
	selectors := Array
				with: nil
				with: #doubleClick:
				with: #singleClick:
				with: (self dragEnabled
						ifTrue: [#startDrag:]).
	event hand
		waitForClicksOrDrag: self
		event: event
		selectors: selectors
		threshold: 10.