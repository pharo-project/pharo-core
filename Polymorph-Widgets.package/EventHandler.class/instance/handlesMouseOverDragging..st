testing
handlesMouseOverDragging: evt
	mouseEnterDraggingRecipient ifNotNil: [^ true].
	mouseLeaveDraggingRecipient ifNotNil: [^ true].
	^ false