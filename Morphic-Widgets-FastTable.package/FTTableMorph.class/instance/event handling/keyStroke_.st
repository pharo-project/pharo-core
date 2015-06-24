keyStroke: event
	(super keyStroke: event) ifTrue: [ ^ true ].
	^ self keyStrokeSearch: event