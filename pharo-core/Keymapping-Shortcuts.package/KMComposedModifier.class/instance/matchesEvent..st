as yet unclassified
matchesEvent: aKeyboardEvent
	^ modifiers allSatisfy: [:modifier|
		modifier matchesEvent: aKeyboardEvent]