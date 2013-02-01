list protocol
keyStrokeAction: anEvent

	^ self keyStrokeSelector 
		ifNil: [ false ]
		ifNotNil: [:s | self model perform: s with: anEvent ]