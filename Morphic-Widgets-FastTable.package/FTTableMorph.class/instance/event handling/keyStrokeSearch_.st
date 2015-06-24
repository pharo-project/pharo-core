keyStrokeSearch: event
	search ifNil: [ ^ false ].
	^ search keyStroke: event