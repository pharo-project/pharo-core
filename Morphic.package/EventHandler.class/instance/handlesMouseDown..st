testing
handlesMouseDown: evt
	mouseDownRecipient ifNotNil: [^ true].
	mouseStillDownRecipient ifNotNil: [^ true].
	mouseUpRecipient ifNotNil: [^ true].
	(self handlesClickOrDrag: evt) ifTrue:[^true].
	^self handlesGestureStart: evt