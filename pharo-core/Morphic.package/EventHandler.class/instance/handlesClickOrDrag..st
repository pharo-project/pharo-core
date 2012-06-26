testing
handlesClickOrDrag: evt
	clickRecipient ifNotNil:[^true].
	doubleClickRecipient ifNotNil:[^true].
	startDragRecipient ifNotNil:[^true].
	^false