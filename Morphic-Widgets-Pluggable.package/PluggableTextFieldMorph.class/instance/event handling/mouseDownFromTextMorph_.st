mouseDownFromTextMorph: anEvent
	super mouseDownFromTextMorph: anEvent.
	entryCompletion ifNotNil: [entryCompletion mouseDownFromTextMorph: anEvent]