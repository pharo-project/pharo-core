encoderClass
	^ encoderClass ifNil: [ encoderClass := BytecodeBackend ]