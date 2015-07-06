keyStroke: event
	(super keyStroke: event) ifTrue: [ ^ true ].
	(self navigationKey: event) ifTrue: [ ^ true ].
	^ self keyStrokeSearch: event