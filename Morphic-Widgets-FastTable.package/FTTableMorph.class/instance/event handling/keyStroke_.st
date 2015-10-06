keyStroke: event
	((super keyStroke: event) or: [ self navigationKey: event ])
		ifTrue: [ ^ true ].
	^ self keyStrokeSearch: event