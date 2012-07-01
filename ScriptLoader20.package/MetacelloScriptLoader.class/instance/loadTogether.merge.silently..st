load primitives
loadTogether: aCollection merge: aBoolean silently: anotherBoolean
	anotherBoolean
		ifTrue: [ 
			[ self loadTogether: aCollection merge: aBoolean ]
				on: ProgressInitiationException do: [:e | e sendNotificationsTo: DummySystemProgressItem new ] ]
		ifFalse: [
			 self loadTogether: aCollection merge: aBoolean ]