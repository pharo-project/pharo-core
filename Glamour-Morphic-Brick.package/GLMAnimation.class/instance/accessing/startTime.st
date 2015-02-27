startTime

	^ startTime ifNil: [ startTime := Time millisecondClockValue ]