switchMode
	modeActivated := modeActivated not.
	modeActivated
		ifTrue: [ self sendToEventHandler: self createEventBeginning ]
		ifFalse: [ self sendToEventHandler: self createEventEnding ]