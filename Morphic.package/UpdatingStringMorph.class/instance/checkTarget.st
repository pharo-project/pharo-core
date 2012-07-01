target access
checkTarget
	getSelector ifNil: [^ true].
	^ getSelector numArgs = 0.
