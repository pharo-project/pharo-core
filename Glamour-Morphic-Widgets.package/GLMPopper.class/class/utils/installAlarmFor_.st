installAlarmFor: aBlock

	World
		addAlarm: #value
		withArguments: #()
		for: aBlock
		at: Time millisecondClockValue + 50.