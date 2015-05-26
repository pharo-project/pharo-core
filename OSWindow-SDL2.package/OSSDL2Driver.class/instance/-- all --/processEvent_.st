processEvent: sdlEvent
	| event |
	event := self convertEvent: sdlEvent.
	event ifNotNil: [ eventQueue nextPut: event ].