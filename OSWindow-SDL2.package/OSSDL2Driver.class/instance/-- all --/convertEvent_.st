convertEvent: sdlEvent
	| mappedEvent window |
	
	mappedEvent := sdlEvent mapped ifNil: [ ^ nil ].
	mappedEvent windowID ifNil: [ ^ nil ].
	
	window := windowMap at: mappedEvent windowID ifAbsent: [ ^ nil ].
	window handleNewSDLEvent: mappedEvent.
	^ nil
	