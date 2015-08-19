convertEvent: sdlEvent
	| mappedEvent window |
	
	mappedEvent := sdlEvent mapped ifNil: [ ^ nil ].
	mappedEvent windowID ifNil: [ ^ self sendEventWithoutWindow: mappedEvent ].
	
	window := windowMap at: mappedEvent windowID ifAbsent: [ ^ nil ].
	window handleNewSDLEvent: mappedEvent.
	^ nil
	