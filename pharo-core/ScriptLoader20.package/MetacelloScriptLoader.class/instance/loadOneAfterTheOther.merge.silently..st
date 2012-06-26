load primitives
loadOneAfterTheOther: aCollection merge: aBoolean silently: anotherBoolean
	anotherBoolean
		ifTrue: [ 
			[ self loadOneAfterTheOther: aCollection merge: aBoolean ]
				on: ProgressInitiationException do: [:e | e sendNotificationsTo: DummySystemProgressItem new ] ]
		ifFalse: [
			self loadOneAfterTheOther: aCollection merge: aBoolean ]