events - mouse
mouseUp: event

	"Happened only if the user click after the end of the list"
	"self setIndex: self listSize"
	
	| position rendererBounds newEvent |
	position := event position.
	rendererBounds := self renderer fullBoundsInWorld.
	position x < rendererBounds left ifTrue: [ ^ self ].
	position x > rendererBounds right ifTrue: [ ^ self ].
	newEvent := event.
	position y < rendererBounds top ifTrue: [ newEvent := event translatedBy: position negated ].
	position y > rendererBounds bottom ifTrue: [ newEvent := ((event translatedBy: position negated) translatedBy: 0@(self renderer height)) ].
	
	self renderer mouseUp: newEvent.