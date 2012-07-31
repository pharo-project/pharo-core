testing
handlesKeyboard: evt
	keyStrokeRecipient ifNotNil: [^ true].
	^ false