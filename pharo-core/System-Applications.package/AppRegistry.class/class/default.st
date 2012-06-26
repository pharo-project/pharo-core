singleton
default
	^ default ifNil: [self askForDefault]