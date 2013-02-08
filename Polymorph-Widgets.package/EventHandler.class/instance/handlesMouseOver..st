testing
handlesMouseOver: evt
	mouseEnterRecipient ifNotNil: [^ true].
	mouseLeaveRecipient ifNotNil: [^ true].
	^ false