event handling
mouseDown: evt

	super mouseDown: evt.
	evt yellowButtonPressed ifTrue: [ ^self ] .
	mouseDownTime := Time millisecondClockValue.
	oldColor := self fillStyle. 
	actWhen == #buttonDown
		ifTrue: [ self doButtonAction]
		ifFalse: [ self updateVisualState: evt ].
	self mouseStillDown: evt.