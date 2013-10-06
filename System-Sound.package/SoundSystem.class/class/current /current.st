current

	^ Current ifNil: [ Current := DummySoundSystem new ]