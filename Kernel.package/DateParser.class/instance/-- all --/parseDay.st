parseDay

	self isTwoDigitDayPattern ifTrue: [ ^ self parseTwoDigitDay ].
	self parseVariableDigitDay